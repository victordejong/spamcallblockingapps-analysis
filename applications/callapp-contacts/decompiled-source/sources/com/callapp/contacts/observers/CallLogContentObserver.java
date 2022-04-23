package com.callapp.contacts.observers;

import android.os.Handler;
import android.os.HandlerThread;
import android.provider.CallLog;
import android.util.Pair;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.interfaces.OnMissedCallCardChangeListener;
import com.callapp.contacts.activity.missedcall.MissedCallFrequentManager;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.observers.CallAppContentObserver;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.MissedCallUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.common.collect.av;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/CallLogContentObserver.class */
public class CallLogContentObserver extends CallAppContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public static final Set<Integer> f15282a = av.a(3, 40);

    /* renamed from: b  reason: collision with root package name */
    private static CallLogContentObserver f15283b;

    /* renamed from: c  reason: collision with root package name */
    private static HandlerThread f15284c;
    private static OnMissedCallCardChangeListener h;
    private ContactData i;
    private ContactData j;
    private ContactDataChangeListener k;
    private ContactDataChangeListener m;

    /* renamed from: d  reason: collision with root package name */
    private final Object f15285d = new Object();
    private final List<MissedCallUtils.MissedCallDataForNotification> e = Collections.synchronizedList(new ArrayList());
    private final Object f = new Object();
    private final List<MissedCallUtils.MissedCallDataForNotification> g = Collections.synchronizedList(new ArrayList());
    private final Object l = new Object();
    private final Object n = new Object();
    private MissedCallUtils.MissedCallsListParams o = null;
    private MissedCallUtils.MissedCallsListParams p = null;
    private final Runnable q = new Runnable() { // from class: com.callapp.contacts.observers.CallLogContentObserver.2
        @Override // java.lang.Runnable
        public void run() {
            CallLogContentObserver.this.c(false);
        }
    };

    private CallLogContentObserver(Handler handler) {
        super(handler);
    }

    public static void a() {
        PermissionManager.get();
        if (PermissionManager.a("android.permission.READ_CALL_LOG")) {
            HandlerThread handlerThread = new HandlerThread("CallApp.CallLogObserver");
            f15284c = handlerThread;
            handlerThread.start();
            AndroidUtils.a(f15284c.getLooper());
            final Handler handler = new Handler(f15284c.getLooper());
            f15283b = new CallLogContentObserver(handler);
            CallAppApplication.get().getContentResolver().registerContentObserver(CallLog.Calls.CONTENT_URI, true, f15283b);
            h = new OnMissedCallCardChangeListener() { // from class: com.callapp.contacts.observers.CallLogContentObserver.1
                @Override // com.callapp.contacts.activity.interfaces.OnMissedCallCardChangeListener
                public final void b(final Phone phone) {
                    handler.post(new Runnable() { // from class: com.callapp.contacts.observers.CallLogContentObserver.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CallLogContentObserver.f15283b.c(true);
                            CallLogContentObserver.a(CallLogContentObserver.f15283b, phone);
                            CallLogContentObserver.b(CallLogContentObserver.f15283b, phone);
                        }
                    });
                }
            };
            EventBusManager.f14368a.a(OnMissedCallCardChangeListener.f12953a, h);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void a(CallLogContentObserver callLogContentObserver, Phone phone) {
        List<CallLogUtils.MissedCallData> arrayList = new ArrayList<>();
        synchronized (callLogContentObserver.f15285d) {
            if (CollectionUtils.b(callLogContentObserver.e)) {
                for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : callLogContentObserver.e) {
                    if (!Objects.a(((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15872c, phone) && (((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).g == null || !DateUtils.a(((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).g.longValue()))) {
                        arrayList.add(missedCallDataForNotification.f14915a);
                    }
                }
            }
        }
        callLogContentObserver.b(arrayList);
    }

    public static void a(List<CallLogUtils.MissedCallData> list) {
        CallLogContentObserver callLogContentObserver = f15283b;
        if (callLogContentObserver != null) {
            callLogContentObserver.b(list);
        }
    }

    private void a(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams) {
        synchronized (this.f) {
            this.g.clear();
            if (CollectionUtils.b(list)) {
                for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : list) {
                    this.g.add(missedCallDataForNotification);
                }
            }
        }
        NotificationManager.get().a(list, missedCallsListParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams, ContactData contactData) {
        for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : list) {
            missedCallDataForNotification.setContactData(contactData);
        }
        a(list, missedCallsListParams);
    }

    private void a(List<CallLogUtils.MissedCallData> list, boolean z) {
        ContactDataChangeListener contactDataChangeListener;
        if (CollectionUtils.a(list)) {
            a((List<MissedCallUtils.MissedCallDataForNotification>) null, (MissedCallUtils.MissedCallsListParams) null);
            a(false);
            return;
        }
        Collections.sort(list, new Comparator<CallLogUtils.MissedCallData>() { // from class: com.callapp.contacts.observers.CallLogContentObserver.5
            @Override // java.util.Comparator
            public /* synthetic */ int compare(CallLogUtils.MissedCallData missedCallData, CallLogUtils.MissedCallData missedCallData2) {
                return -missedCallData.f15871b.compareTo(missedCallData2.f15871b);
            }
        });
        final ArrayList arrayList = new ArrayList(list.size());
        for (CallLogUtils.MissedCallData missedCallData : list) {
            if (!IncognitoCallManager.get().isIncognito(missedCallData.f15872c) && !a(missedCallData)) {
                arrayList.add(new MissedCallUtils.MissedCallDataForNotification(missedCallData));
            }
        }
        if (CollectionUtils.a(arrayList)) {
            a((List<MissedCallUtils.MissedCallDataForNotification>) null, (MissedCallUtils.MissedCallsListParams) null);
            a(false);
            return;
        }
        final MissedCallUtils.MissedCallsListParams a2 = MissedCallUtils.a(arrayList);
        if (z || !a2.equals(this.o)) {
            this.o = a2;
            if (a2.f15930a) {
                a(arrayList, a2);
            } else if (a2.f15931b == 1) {
                synchronized (this.l) {
                    e();
                    this.k = new ContactDataChangeListener() { // from class: com.callapp.contacts.observers.CallLogContentObserver.6
                        @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
                        public void onContactChanged(ContactData contactData, Set<ContactField> set) {
                            if (!CollectionUtils.a(set, ContactField.deviceId, ContactField.fullName, ContactField.photoUrl)) {
                                return;
                            }
                            if (StringUtils.b((CharSequence) contactData.getFullName()) || contactData.hasAnyPhotoUrl()) {
                                CallLogContentObserver.this.a(arrayList, a2, contactData);
                            }
                        }
                    };
                    Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(((CallLogUtils.MissedCallData) arrayList.get(0).f14915a).f15872c, 0L, this.k, ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS);
                    ContactData contactData = (ContactData) registerForContactDetailsStack.first;
                    this.i = contactData;
                    if (contactData != null && !contactData.isIncognito()) {
                        a(arrayList, a2, (ContactData) registerForContactDetailsStack.first);
                    }
                    if (((Set) registerForContactDetailsStack.second).size() > 0 && (contactDataChangeListener = this.k) != null) {
                        contactDataChangeListener.onContactChanged(this.i, (Set) registerForContactDetailsStack.second);
                    }
                }
            } else {
                NotificationManager.ContactDataForNotification.a(arrayList);
                a(arrayList, a2);
            }
        }
    }

    public static void a(boolean z) {
        CallLogContentObserver callLogContentObserver = f15283b;
        if (callLogContentObserver != null) {
            callLogContentObserver.o = null;
            callLogContentObserver.e();
            synchronized (callLogContentObserver.f) {
                if (CollectionUtils.b(callLogContentObserver.g)) {
                    for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : callLogContentObserver.g) {
                        MissedCallManager.a(missedCallDataForNotification.getSourcePhone(), CallReminderFrequentData.FrequentType.DELETE, 3, z ? ((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15871b.getTime() : 0L);
                    }
                }
                callLogContentObserver.g.clear();
            }
        }
    }

    private static boolean a(CallLogUtils.MissedCallData missedCallData) {
        List<CallReminderFrequentData> a2 = MissedCallFrequentManager.a(PhoneManager.get().a(missedCallData.f15872c.a()), av.a(Integer.valueOf(missedCallData.e)));
        if (!CollectionUtils.b(a2)) {
            return false;
        }
        if (!a2.get(0).getFrequentType().equals(CallReminderFrequentData.FrequentType.DONT_SHOW)) {
            return a2.get(0).getFrequentType().equals(CallReminderFrequentData.FrequentType.DELETE) && a2.get(0).getDeleteTimeStamp() > missedCallData.f15871b.getTime();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void b(CallLogContentObserver callLogContentObserver, Phone phone) {
        List<CallLogUtils.MissedCallData> arrayList = new ArrayList<>();
        synchronized (callLogContentObserver.f) {
            if (CollectionUtils.b(callLogContentObserver.g)) {
                for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : callLogContentObserver.g) {
                    if (!Objects.a(((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15872c, phone) && (((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).g == null || !DateUtils.a(((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).g.longValue()))) {
                        arrayList.add(missedCallDataForNotification.f14915a);
                    }
                }
            }
        }
        callLogContentObserver.a(arrayList, true);
    }

    private void b(List<CallLogUtils.MissedCallData> list) {
        ContactDataChangeListener contactDataChangeListener;
        if (CollectionUtils.a(list)) {
            b((List<MissedCallUtils.MissedCallDataForNotification>) null, (MissedCallUtils.MissedCallsListParams) null);
            b(false);
            return;
        }
        Collections.sort(list, new Comparator<CallLogUtils.MissedCallData>() { // from class: com.callapp.contacts.observers.CallLogContentObserver.3
            @Override // java.util.Comparator
            public /* synthetic */ int compare(CallLogUtils.MissedCallData missedCallData, CallLogUtils.MissedCallData missedCallData2) {
                return -missedCallData.f15871b.compareTo(missedCallData2.f15871b);
            }
        });
        final ArrayList arrayList = new ArrayList(list.size());
        for (CallLogUtils.MissedCallData missedCallData : list) {
            if (!IncognitoCallManager.get().isIncognito(missedCallData.f15872c) && !a(missedCallData)) {
                arrayList.add(new MissedCallUtils.MissedCallDataForNotification(missedCallData));
            }
        }
        if (CollectionUtils.a(arrayList)) {
            b((List<MissedCallUtils.MissedCallDataForNotification>) null, (MissedCallUtils.MissedCallsListParams) null);
            b(false);
            return;
        }
        final MissedCallUtils.MissedCallsListParams a2 = MissedCallUtils.a(arrayList);
        if (!a2.equals(this.p)) {
            this.p = a2;
            if (a2.f15930a) {
                b(arrayList, a2);
            } else if (a2.f15931b == 1) {
                synchronized (this.n) {
                    f();
                    this.m = new ContactDataChangeListener() { // from class: com.callapp.contacts.observers.CallLogContentObserver.4
                        @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
                        public void onContactChanged(ContactData contactData, Set<ContactField> set) {
                            if (!CollectionUtils.a(set, ContactField.deviceId, ContactField.fullName, ContactField.photoUrl)) {
                                return;
                            }
                            if (StringUtils.b((CharSequence) contactData.getFullName()) || contactData.hasAnyPhotoUrl()) {
                                CallLogContentObserver.this.b(arrayList, a2, contactData);
                            }
                        }
                    };
                    Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(((CallLogUtils.MissedCallData) arrayList.get(0).f14915a).f15872c, 0L, this.m, ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS);
                    ContactData contactData = (ContactData) registerForContactDetailsStack.first;
                    this.j = contactData;
                    if (contactData != null && !contactData.isIncognito()) {
                        b(arrayList, a2, (ContactData) registerForContactDetailsStack.first);
                    }
                    if (((Set) registerForContactDetailsStack.second).size() > 0 && (contactDataChangeListener = this.m) != null) {
                        contactDataChangeListener.onContactChanged(this.j, (Set) registerForContactDetailsStack.second);
                    }
                }
            } else {
                NotificationManager.ContactDataForNotification.a(arrayList);
                b(arrayList, a2);
            }
        }
    }

    private void b(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams) {
        synchronized (this.f15285d) {
            this.e.clear();
            if (CollectionUtils.b(list)) {
                for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : list) {
                    this.e.add(missedCallDataForNotification);
                }
            }
        }
        NotificationManager.get().b(list, missedCallsListParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<MissedCallUtils.MissedCallDataForNotification> list, MissedCallUtils.MissedCallsListParams missedCallsListParams, ContactData contactData) {
        for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : list) {
            missedCallDataForNotification.setContactData(contactData);
        }
        b(list, missedCallsListParams);
    }

    public static void b(boolean z) {
        CallLogContentObserver callLogContentObserver = f15283b;
        if (callLogContentObserver != null) {
            callLogContentObserver.p = null;
            callLogContentObserver.f();
            synchronized (callLogContentObserver.f15285d) {
                if (CollectionUtils.b(callLogContentObserver.e)) {
                    for (MissedCallUtils.MissedCallDataForNotification missedCallDataForNotification : callLogContentObserver.e) {
                        MissedCallManager.a(missedCallDataForNotification.getSourcePhone(), CallReminderFrequentData.FrequentType.DELETE, 40, z ? ((CallLogUtils.MissedCallData) missedCallDataForNotification.f14915a).f15871b.getTime() : 0L);
                    }
                }
                callLogContentObserver.e.clear();
            }
        }
    }

    public static void c() {
        if (f15283b != null) {
            CallAppApplication.get().getContentResolver().unregisterContentObserver(f15283b);
            f15283b = null;
        }
        HandlerThread handlerThread = f15284c;
        if (handlerThread != null) {
            handlerThread.quit();
            f15284c = null;
        }
        EventBusManager.f14368a.b(OnMissedCallCardChangeListener.f12953a, h);
    }

    public static void c(CallAppContentObserver.ContentObserverListener contentObserverListener) {
        CallLogContentObserver callLogContentObserver = f15283b;
        if (callLogContentObserver != null) {
            callLogContentObserver.a(contentObserverListener);
        }
    }

    public static void d(CallAppContentObserver.ContentObserverListener contentObserverListener) {
        CallLogContentObserver callLogContentObserver = f15283b;
        if (callLogContentObserver != null) {
            callLogContentObserver.b(contentObserverListener);
        }
    }

    private void e() {
        synchronized (this.l) {
            if (!(this.i == null || this.k == null)) {
                Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.i, this.k);
                this.i = null;
                this.k = null;
            }
        }
    }

    private void f() {
        synchronized (this.n) {
            if (!(this.j == null || this.m == null)) {
                Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.j, this.m);
                this.j = null;
                this.m = null;
            }
        }
    }

    @Override // com.callapp.contacts.observers.CallAppContentObserver
    protected final Runnable b() {
        return this.q;
    }

    public final void c(boolean z) {
        if (!z) {
            CallLogUtils.a();
            e();
            f();
        }
        HashMap hashMap = new HashMap();
        hashMap.put(40, Prefs.af.get());
        hashMap.put(3, Prefs.ae.get());
        List<CallLogUtils.MissedCallData> a2 = MissedCallUtils.a(hashMap);
        if (!CollectionUtils.a(a2)) {
            ArrayList arrayList = new ArrayList();
            HashSet hashSet = new HashSet();
            for (CallLogUtils.MissedCallData missedCallData : a2) {
                int i = missedCallData.e;
                if (i == 3) {
                    arrayList.add(missedCallData);
                    hashSet.add(3);
                } else if (i == 40) {
                    hashSet.add(40);
                }
            }
            if (CollectionUtils.b(arrayList) && !z) {
                a(arrayList, z);
            }
            if (!z) {
                MissedCallManager.a(hashSet);
                EventBusManager.f14368a.c(InvalidateDataListener.f12949b, EventBusManager.CallAppDataType.CONTACTS);
            }
        }
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return true;
    }
}
