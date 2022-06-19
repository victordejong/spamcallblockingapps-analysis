package com.telguarder.features.numberLookup;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import android.text.TextUtils;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProxy;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.backend.NetworkHelper;
import com.telguarder.helpers.contact.ContactManager;
import com.telguarder.helpers.preferences.PreferencesKeys;
import com.telguarder.helpers.preferences.PreferencesManager;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneNumberLookupManager.class */
public class PhoneNumberLookupManager {
    private static PhoneNumberLookupManager mInstance;
    private String mLastSuccessfullyLookedupIncomingNumber;
    private ConnectivityManager.NetworkCallback mNetworkCallBack;
    private ConnectivityManager.NetworkCallback mNetworkCallBackForBckApiCall;
    private BackendCallbackListener<NumberLookupResponse> mNumberLookupBackendCallbackListener;
    private PhoneNumberLookupCallbackListener mNumberLookupCallbackListener;
    private boolean mLastIncomingNumberLookupSuccess = false;
    private boolean mLastIncomingNumberLookupWasContact = false;
    private boolean mLastSuccessfullyLookedupIncomingNumberWasSpam = false;
    private boolean mLookupBackendRequestSuccess = false;

    /* renamed from: com.telguarder.features.numberLookup.PhoneNumberLookupManager$2 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneNumberLookupManager$2.class */
    public class C22072 extends BackendCallbackListener<NumberLookupResponse> {
        final /* synthetic */ boolean val$adPreload;
        final /* synthetic */ CallType val$callType;
        final /* synthetic */ Runnable val$completionHandler;
        final /* synthetic */ Context val$context;
        final /* synthetic */ PhoneNumberLookupResult val$resultFromCache;

        C22072(Context context, PhoneNumberLookupResult phoneNumberLookupResult, Runnable runnable, CallType callType, boolean z) {
            PhoneNumberLookupManager.this = r4;
            this.val$context = context;
            this.val$resultFromCache = phoneNumberLookupResult;
            this.val$completionHandler = runnable;
            this.val$callType = callType;
            this.val$adPreload = z;
        }

        public static /* synthetic */ void lambda$onSuccess$0(NumberLookupResponse numberLookupResponse, Context context) {
            AdvertManager.addAdNetworkFlowDebugInfo(" Phone number: " + numberLookupResponse.results.get(0).number);
            PostcallAdvertProxy.getInstance().startPreload(context);
        }

        @Override // com.telguarder.helpers.backend.BackendCallbackListener
        public void onError(Exception exc) {
            PhoneNumberLookupManager.this.mLookupBackendRequestSuccess = false;
            AnalyticsManager.getInstance().sendLookupIdentification(null);
            boolean z = false;
            if (this.val$resultFromCache.getPersonCall() == null) {
                z = false;
                if (this.val$resultFromCache.getCompanyCall() == null) {
                    z = false;
                    if (this.val$resultFromCache.getContact() == null) {
                        z = true;
                    }
                }
            }
            if (z && PhoneNumberLookupManager.this.mNumberLookupCallbackListener != null) {
                PhoneNumberLookupManager.this.mNumberLookupCallbackListener.onLookupFailed(exc);
            }
            if (this.val$adPreload && PreferencesManager.getInstance().postCallScreenIsEnabled() && !PostcallAdvertProxy.getInstance().mLoadStarted && (z || ((this.val$resultFromCache.getPersonCall() == null || !this.val$resultFromCache.getPersonCall().isSpam()) && (this.val$resultFromCache.getCompanyCall() == null || !this.val$resultFromCache.getCompanyCall().isSpam())))) {
                final Context context = this.val$context;
                new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup._$$Lambda$PhoneNumberLookupManager$2$CgoZ8mVF36BXW2JcXjTLvkqTrBA
                    @Override // java.lang.Runnable
                    public final void run() {
                        PostcallAdvertProxy.getInstance().startPreload(context);
                    }
                }).start();
            }
            Runnable runnable = this.val$completionHandler;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // com.telguarder.helpers.backend.BackendCallbackListener
        public void onStart() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x004d, code lost:
            if (r8.results.get(0).error != false) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onSuccess(final com.telguarder.features.numberLookup.NumberLookupResponse r8) {
            /*
                Method dump skipped, instructions count: 301
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.telguarder.features.numberLookup.PhoneNumberLookupManager.C22072.onSuccess(com.telguarder.features.numberLookup.NumberLookupResponse):void");
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType.class */
    public enum CallType {
        INCOMING,
        OUTGOING,
        BLOCKED
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener.class */
    public interface PhoneNumberLookupCallbackListener {
        void onLookupCancelled(PhoneNumberLookupResult phoneNumberLookupResult);

        void onLookupFailed(Exception exc);

        void onLookupInProgress();

        void onLookupNotAllowed();

        void onNoResults();

        void onResultsFromBackend(PhoneNumberLookupResult phoneNumberLookupResult);

        void onResultsFromCache(PhoneNumberLookupResult phoneNumberLookupResult);
    }

    private PhoneNumberLookupManager() {
    }

    private boolean areSamePhoneCalls(PhoneEvent phoneEvent, PhoneEvent phoneEvent2) {
        return (phoneEvent == null && phoneEvent2 == null) || !(phoneEvent == null || phoneEvent2 == null || !phoneEvent.sameAs(phoneEvent2));
    }

    private void getContactLookupData(final Context context, final String str, final PhoneNumberLookupResult phoneNumberLookupResult, final Runnable runnable) {
        new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup._$$Lambda$PhoneNumberLookupManager$xnjHjl720vNjdMD4krUA0x1Fzbw
            @Override // java.lang.Runnable
            public final void run() {
                PhoneNumberLookupManager.this.lambda$getContactLookupData$4$PhoneNumberLookupManager(phoneNumberLookupResult, context, str, runnable);
            }
        }).start();
    }

    public static PhoneNumberLookupManager getInstance() {
        PhoneNumberLookupManager phoneNumberLookupManager;
        synchronized (PhoneNumberLookupManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PhoneNumberLookupManager();
                }
                phoneNumberLookupManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberLookupManager;
    }

    private PhoneNumberLookupResult getLookupResultFromCache(Context context, String str) {
        PhoneNumberLookupResult phoneNumberLookupResult = new PhoneNumberLookupResult();
        phoneNumberLookupResult.phoneNumber = str;
        try {
            phoneNumberLookupResult.setPersonCall(PhoneCallManager.getInstance(context).getPersonPhoneCallByPhoneNumber(context, str));
        } catch (Exception e) {
            phoneNumberLookupResult.setPersonCall(null);
        }
        try {
            phoneNumberLookupResult.setCompanyCall(PhoneCallManager.getInstance(context).getCompanyPhoneCallByPhoneNumber(context, str));
        } catch (Exception e2) {
            phoneNumberLookupResult.setCompanyCall(null);
        }
        if (phoneNumberLookupResult.getPersonCall() == null && phoneNumberLookupResult.getCompanyCall() == null) {
            phoneNumberLookupResult.setCompanyCall(OfflineSpamDbHelper.getInstance().getSpam(context, str));
            if (phoneNumberLookupResult.getCompanyCall() != null) {
                AnalyticsManager.getInstance().sendLookupIdentificationOfflineSpam();
                spamAnalytics(phoneNumberLookupResult.getPersonCall(), phoneNumberLookupResult.getCompanyCall());
            }
        }
        return phoneNumberLookupResult;
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x0264, code lost:
        if (android.text.TextUtils.isEmpty(r15.name) == false) goto L89;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handlePhoneNumberSearchResponse(android.content.Context r7, com.telguarder.features.numberLookup.NumberLookup r8, com.telguarder.features.numberLookup.PhoneNumberLookupManager.CallType r9, com.telguarder.features.numberLookup.PhoneNumberLookupResult r10) {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.telguarder.features.numberLookup.PhoneNumberLookupManager.handlePhoneNumberSearchResponse(android.content.Context, com.telguarder.features.numberLookup.NumberLookup, com.telguarder.features.numberLookup.PhoneNumberLookupManager$CallType, com.telguarder.features.numberLookup.PhoneNumberLookupResult):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a0, code lost:
        if (android.text.TextUtils.isEmpty(r14.getCompanyCall().name) == false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void internalLookupResultsForPhoneNumber(final android.content.Context r10, final java.lang.String r11, final com.telguarder.features.numberLookup.PhoneNumberLookupManager.CallType r12, final boolean r13, final com.telguarder.features.numberLookup.PhoneNumberLookupResult r14, final java.lang.Runnable r15) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.telguarder.features.numberLookup.PhoneNumberLookupManager.internalLookupResultsForPhoneNumber(android.content.Context, java.lang.String, com.telguarder.features.numberLookup.PhoneNumberLookupManager$CallType, boolean, com.telguarder.features.numberLookup.PhoneNumberLookupResult, java.lang.Runnable):void");
    }

    public void lookupPhoneNumberOnBackend(final Context context, final CallType callType, boolean z, final PhoneNumberLookupResult phoneNumberLookupResult, Runnable runnable) {
        this.mLookupBackendRequestSuccess = false;
        this.mNumberLookupBackendCallbackListener = new C22072(context, phoneNumberLookupResult, runnable, callType, z);
        if (Build.VERSION.SDK_INT < 21) {
            SearchManager.getInstance().getNumberLookupResultsForCallWidget(context, phoneNumberLookupResult.phoneNumber, this.mNumberLookupBackendCallbackListener, callType);
            return;
        }
        ConnectivityManager.NetworkCallback networkCallback = this.mNetworkCallBackForBckApiCall;
        if (networkCallback != null) {
            NetworkHelper.unregisterNetworkCallback(context, networkCallback);
        }
        ConnectivityManager.NetworkCallback networkCallback2 = new ConnectivityManager.NetworkCallback() { // from class: com.telguarder.features.numberLookup.PhoneNumberLookupManager.3
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                SearchManager.getInstance().getNumberLookupResultsForCallWidget(context, phoneNumberLookupResult.phoneNumber, PhoneNumberLookupManager.this.mNumberLookupBackendCallbackListener, callType);
                if (PhoneNumberLookupManager.this.mNetworkCallBackForBckApiCall != null) {
                    NetworkHelper.unregisterNetworkCallback(context, PhoneNumberLookupManager.this.mNetworkCallBackForBckApiCall);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
            }
        };
        this.mNetworkCallBackForBckApiCall = networkCallback2;
        NetworkHelper.registerNetworkCallback(context, networkCallback2);
    }

    private boolean needToLookupNumberOnBackend(Context context, PhoneEvent phoneEvent, PhoneEvent phoneEvent2) {
        return (phoneEvent == null || !phoneEvent.isFromFreshCache(context)) && (phoneEvent2 == null || !phoneEvent2.isFromFreshCache(context));
    }

    private void spamAnalytics(PhoneEvent phoneEvent, PhoneEvent phoneEvent2) {
        if (phoneEvent2 != null && !TextUtils.isEmpty(phoneEvent2.spamType)) {
            AnalyticsManager.getInstance().sendLookupSpamAlert(phoneEvent2.spamType);
        } else if (phoneEvent == null || TextUtils.isEmpty(phoneEvent.spamType)) {
        } else {
            AnalyticsManager.getInstance().sendLookupSpamAlert(phoneEvent.spamType);
        }
    }

    /* renamed from: startPreloadFromResultInCache */
    public void lambda$null$0$PhoneNumberLookupManager(Context context, String str) {
        if (!PreferencesManager.getInstance().postCallScreenIsEnabled() || PostcallAdvertProxy.getInstance().mLoadStarted) {
            return;
        }
        AdvertManager.addAdNetworkFlowDebugInfo(" Phone number: " + str);
        PostcallAdvertProxy.getInstance().startPreload(context);
    }

    public void cancelPhoneNumberLookup() {
        BackendCallbackListener<NumberLookupResponse> backendCallbackListener = this.mNumberLookupBackendCallbackListener;
        if (backendCallbackListener != null) {
            backendCallbackListener.cancel();
        }
        PhoneNumberLookupCallbackListener phoneNumberLookupCallbackListener = this.mNumberLookupCallbackListener;
        if (phoneNumberLookupCallbackListener != null) {
            phoneNumberLookupCallbackListener.onLookupCancelled(null);
        }
    }

    public CallType getCallTypeByCallLogCallType(int i) {
        return i == 2 ? CallType.OUTGOING : (i == 6 || i == 5) ? CallType.BLOCKED : CallType.INCOMING;
    }

    public String getLastSuccessfullyLookedupIncomingNumber() {
        return this.mLastSuccessfullyLookedupIncomingNumber;
    }

    public /* synthetic */ void lambda$getContactLookupData$4$PhoneNumberLookupManager(PhoneNumberLookupResult phoneNumberLookupResult, Context context, String str, Runnable runnable) {
        phoneNumberLookupResult.setContact(ContactManager.getInstance().getContactByPhoneNumber(context, str));
        this.mLastIncomingNumberLookupWasContact = phoneNumberLookupResult.getContact() != null;
        if (runnable != null) {
            runnable.run();
        }
    }

    public /* synthetic */ void lambda$lookupResultsForPhoneNumber$1$PhoneNumberLookupManager(PhoneNumberLookupResult phoneNumberLookupResult, boolean z, final Context context, final String str, CallType callType) {
        if (phoneNumberLookupResult.getContact() == null) {
            PhoneNumberLookupCallbackListener phoneNumberLookupCallbackListener = this.mNumberLookupCallbackListener;
            if (phoneNumberLookupCallbackListener != null) {
                phoneNumberLookupCallbackListener.onLookupInProgress();
            }
            internalLookupResultsForPhoneNumber(context, str, callType, z, phoneNumberLookupResult, null);
            return;
        }
        PhoneNumberLookupCallbackListener phoneNumberLookupCallbackListener2 = this.mNumberLookupCallbackListener;
        if (phoneNumberLookupCallbackListener2 != null) {
            phoneNumberLookupCallbackListener2.onLookupCancelled(phoneNumberLookupResult);
        }
        if (!z) {
            return;
        }
        new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup._$$Lambda$PhoneNumberLookupManager$eGOQFjchTMgt9_E4EgviUINfUDI
            @Override // java.lang.Runnable
            public final void run() {
                PhoneNumberLookupManager.this.lambda$null$0$PhoneNumberLookupManager(context, str);
            }
        }).start();
    }

    public /* synthetic */ void lambda$lookupResultsForPhoneNumber$3$PhoneNumberLookupManager(final Context context, final String str, final PhoneNumberLookupResult phoneNumberLookupResult, final CallType callType) {
        getContactLookupData(context, str, phoneNumberLookupResult, new Runnable() { // from class: com.telguarder.features.numberLookup._$$Lambda$PhoneNumberLookupManager$43Y54v8ORGOvfcjkIr7D1ZI0tao
            @Override // java.lang.Runnable
            public final void run() {
                PhoneNumberLookupManager.this.lambda$null$2$PhoneNumberLookupManager(phoneNumberLookupResult, context, str, callType);
            }
        });
    }

    public /* synthetic */ void lambda$null$2$PhoneNumberLookupManager(PhoneNumberLookupResult phoneNumberLookupResult, Context context, String str, CallType callType) {
        if (phoneNumberLookupResult.getContact() != null) {
            internalLookupResultsForPhoneNumber(context, str, callType, false, phoneNumberLookupResult, null);
        }
    }

    public void lookupResultsForPhoneNumber(final Context context, final String str, PhoneNumberLookupCallbackListener phoneNumberLookupCallbackListener, final CallType callType, final boolean z) {
        AnalyticsManager.getInstance().sendLookupApprovedByUser(true);
        this.mLastIncomingNumberLookupSuccess = false;
        this.mLastIncomingNumberLookupWasContact = false;
        if (TextUtils.isEmpty(str) || phoneNumberLookupCallbackListener == null) {
            return;
        }
        this.mNumberLookupCallbackListener = phoneNumberLookupCallbackListener;
        if (!PreferencesManager.getInstance().getUserConsentForPolicy2018()) {
            AnalyticsManager.getInstance().sendLookupApprovedByUser(false);
            PhoneNumberLookupCallbackListener phoneNumberLookupCallbackListener2 = this.mNumberLookupCallbackListener;
            if (phoneNumberLookupCallbackListener2 == null) {
                return;
            }
            phoneNumberLookupCallbackListener2.onLookupNotAllowed();
            return;
        }
        final PhoneNumberLookupResult lookupResultFromCache = getLookupResultFromCache(context, str);
        if (!PreferencesManager.getInstance().getSettingEnabled(PreferencesKeys.SETTINGS_LOOK_UP_STORED_CONTACTS)) {
            getContactLookupData(context, str, lookupResultFromCache, new Runnable() { // from class: com.telguarder.features.numberLookup._$$Lambda$PhoneNumberLookupManager$HPIUByrZQuSPnHutk6QOiJJ864g
                @Override // java.lang.Runnable
                public final void run() {
                    PhoneNumberLookupManager.this.lambda$lookupResultsForPhoneNumber$1$PhoneNumberLookupManager(lookupResultFromCache, z, context, str, callType);
                }
            });
            return;
        }
        PhoneNumberLookupCallbackListener phoneNumberLookupCallbackListener3 = this.mNumberLookupCallbackListener;
        if (phoneNumberLookupCallbackListener3 != null) {
            phoneNumberLookupCallbackListener3.onLookupInProgress();
        }
        internalLookupResultsForPhoneNumber(context, str, callType, z, lookupResultFromCache, new Runnable() { // from class: com.telguarder.features.numberLookup._$$Lambda$PhoneNumberLookupManager$M_md9rI9uugZ2gTCusDsjNTiAD8
            @Override // java.lang.Runnable
            public final void run() {
                PhoneNumberLookupManager.this.lambda$lookupResultsForPhoneNumber$3$PhoneNumberLookupManager(context, str, lookupResultFromCache, callType);
            }
        });
    }

    public boolean wasLastIncomingNumberContact() {
        return this.mLastIncomingNumberLookupWasContact;
    }

    public boolean wasLastIncomingNumberLookupSuccessful() {
        return this.mLastIncomingNumberLookupSuccess;
    }

    public boolean wasLastSuccessfullyLookedupIncomingNumberSpam() {
        return this.mLastSuccessfullyLookedupIncomingNumberWasSpam;
    }
}
