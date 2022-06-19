package com.telguarder.features.numberLookup;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.CallLog;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.ActivityCompat;
import com.facebook.appevents.AppEventsConstants;
import com.j256.ormlite.field.FieldType;
import com.telguarder.C2083R;
import com.telguarder.features.numberLookup.PhoneEventLogManager;
import com.telguarder.features.rateAndFeedback.CommentsResult;
import com.telguarder.helpers.backend.BackendApi;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.backend.BackendRequest;
import com.telguarder.helpers.backend.BackendRequestCreator;
import com.telguarder.helpers.contact.Contact;
import com.telguarder.helpers.contact.ContactManager;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.preferences.PreferencesManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventLogManager.class */
public class PhoneEventLogManager {
    private static BroadcastReceiver mBroadcastReceiver;
    private static PhoneEventLogManager mInstance;
    public volatile CallLogUpdateCallBack mCallLogUpdateCallBack;
    private volatile ArrayList<PhoneEvent> mPhoneCallLog;
    private volatile ArrayList<PhoneEvent> mSpamCallLog;
    private volatile SimpleArrayMap<String, String> mNumbersWithSpamComment = new SimpleArrayMap<>();
    private volatile SimpleArrayMap<String, String> mNumbersWithSpamDate = new SimpleArrayMap<>();
    private volatile SimpleArrayMap<String, Contact> mContacts = new SimpleArrayMap<>();
    private volatile PhoneCallLogState phoneCallLogState = PhoneCallLogState.EMPTY;
    private volatile CallLogUpdateState callLogUpdateState = CallLogUpdateState.NOT_UPDATED;
    public boolean spamCommentLoadInProgress = false;
    public DownloadSpamCommentCompletionHandler mDownloadSpamCommentCompletionHandler = null;
    private int mPeListPrevIndex = 0;

    /* renamed from: com.telguarder.features.numberLookup.PhoneEventLogManager$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventLogManager$1.class */
    public class C21941 extends BackendCallbackListener<NumberLookupResponse> {
        final /* synthetic */ ArrayList val$calLogFromCache;
        final /* synthetic */ BackendCallbackListener val$callbackListener;
        final /* synthetic */ Context val$context;
        final /* synthetic */ int val$limit;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21941(Context context, Context context2, ArrayList arrayList, BackendCallbackListener backendCallbackListener, int i) {
            super(context);
            PhoneEventLogManager.this = r4;
            this.val$context = context2;
            this.val$calLogFromCache = arrayList;
            this.val$callbackListener = backendCallbackListener;
            this.val$limit = i;
        }

        public /* synthetic */ void lambda$onSuccess$0$PhoneEventLogManager$1(Context context, ArrayList arrayList, NumberLookupResponse numberLookupResponse, BackendCallbackListener backendCallbackListener, int i) {
            PhoneEventLogManager.this.handleNumberLookupResult(context, arrayList, numberLookupResponse, backendCallbackListener, i);
        }

        @Override // com.telguarder.helpers.backend.BackendCallbackListener
        public void onError(Exception exc) {
            this.val$callbackListener.triggerError(exc);
        }

        @Override // com.telguarder.helpers.backend.BackendCallbackListener
        public void onStart() {
        }

        public void onSuccess(final NumberLookupResponse numberLookupResponse) {
            final Context context = this.val$context;
            final ArrayList arrayList = this.val$calLogFromCache;
            final BackendCallbackListener backendCallbackListener = this.val$callbackListener;
            final int i = this.val$limit;
            new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup._$$Lambda$PhoneEventLogManager$1$a6gme16A2BVDgcE7brsanV33UgA
                @Override // java.lang.Runnable
                public final void run() {
                    PhoneEventLogManager.C21941.this.lambda$onSuccess$0$PhoneEventLogManager$1(context, arrayList, numberLookupResponse, backendCallbackListener, i);
                }
            }).start();
        }
    }

    /* renamed from: com.telguarder.features.numberLookup.PhoneEventLogManager$6 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventLogManager$6.class */
    public class RunnableC21996 implements Runnable {
        final /* synthetic */ ArrayList val$callLog;
        final /* synthetic */ Context val$context;
        final /* synthetic */ int val$limit;

        RunnableC21996(Context context, ArrayList arrayList, int i) {
            PhoneEventLogManager.this = r4;
            this.val$context = context;
            this.val$callLog = arrayList;
            this.val$limit = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            PhoneEventLogManager phoneEventLogManager = PhoneEventLogManager.this;
            Context context = this.val$context;
            phoneEventLogManager.getPhoneCallLogWithResultsFromBackend(context, this.val$callLog, new BackendCallbackListener<ArrayList<PhoneEvent>>(context) { // from class: com.telguarder.features.numberLookup.PhoneEventLogManager.6.1
                @Override // com.telguarder.helpers.backend.BackendCallbackListener
                public void onError(Exception exc) {
                    if (PhoneEventLogManager.this.mCallLogUpdateCallBack != null) {
                        PhoneEventLogManager.this.mCallLogUpdateCallBack.onUpdateFinished(PhoneEventLogManager.this.mPhoneCallLog, PhoneEventLogManager.this.mSpamCallLog, true);
                    }
                    PhoneEventLogManager.this.setLoadUpdatedState(RunnableC21996.this.val$context, RunnableC21996.this.val$limit);
                }

                @Override // com.telguarder.helpers.backend.BackendCallbackListener
                public void onStart() {
                }

                public void onSuccess(ArrayList<PhoneEvent> arrayList) {
                    if (arrayList == null || !PhoneEventLogManager.getInstance().isUpdateNeeded(arrayList)) {
                        PhoneEventLogManager.this.setLoadUpdatedState(RunnableC21996.this.val$context, RunnableC21996.this.val$limit);
                        if (PhoneEventLogManager.this.mCallLogUpdateCallBack == null) {
                            return;
                        }
                        PhoneEventLogManager.this.mCallLogUpdateCallBack.onUpdateNotNeeded();
                        return;
                    }
                    PhoneEventLogManager.getInstance().sortMergedResultListByDate(arrayList);
                    PhoneEventLogManager.this.mPhoneCallLog.clear();
                    PhoneEventLogManager.this.mPhoneCallLog.addAll(arrayList);
                    PhoneEventLogManager.this.populateSpamCalls();
                    if (PhoneEventLogManager.this.mCallLogUpdateCallBack != null) {
                        PhoneEventLogManager.this.mCallLogUpdateCallBack.onUpdateFinished(PhoneEventLogManager.this.mPhoneCallLog, PhoneEventLogManager.this.mSpamCallLog, false);
                    }
                    PhoneEventLogManager.this.setLoadUpdatedState(RunnableC21996.this.val$context, RunnableC21996.this.val$limit);
                    if (RunnableC21996.this.val$limit != 200) {
                        return;
                    }
                    new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup.PhoneEventLogManager.6.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PhoneEventLogManager.this.spamCommentLoadInProgress = true;
                            PhoneEventLogManager.getInstance().downloadSpamCommentData(RunnableC21996.this.val$context, PhoneEventLogManager.this.mPhoneCallLog, 0);
                        }
                    }).start();
                }
            }, this.val$limit);
        }
    }

    /* renamed from: com.telguarder.features.numberLookup.PhoneEventLogManager$7 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventLogManager$7.class */
    public class C22027 extends BackendCallbackListener<ArrayList<PhoneEvent>> {
        final /* synthetic */ Context val$context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C22027(Context context, Context context2) {
            super(context);
            PhoneEventLogManager.this = r4;
            this.val$context = context2;
        }

        @Override // com.telguarder.helpers.backend.BackendCallbackListener
        public void onError(Exception exc) {
        }

        @Override // com.telguarder.helpers.backend.BackendCallbackListener
        public void onStart() {
        }

        public void onSuccess(ArrayList<PhoneEvent> arrayList) {
            if (arrayList == null || arrayList.size() == 0) {
                return;
            }
            final PhoneEvent phoneEvent = arrayList.get(0);
            PhoneEventLogManager.this.mPhoneCallLog.add(phoneEvent);
            PhoneEventLogManager.getInstance().sortMergedResultListByDate(PhoneEventLogManager.this.mPhoneCallLog);
            if (phoneEvent.isSpam()) {
                PhoneEventLogManager.this.mSpamCallLog.add(phoneEvent);
                PhoneEventLogManager.getInstance().sortMergedResultListByDate(PhoneEventLogManager.this.mSpamCallLog);
            }
            if (PhoneEventLogManager.this.mCallLogUpdateCallBack != null) {
                PhoneEventLogManager.this.mCallLogUpdateCallBack.onUpdateFinished(PhoneEventLogManager.this.mPhoneCallLog, PhoneEventLogManager.this.mSpamCallLog, false);
            }
            if (!phoneEvent.isSpam()) {
                return;
            }
            new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup.PhoneEventLogManager.7.1
                @Override // java.lang.Runnable
                public void run() {
                    PhoneEventLogManager.this.getLastComment(C22027.this.val$context, phoneEvent, new BackendCallbackListener<CommentsResult>() { // from class: com.telguarder.features.numberLookup.PhoneEventLogManager.7.1.1
                        @Override // com.telguarder.helpers.backend.BackendCallbackListener
                        public void onError(Exception exc) {
                        }

                        @Override // com.telguarder.helpers.backend.BackendCallbackListener
                        public void onStart() {
                        }

                        public void onSuccess(CommentsResult commentsResult) {
                            if (commentsResult == null || commentsResult.comments == null || commentsResult.comments.isEmpty()) {
                                return;
                            }
                            String str = commentsResult.comments.get(0).text;
                            String str2 = commentsResult.comments.get(0).timeStamp;
                            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                                return;
                            }
                            if (phoneEvent.getLastSpamComment().equals(str) && phoneEvent.getLastSpamDate().equals(str2)) {
                                return;
                            }
                            phoneEvent.setLastSpamComment(str);
                            phoneEvent.setLastSpamDate(str2);
                            if (PhoneEventLogManager.this.mCallLogUpdateCallBack == null) {
                                return;
                            }
                            PhoneEventLogManager.this.mCallLogUpdateCallBack.onUpdateFinished(PhoneEventLogManager.this.mPhoneCallLog, PhoneEventLogManager.this.mSpamCallLog, false);
                        }
                    });
                }
            }).start();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack.class */
    public interface CallLogUpdateCallBack {
        void onUpdateFinished(ArrayList<PhoneEvent> arrayList, ArrayList<PhoneEvent> arrayList2, boolean z);

        void onUpdateNotNeeded();
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState.class */
    public enum CallLogUpdateState {
        NOT_UPDATED,
        UPDATING,
        UPDATED
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver.class */
    public class CallStateReceiver extends BroadcastReceiver {
        private CallStateReceiver() {
            PhoneEventLogManager.this = r4;
        }

        /* synthetic */ CallStateReceiver(PhoneEventLogManager phoneEventLogManager, C21941 c21941) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("state");
            if (stringExtra == null || !stringExtra.equalsIgnoreCase(TelephonyManager.EXTRA_STATE_IDLE)) {
                return;
            }
            new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup.PhoneEventLogManager.CallStateReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    ArrayList callLogWithLimit = PhoneEventLogManager.this.getCallLogWithLimit(context, 1);
                    if (callLogWithLimit == null || callLogWithLimit.isEmpty()) {
                        return;
                    }
                    PhoneEventLogManager.this.loadLastNumber(context, callLogWithLimit);
                }
            }).start();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler.class */
    public interface DownloadSpamCommentCompletionHandler {
        void handle(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventLogManager$LastNumberCheckCompletionHandler.class */
    public interface LastNumberCheckCompletionHandler {
        void handle(String str, Long l, int i, long j);
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject.class */
    public class MergeObject {
        PhoneEvent companyCall;
        PhoneEvent personCall;

        private MergeObject() {
            PhoneEventLogManager.this = r4;
        }

        /* synthetic */ MergeObject(PhoneEventLogManager phoneEventLogManager, C21941 c21941) {
            this();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState.class */
    public enum PhoneCallLogState {
        EMPTY,
        LOADING,
        LOADED
    }

    private PhoneEventLogManager() {
    }

    private ArrayList<PhoneEvent> createMergedListOfPhoneCalls(TreeMap<PhoneEvent, Integer> treeMap) {
        ArrayList<PhoneEvent> arrayList = new ArrayList<>();
        for (Map.Entry<PhoneEvent, Integer> entry : treeMap.entrySet()) {
            PhoneEvent key = entry.getKey();
            key.counter = entry.getValue().intValue();
            arrayList.add(key);
        }
        return arrayList;
    }

    private Cursor fetchPhoneCallLogFromDevice(Context context, int i) {
        if (i < 1 || context == null || ActivityCompat.checkSelfPermission(context, "android.permission.READ_CALL_LOG") != 0 || !PreferencesManager.getInstance().getUserConsentForPolicy2018()) {
            return null;
        }
        String[] strArr = {FieldType.FOREIGN_ID_FIELD_SUFFIX, "number", "normalized_number", "countryiso", "name", "type", "date", "duration"};
        if (Build.VERSION.SDK_INT >= 29) {
            Bundle bundle = new Bundle();
            bundle.putStringArray("android:query-arg-sort-columns", new String[]{"date"});
            bundle.putInt("android:query-arg-sort-direction", 1);
            bundle.putInt("android:query-arg-limit", i);
            return context.getContentResolver().query(CallLog.Calls.CONTENT_URI, strArr, bundle, null);
        }
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri = CallLog.Calls.CONTENT_URI;
        return contentResolver.query(uri, strArr, null, null, "date desc limit " + i);
    }

    private PhoneEvent getCallLogForActorType(List<PhoneEvent> list, ActorType actorType) {
        PhoneEvent phoneEvent = null;
        if (list != null) {
            if (!list.isEmpty()) {
                Iterator<PhoneEvent> it = list.iterator();
                while (true) {
                    phoneEvent = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    phoneEvent = it.next();
                    if (phoneEvent.actorType != null && ActorType.valueOf(phoneEvent.actorType) == actorType) {
                        break;
                    }
                }
            } else {
                phoneEvent = null;
            }
        }
        return phoneEvent;
    }

    public ArrayList<PhoneEvent> getCallLogWithLimit(Context context, int i) {
        ArrayList<PhoneEvent> arrayList = new ArrayList<>();
        Cursor fetchPhoneCallLogFromDevice = fetchPhoneCallLogFromDevice(context, i);
        if (fetchPhoneCallLogFromDevice == null) {
            return arrayList;
        }
        if (fetchPhoneCallLogFromDevice.getCount() == 0) {
            fetchPhoneCallLogFromDevice.close();
            return arrayList;
        }
        while (fetchPhoneCallLogFromDevice.moveToNext()) {
            String string = fetchPhoneCallLogFromDevice.getString(fetchPhoneCallLogFromDevice.getColumnIndex("number"));
            if (ContactUtils.isHiddenNumber(string) || ContactUtils.isPhoneNumber(string)) {
                arrayList.add(PhoneEvent.phoneEventOfCallCursor(context, fetchPhoneCallLogFromDevice));
            }
        }
        fetchPhoneCallLogFromDevice.close();
        return arrayList;
    }

    private Contact getContact(Context context, String str) {
        Contact contact;
        synchronized (this) {
            if (this.mContacts == null) {
                this.mContacts = new SimpleArrayMap<>();
            }
            if (this.mContacts.containsKey(str)) {
                contact = this.mContacts.get(str);
            } else {
                contact = ContactManager.getInstance().getContactByPhoneNumber(context, str);
                try {
                    this.mContacts.put(str, contact);
                } catch (Exception e) {
                }
            }
        }
        return contact;
    }

    public static PhoneEventLogManager getInstance() {
        PhoneEventLogManager phoneEventLogManager;
        synchronized (PhoneEventLogManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PhoneEventLogManager();
                }
                phoneEventLogManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneEventLogManager;
    }

    public void getLastComment(Context context, PhoneEvent phoneEvent, BackendCallbackListener<CommentsResult> backendCallbackListener) {
        BackendRequest backendRequestOfUrlAndMethodWithLogging = BackendRequestCreator.backendRequestOfUrlAndMethodWithLogging(context, BackendApi.API_NUMBER_REPORT_COMMENTS, BackendRequest.Method.POST);
        backendRequestOfUrlAndMethodWithLogging.putParam("number", phoneEvent.calledPhoneNumber);
        backendRequestOfUrlAndMethodWithLogging.putParam("offset", (Number) 0);
        backendRequestOfUrlAndMethodWithLogging.putParam("count", (Number) 1);
        backendRequestOfUrlAndMethodWithLogging.execute(CommentsResult.class, (BackendCallbackListener) backendCallbackListener);
    }

    private String getPhoneNumberForContactLookup(PhoneEvent phoneEvent) {
        return !TextUtils.isEmpty(phoneEvent.phonebookNumber) ? phoneEvent.phonebookNumber : !TextUtils.isEmpty(phoneEvent.actorPhoneNumber) ? phoneEvent.actorPhoneNumber : phoneEvent.calledPhoneNumber;
    }

    public void handleNumberLookupResult(Context context, ArrayList<PhoneEvent> arrayList, NumberLookupResponse numberLookupResponse, BackendCallbackListener<ArrayList<PhoneEvent>> backendCallbackListener, int i) {
        if (!processAndSaveLookupResults(context, arrayList, numberLookupResponse, backendCallbackListener)) {
            return;
        }
        ArrayList<PhoneEvent> arrayList2 = new ArrayList<>();
        arrayList2.addAll(getMergedCallLookupResultsFromCache(context, i));
        backendCallbackListener.onSuccess(arrayList2);
    }

    public boolean isUpdateNeeded(ArrayList<PhoneEvent> arrayList) {
        if (this.mPhoneCallLog == null) {
            return !arrayList.isEmpty();
        }
        if (this.mPhoneCallLog.size() != arrayList.size()) {
            return true;
        }
        if (this.mPhoneCallLog.isEmpty() || arrayList.isEmpty()) {
            return false;
        }
        if (arrayList.get(0).dateTimeInMillis > this.mPhoneCallLog.get(0).dateTimeInMillis) {
            return true;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (!TextUtils.isEmpty(arrayList.get(i).name) && !arrayList.get(i).name.equals(this.mPhoneCallLog.get(i).name)) {
                return true;
            }
        }
        return false;
    }

    public void loadLastNumber(Context context, ArrayList<PhoneEvent> arrayList) {
        getPhoneCallLogWithResultsFromBackend(context, arrayList, new C22027(context, context), 1);
    }

    private void lookupNumbersOnBackend(Context context, ArrayList<PhoneEvent> arrayList, BackendCallbackListener<ArrayList<PhoneEvent>> backendCallbackListener, int i) {
        BackendRequest backendRequestOfUrlAndMethodWithLogging = BackendRequestCreator.backendRequestOfUrlAndMethodWithLogging(context, BackendApi.API_NUMBER_LOOKUP_V2, BackendRequest.Method.POST, context.getString(C2083R.string.x_site_id_default));
        ArrayList<String> phoneNumbersToLookup = getPhoneNumbersToLookup(context, arrayList);
        if (phoneNumbersToLookup.isEmpty()) {
            backendCallbackListener.onSuccess(arrayList);
            return;
        }
        backendRequestOfUrlAndMethodWithLogging.putParam("numbers", phoneNumbersToLookup);
        SearchManager.getInstance().addLogoParamToRequest(backendRequestOfUrlAndMethodWithLogging, true, true, UiHelper.dpToPixel(context, 48.0f));
        backendRequestOfUrlAndMethodWithLogging.execute(NumberLookupResponse.class, (BackendCallbackListener) new C21941(context, context, arrayList, backendCallbackListener, i));
    }

    public void populateSpamCalls() {
        if (this.mSpamCallLog == null) {
            this.mSpamCallLog = new ArrayList<>();
        } else {
            this.mSpamCallLog.clear();
        }
        if (this.mPhoneCallLog == null || this.mPhoneCallLog.isEmpty()) {
            return;
        }
        Iterator<PhoneEvent> it = this.mPhoneCallLog.iterator();
        while (it.hasNext()) {
            PhoneEvent next = it.next();
            if (next.isSpam()) {
                this.mSpamCallLog.add(next);
            }
        }
    }

    private boolean processAndSaveLookupResults(Context context, ArrayList<PhoneEvent> arrayList, NumberLookupResponse numberLookupResponse, BackendCallbackListener<ArrayList<PhoneEvent>> backendCallbackListener) {
        if (numberLookupResponse == null || numberLookupResponse.results == null || numberLookupResponse.results.isEmpty()) {
            backendCallbackListener.onSuccess(new ArrayList<>());
            return false;
        }
        HashMap<String, PhoneEvent> hashMap = new HashMap<>();
        HashMap<String, PhoneEvent> hashMap2 = new HashMap<>();
        Iterator<NumberLookup> it = numberLookupResponse.results.iterator();
        while (it.hasNext()) {
            NumberLookup next = it.next();
            if (next.result != null && !next.result.isEmpty()) {
                for (SearchResult searchResult : next.result) {
                    if (searchResult != null) {
                        PhoneEvent phoneCallOfSearchResult = PhoneEvent.phoneCallOfSearchResult(context, searchResult, next.number, next.spam, next.securityLevel);
                        if (searchResult.getActorType() == ActorType.PERSON) {
                            hashMap.put(next.number, phoneCallOfSearchResult);
                        } else if (searchResult.getActorType() == ActorType.COMPANY) {
                            hashMap2.put(next.number, phoneCallOfSearchResult);
                        }
                    }
                }
            }
        }
        saveOrUpdateCacheNumberLookupResults(context, arrayList, hashMap, hashMap2);
        return true;
    }

    private void registerCallObserver(Context context) {
        if (ActivityCompat.checkSelfPermission(context, "android.permission.READ_CALL_LOG") != 0 || !PreferencesManager.getInstance().getUserConsentForPolicy2018()) {
            return;
        }
        BroadcastReceiver broadcastReceiver = mBroadcastReceiver;
        if (broadcastReceiver != null) {
            try {
                context.unregisterReceiver(broadcastReceiver);
            } catch (Exception e) {
            }
            mBroadcastReceiver = null;
        }
        CallStateReceiver callStateReceiver = new CallStateReceiver(this, null);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PHONE_STATE");
        mBroadcastReceiver = callStateReceiver;
        context.registerReceiver(callStateReceiver, intentFilter);
    }

    private void saveOrUpdateCacheNumberLookupResults(Context context, ArrayList<PhoneEvent> arrayList, HashMap<String, PhoneEvent> hashMap, HashMap<String, PhoneEvent> hashMap2) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        HashMap hashMap3 = new HashMap();
        PhoneCallManager phoneCallManager = PhoneCallManager.getInstance(context);
        try {
            Iterator<PhoneEvent> it = arrayList.iterator();
            while (it.hasNext()) {
                PhoneEvent next = it.next();
                String str = next.calledPhoneNumber;
                if (!hashMap3.containsKey(str)) {
                    PhoneEvent personPhoneCallByPhoneNumber = phoneCallManager.getPersonPhoneCallByPhoneNumber(context, str);
                    PhoneEvent companyPhoneCallByPhoneNumber = phoneCallManager.getCompanyPhoneCallByPhoneNumber(context, str);
                    PhoneEvent phoneEvent = hashMap.get(str);
                    PhoneEvent phoneEvent2 = hashMap2.get(str);
                    if (phoneEvent != null) {
                        phoneEvent.dateTimeInMillis = next.dateTimeInMillis;
                    }
                    if (phoneEvent2 != null) {
                        phoneEvent2.dateTimeInMillis = next.dateTimeInMillis;
                    }
                    saveOrUpdatePhoneCall(context, personPhoneCallByPhoneNumber, phoneEvent);
                    saveOrUpdatePhoneCall(context, companyPhoneCallByPhoneNumber, phoneEvent2);
                    hashMap3.put(str, str);
                }
            }
        } catch (Exception e) {
        }
    }

    private void saveOrUpdatePhoneCall(Context context, PhoneEvent phoneEvent, PhoneEvent phoneEvent2) {
        if (phoneEvent2 == null) {
            return;
        }
        PhoneCallManager.getInstance(context).saverOrUpdatePhoneCall(context, phoneEvent, phoneEvent2);
    }

    private void setDataOnMergedCallLogItem(Context context, PhoneEvent phoneEvent, MergeObject mergeObject) {
        Contact contact;
        phoneEvent.phoneNumberForDisplaying = ContactUtils.getFormattedPhoneNumber(context, phoneEvent.calledPhoneNumber, false, phoneEvent.regionCode);
        if (mergeObject.companyCall == null && mergeObject.personCall == null) {
            Contact contact2 = getContact(context, getPhoneNumberForContactLookup(phoneEvent));
            if (contact2 != null) {
                phoneEvent.name = contact2.name;
            } else if (!TextUtils.isEmpty(phoneEvent.calledPhoneNumber)) {
                phoneEvent.name = ContactUtils.getUnknownNumberWithRegionDisplayName(context, phoneEvent.calledPhoneNumber);
            } else {
                phoneEvent.name = ContactUtils.getHiddenNumberDisplayName(context);
            }
        } else {
            Contact contact3 = getContact(context, getPhoneNumberForContactLookup(phoneEvent));
            if (contact3 != null) {
                if (mergeObject.companyCall != null) {
                    phoneEvent.setCoreValuesFromOtherPhoneCall(mergeObject.companyCall);
                    phoneEvent.phoneNumberForDisplaying += " | " + mergeObject.companyCall.name;
                }
                phoneEvent.name = contact3.name;
            } else if (mergeObject.companyCall != null && mergeObject.personCall != null) {
                phoneEvent.setCoreValuesFromOtherPhoneCall(mergeObject.personCall);
                if (TextUtils.isEmpty(phoneEvent.phoneNumberForDisplaying)) {
                    phoneEvent.phoneNumberForDisplaying = mergeObject.companyCall.name;
                } else {
                    phoneEvent.phoneNumberForDisplaying += " | " + mergeObject.companyCall.name;
                }
            } else if (mergeObject.personCall != null) {
                phoneEvent.setCoreValuesFromOtherPhoneCall(mergeObject.personCall);
            } else {
                phoneEvent.setCoreValuesFromOtherPhoneCall(mergeObject.companyCall);
            }
        }
        if (TextUtils.isEmpty(phoneEvent.name) || phoneEvent.actorId != null || phoneEvent.isSpam() || (contact = getContact(context, getPhoneNumberForContactLookup(phoneEvent))) == null) {
            return;
        }
        phoneEvent.name = contact.name;
    }

    public void setLoadUpdatedState(Context context, int i) {
        this.callLogUpdateState = CallLogUpdateState.UPDATED;
        if (i != 200) {
            preloadFinalPhoneCallLog(context);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    public void checkLastNumber(Context context, Long l, LastNumberCheckCompletionHandler lastNumberCheckCompletionHandler) {
        Cursor cursor;
        int i;
        Long l2;
        boolean z;
        String str;
        String str2;
        if (ActivityCompat.checkSelfPermission(context, "android.permission.READ_CALL_LOG") != 0 || !PreferencesManager.getInstance().getUserConsentForPolicy2018()) {
            return;
        }
        boolean z2 = false;
        String[] strArr = {FieldType.FOREIGN_ID_FIELD_SUFFIX, "number", "type", "date"};
        String[] strArr2 = new String[1];
        int i2 = 0;
        strArr2[0] = l == null ? AppEventsConstants.EVENT_PARAM_VALUE_NO : String.valueOf(l);
        String str3 = null;
        if (Build.VERSION.SDK_INT >= 29) {
            Bundle bundle = new Bundle();
            bundle.putString("android:query-arg-sql-selection", "DATE >= ?");
            bundle.putStringArray("android:query-arg-sql-selection-args", strArr2);
            bundle.putStringArray("android:query-arg-sort-columns", new String[]{"date"});
            bundle.putInt("android:query-arg-sort-direction", 1);
            bundle.putInt("android:query-arg-limit", 1);
            cursor = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, strArr, bundle, null);
        } else {
            cursor = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, strArr, "DATE >= ?", strArr2, "date desc limit 1");
        }
        if (cursor != null) {
            Long l3 = null;
            while (true) {
                l2 = l3;
                i = i2;
                str2 = str3;
                Long l4 = l3;
                int i3 = i2;
                String str4 = str3;
                try {
                    try {
                        if (!cursor.moveToNext()) {
                            break;
                        }
                        Long l5 = l3;
                        str3 = cursor.getString(cursor.getColumnIndex("number"));
                        Long l6 = l3;
                        l3 = Long.valueOf(cursor.getLong(cursor.getColumnIndex(FieldType.FOREIGN_ID_FIELD_SUFFIX)));
                        i2 = cursor.getInt(cursor.getColumnIndex("type"));
                        z2 = cursor.getLong(cursor.getColumnIndex("date"));
                    } catch (Exception e) {
                        Logger.error(e.getMessage());
                        l2 = l4;
                        i = i3;
                        str2 = str4;
                    }
                } catch (Throwable th) {
                    cursor.close();
                    throw th;
                }
            }
            cursor.close();
            str = str2;
            z = z2;
        } else {
            z = false;
            str = null;
            l2 = null;
            i = 0;
        }
        if (lastNumberCheckCompletionHandler == null) {
            return;
        }
        lastNumberCheckCompletionHandler.handle(str, l2, i, z ? 1L : 0L);
    }

    public TreeMap<PhoneEvent, Integer> countEventsPerNumber(ArrayList<PhoneEvent> arrayList) {
        TreeMap<PhoneEvent, Integer> treeMap = new TreeMap<>();
        Iterator<PhoneEvent> it = arrayList.iterator();
        while (it.hasNext()) {
            PhoneEvent next = it.next();
            if (next != null && next.calledPhoneNumber != null) {
                PhoneEvent phoneEvent = null;
                if (treeMap.containsKey(next)) {
                    for (PhoneEvent phoneEvent2 : treeMap.keySet()) {
                        if (phoneEvent2.compareTo(next) == 0) {
                            phoneEvent = phoneEvent2;
                            if (next.dateTimeInMillis > phoneEvent2.dateTimeInMillis) {
                                phoneEvent = next;
                            }
                        }
                    }
                    treeMap.put(phoneEvent, Integer.valueOf(treeMap.get(next).intValue() + 1));
                } else {
                    treeMap.put(next, 1);
                }
            }
        }
        return treeMap;
    }

    public void downloadSpamCommentData(final Context context, final ArrayList<PhoneEvent> arrayList, final int i) {
        if (arrayList == null || arrayList.size() == 0 || (i > 0 && this.mPeListPrevIndex == i)) {
            this.spamCommentLoadInProgress = false;
            return;
        }
        this.mPeListPrevIndex = i;
        final PhoneEvent phoneEvent = arrayList.get(i);
        if (phoneEvent == null || !phoneEvent.isSpam()) {
            if (i < arrayList.size() - 1) {
                downloadSpamCommentData(context, arrayList, i + 1);
            } else {
                saveFullHistoryListCache(context);
            }
        } else if (this.mNumbersWithSpamComment == null || !this.mNumbersWithSpamComment.containsKey(phoneEvent.calledPhoneNumber)) {
            getLastComment(context, phoneEvent, new BackendCallbackListener<CommentsResult>() { // from class: com.telguarder.features.numberLookup.PhoneEventLogManager.3
                @Override // com.telguarder.helpers.backend.BackendCallbackListener
                public void onError(Exception exc) {
                    Logger.error("Get last spam comment error: " + exc.getMessage());
                    if (i < arrayList.size() - 1) {
                        PhoneEventLogManager.this.downloadSpamCommentData(context, arrayList, i + 1);
                    } else {
                        PhoneEventLogManager.this.saveFullHistoryListCache(context);
                    }
                }

                @Override // com.telguarder.helpers.backend.BackendCallbackListener
                public void onStart() {
                }

                public void onSuccess(CommentsResult commentsResult) {
                    if (commentsResult == null || commentsResult.comments == null || commentsResult.comments.isEmpty()) {
                        if (PhoneEventLogManager.this.mNumbersWithSpamComment != null) {
                            PhoneEventLogManager.this.mNumbersWithSpamComment.put(phoneEvent.calledPhoneNumber, null);
                        }
                        if (PhoneEventLogManager.this.mNumbersWithSpamDate != null) {
                            PhoneEventLogManager.this.mNumbersWithSpamDate.put(phoneEvent.calledPhoneNumber, null);
                        }
                    } else {
                        String str = commentsResult.comments.get(0).text;
                        String str2 = commentsResult.comments.get(0).timeStamp;
                        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (!phoneEvent.getLastSpamComment().equals(str) || !phoneEvent.getLastSpamDate().equals(str2))) {
                            if (PhoneEventLogManager.this.mNumbersWithSpamComment != null) {
                                PhoneEventLogManager.this.mNumbersWithSpamComment.put(phoneEvent.calledPhoneNumber, str);
                            }
                            if (PhoneEventLogManager.this.mNumbersWithSpamDate != null) {
                                PhoneEventLogManager.this.mNumbersWithSpamDate.put(phoneEvent.calledPhoneNumber, str2);
                            }
                            phoneEvent.setLastSpamComment(str);
                            phoneEvent.setLastSpamDate(str2);
                            if (PhoneEventLogManager.this.mDownloadSpamCommentCompletionHandler != null) {
                                PhoneEventLogManager.this.mDownloadSpamCommentCompletionHandler.handle(i);
                            }
                        }
                    }
                    if (i < arrayList.size() - 1) {
                        PhoneEventLogManager.this.downloadSpamCommentData(context, arrayList, i + 1);
                    } else {
                        PhoneEventLogManager.this.saveFullHistoryListCache(context);
                    }
                }
            });
        } else {
            String str = this.mNumbersWithSpamComment.get(phoneEvent.calledPhoneNumber);
            String str2 = this.mNumbersWithSpamDate.get(phoneEvent.calledPhoneNumber);
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (!phoneEvent.getLastSpamComment().equals(str) || !phoneEvent.getLastSpamDate().equals(str2))) {
                phoneEvent.setLastSpamComment(str);
                phoneEvent.setLastSpamDate(str2);
                DownloadSpamCommentCompletionHandler downloadSpamCommentCompletionHandler = this.mDownloadSpamCommentCompletionHandler;
                if (downloadSpamCommentCompletionHandler != null) {
                    downloadSpamCommentCompletionHandler.handle(i);
                }
            }
            if (i < arrayList.size() - 1) {
                downloadSpamCommentData(context, arrayList, i + 1);
            } else {
                saveFullHistoryListCache(context);
            }
        }
    }

    public PhoneEvent getLastCallLogEntry(Context context) {
        ArrayList<PhoneEvent> callLogWithLimit = getCallLogWithLimit(context, 1);
        if (callLogWithLimit == null || callLogWithLimit.isEmpty()) {
            return null;
        }
        return callLogWithLimit.get(0);
    }

    public ArrayList<PhoneEvent> getMergedCallLookupResultsFromCache(Context context, int i) {
        ArrayList<PhoneEvent> arrayList = new ArrayList<>();
        ArrayList<PhoneEvent> phoneEventLogWithResultsFromCache = getPhoneEventLogWithResultsFromCache(context, getCallLogWithLimit(context, i));
        if (!phoneEventLogWithResultsFromCache.isEmpty()) {
            arrayList.addAll(createMergedListOfPhoneCalls(countEventsPerNumber(phoneEventLogWithResultsFromCache)));
        }
        if (!arrayList.isEmpty()) {
            sortMergedResultListByDate(arrayList);
        }
        return arrayList;
    }

    public ArrayList<PhoneEvent> getPhoneCallLog() {
        if (this.mPhoneCallLog == null || this.mPhoneCallLog.isEmpty()) {
            if (this.phoneCallLogState == PhoneCallLogState.LOADING) {
                while (this.phoneCallLogState != PhoneCallLogState.LOADED) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException e) {
                        Logger.error("Error during phonecall load");
                    }
                }
            }
            return this.mPhoneCallLog == null ? new ArrayList<>() : this.mPhoneCallLog;
        }
        return this.mPhoneCallLog;
    }

    public void getPhoneCallLogWithResultsFromBackend(Context context, ArrayList<PhoneEvent> arrayList, BackendCallbackListener<ArrayList<PhoneEvent>> backendCallbackListener, int i) {
        backendCallbackListener.triggerStart();
        if (PreferencesManager.getInstance().getUserConsentForPolicy2018()) {
            lookupNumbersOnBackend(context, arrayList, backendCallbackListener, i);
        }
    }

    public PhoneEvent getPhoneEventFromCache(Context context, String str) {
        List<PhoneEvent> phoneCallsForPhoneNumber = PhoneCallManager.getInstance(context).getPhoneCallsForPhoneNumber(str);
        PhoneEvent callLogForActorType = getCallLogForActorType(phoneCallsForPhoneNumber, ActorType.PERSON);
        if (callLogForActorType != null) {
            return callLogForActorType;
        }
        PhoneEvent callLogForActorType2 = getCallLogForActorType(phoneCallsForPhoneNumber, ActorType.COMPANY);
        if (callLogForActorType2 == null) {
            return null;
        }
        return callLogForActorType2;
    }

    public ArrayList<PhoneEvent> getPhoneEventLogWithResultsFromCache(Context context, ArrayList<PhoneEvent> arrayList) {
        ArrayList<PhoneEvent> arrayList2 = new ArrayList<>();
        Iterator<PhoneEvent> it = arrayList.iterator();
        while (it.hasNext()) {
            PhoneEvent next = it.next();
            List<PhoneEvent> phoneCallsForPhoneNumber = PhoneCallManager.getInstance(context).getPhoneCallsForPhoneNumber(next.calledPhoneNumber);
            PhoneEvent callLogForActorType = getCallLogForActorType(phoneCallsForPhoneNumber, ActorType.COMPANY);
            PhoneEvent callLogForActorType2 = getCallLogForActorType(phoneCallsForPhoneNumber, ActorType.PERSON);
            MergeObject mergeObject = new MergeObject(this, null);
            mergeObject.companyCall = callLogForActorType;
            mergeObject.personCall = callLogForActorType2;
            setDataOnMergedCallLogItem(context, next, mergeObject);
            arrayList2.add(next);
        }
        return arrayList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayList<String> getPhoneNumbersToLookup(Context context, ArrayList<PhoneEvent> arrayList) {
        if (arrayList == null) {
            return new ArrayList<>();
        }
        HashMap hashMap = new HashMap();
        Iterator<PhoneEvent> it = arrayList.iterator();
        while (it.hasNext()) {
            PhoneEvent next = it.next();
            if (ContactUtils.isPhoneNumber(next.calledPhoneNumber) && !next.isFromFreshCache(context)) {
                hashMap.put(next.calledPhoneNumber, next.calledPhoneNumber);
            }
        }
        ArrayList<String> arrayList2 = new ArrayList<>();
        for (Map.Entry entry : hashMap.entrySet()) {
            arrayList2.add(entry.getValue());
        }
        return arrayList2;
    }

    public ArrayList<PhoneEvent> getSpamCallLog() {
        if (this.phoneCallLogState == PhoneCallLogState.LOADING) {
            while (this.phoneCallLogState != PhoneCallLogState.LOADED) {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                    Logger.error("Error during phonecall load");
                }
            }
        }
        if (this.mSpamCallLog == null || this.mSpamCallLog.isEmpty()) {
            if (this.callLogUpdateState == CallLogUpdateState.UPDATING) {
                while (this.callLogUpdateState != CallLogUpdateState.UPDATED) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException e2) {
                        Logger.error("Error during phonecall load");
                    }
                }
            }
            return this.mSpamCallLog == null ? new ArrayList<>() : this.mSpamCallLog;
        }
        return this.mSpamCallLog;
    }

    public void initPhoneEventLogManager(Context context) {
        preloadInitialPhoneCallLog(context.getApplicationContext());
        registerCallObserver(context.getApplicationContext());
    }

    public void loadCallLogWitResultsFromBackend(Context context, ArrayList<PhoneEvent> arrayList, int i) {
        if (this.callLogUpdateState == CallLogUpdateState.UPDATING || arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.callLogUpdateState = CallLogUpdateState.UPDATING;
        new Thread(new RunnableC21996(context, arrayList, i)).start();
    }

    public void notifySystemToUpdatePhoneCallLog(Context context) {
        context.getContentResolver().notifyChange(CallLog.Calls.CONTENT_URI, null);
    }

    public void preloadFinalPhoneCallLog(final Context context) {
        new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup.PhoneEventLogManager.5
            @Override // java.lang.Runnable
            public void run() {
                PhoneEventLogManager phoneEventLogManager = PhoneEventLogManager.this;
                Context context2 = context;
                phoneEventLogManager.loadCallLogWitResultsFromBackend(context2, phoneEventLogManager.getMergedCallLookupResultsFromCache(context2, 200), 200);
            }
        }).start();
    }

    public void preloadInitialPhoneCallLog(final Context context) {
        if (this.mPhoneCallLog != null && this.mPhoneCallLog.size() > 0) {
            preloadFinalPhoneCallLog(context);
            return;
        }
        this.phoneCallLogState = PhoneCallLogState.LOADING;
        new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup.PhoneEventLogManager.4
            @Override // java.lang.Runnable
            public void run() {
                PhoneEventLogManager.this.mPhoneCallLog = PhoneEventHistoryManger.getInstance().getCachedHistoryList(context, false);
                PhoneEventLogManager.this.mSpamCallLog = PhoneEventHistoryManger.getInstance().getCachedHistoryList(context, true);
                if (!PhoneEventLogManager.this.mPhoneCallLog.isEmpty()) {
                    PhoneEventLogManager.this.phoneCallLogState = PhoneCallLogState.LOADED;
                    PhoneEventLogManager.this.preloadFinalPhoneCallLog(context);
                    return;
                }
                PhoneEventLogManager phoneEventLogManager = PhoneEventLogManager.this;
                phoneEventLogManager.mPhoneCallLog = phoneEventLogManager.getMergedCallLookupResultsFromCache(context, 10);
                PhoneEventLogManager.this.phoneCallLogState = PhoneCallLogState.LOADED;
                PhoneEventLogManager phoneEventLogManager2 = PhoneEventLogManager.this;
                phoneEventLogManager2.loadCallLogWitResultsFromBackend(context, phoneEventLogManager2.mPhoneCallLog, 10);
            }
        }).start();
    }

    public void removePhoneEvent(PhoneEvent phoneEvent) {
        if (this.mPhoneCallLog != null && !this.mPhoneCallLog.isEmpty()) {
            this.mPhoneCallLog.remove(phoneEvent);
        }
        if (this.mSpamCallLog == null || this.mSpamCallLog.isEmpty()) {
            return;
        }
        this.mSpamCallLog.remove(phoneEvent);
    }

    public void saveFullHistoryListCache(Context context) {
        if (this.mPhoneCallLog != null) {
            PhoneEventHistoryManger.getInstance().saveHistoryListCache(context, (ArrayList) this.mPhoneCallLog.clone());
            return;
        }
        this.spamCommentLoadInProgress = false;
        this.mDownloadSpamCommentCompletionHandler = null;
    }

    public void sortMergedResultListByDate(ArrayList<PhoneEvent> arrayList) {
        try {
            Collections.sort(arrayList, new Comparator<PhoneEvent>() { // from class: com.telguarder.features.numberLookup.PhoneEventLogManager.2
                public int compare(PhoneEvent phoneEvent, PhoneEvent phoneEvent2) {
                    return new Date(phoneEvent2.dateTimeInMillis).compareTo(new Date(phoneEvent.dateTimeInMillis));
                }
            });
        } catch (Exception e) {
        }
    }
}
