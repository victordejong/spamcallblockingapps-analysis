package com.tmobile.services.nameid.api;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Build;
import com.chuckerteam.chucker.api.ChuckerInterceptor;
import com.facebook.stetho.common.Utf8Charset;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.TmoUserStatusResponse;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.DateUtils;
import com.tmobile.services.nameid.utility.DeviceInfoUtils;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.FoRegistrationHelper;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.TmoHeaderInterceptor;
import com.tmobile.services.nameid.utility.TmoTstHeaderInterceptor;
import io.reactivex.Emitter;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import io.realm.ImportFlag;
import io.realm.Realm;
import java.io.IOException;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.HttpException;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.simplexml.SimpleXmlConverterFactory;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoApiWrapper.class */
public class TmoApiWrapper {

    /* renamed from: a */
    private static String f13247a = "TmoApiWrapper#";

    /* renamed from: b */
    public static int f13248b;

    /* renamed from: c */
    public static int f13249c;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoApiWrapper$AccountType.class */
    public enum AccountType {
        TRIAL("FREE"),
        NAMEID("PAID"),
        SCREEN_IT("RTPAID"),
        BLOCK("BLOCK"),
        CNAM("CNAM"),
        NONE("NA");
        
        @Nonnull
        private String value;

        AccountType(@Nonnull String str) {
            this.value = "";
            this.value = str;
        }

        @Nonnull
        public String getValue() {
            return this.value;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoApiWrapper$AddRemoveResponse.class */
    public static class AddRemoveResponse {

        /* renamed from: a */
        private TmoUserStatus f13250a;
        @Nullable

        /* renamed from: b */
        private TmoUserStatus f13251b;
        @Nullable

        /* renamed from: c */
        private Exception f13252c;

        private AddRemoveResponse() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoApiWrapper$ExternalAccountAction.class */
    public enum ExternalAccountAction {
        NONE,
        ACTIVATION,
        INITIALIZATION,
        ACTIVATED_SCAM_BLOCK,
        DEACTIVATED_SCAM_BLOCK
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoApiWrapper$MismatchException.class */
    public static class MismatchException extends Exception {
        MismatchException() {
            super("Scamblock state does not match the state we asked for.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(21)
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoApiWrapper$MobileNetworkCallback.class */
    public static class MobileNetworkCallback extends ConnectivityManager.NetworkCallback {
        @Nonnull

        /* renamed from: a */
        Emitter<MobileNetworkReturn> f13253a;

        /* renamed from: b */
        private boolean f13254b;

        private MobileNetworkCallback(ConnectivityManager connectivityManager, final Emitter<MobileNetworkReturn> emitter) {
            this.f13254b = false;
            this.f13253a = emitter;
            new Thread(new Runnable() { // from class: com.tmobile.services.nameid.api.n2
                @Override // java.lang.Runnable
                public final void run() {
                    TmoApiWrapper.MobileNetworkCallback.this.m6606b(emitter);
                }
            }).start();
        }

        /* renamed from: a */
        private boolean m6607a() {
            boolean z;
            synchronized (this) {
                z = this.f13254b;
            }
            return z;
        }

        /* renamed from: c */
        private void m6605c(boolean z) {
            synchronized (this) {
                this.f13254b = z;
            }
        }

        /* renamed from: b */
        public /* synthetic */ void m6606b(Emitter emitter) {
            try {
                Thread.sleep(60000L);
            } catch (Exception e) {
                LogUtil.m5641f(TmoApiWrapper.f13247a, "error waiting", e);
            }
            if (!m6607a()) {
                m6605c(true);
                emitter.onError(new TmobileRequestBuildError("Timeout, we asked for mobile network and waited 60000ms"));
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            synchronized (this) {
                if (!m6607a()) {
                    m6605c(true);
                    Retrofit r = TmoApiWrapper.m6622r(network, TmoApiWrapper.m6617w());
                    if (r == null) {
                        this.f13253a.onError(new TmobileRequestBuildError("Retrofit could not be built."));
                        return;
                    }
                    MobileNetworkReturn mobileNetworkReturn = new MobileNetworkReturn();
                    mobileNetworkReturn.f13256b = this;
                    mobileNetworkReturn.f13255a = r;
                    this.f13253a.onNext(mobileNetworkReturn);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoApiWrapper$MobileNetworkReturn.class */
    public static class MobileNetworkReturn {

        /* renamed from: a */
        private Retrofit f13255a;
        @Nullable

        /* renamed from: b */
        private MobileNetworkCallback f13256b;
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoApiWrapper$ProcessingException.class */
    public static class ProcessingException extends Exception {
        @Nullable

        /* renamed from: f */
        private String f13257f;

        ProcessingException(@Nullable String str) {
            super(str);
            this.f13257f = str;
        }

        @Nullable
        /* renamed from: b */
        public String m6599b() {
            return this.f13257f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoApiWrapper$TmobileRequestBuildError.class */
    public static class TmobileRequestBuildError extends Exception {
        TmobileRequestBuildError(String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoApiWrapper$UnrecoverableException.class */
    public static class UnrecoverableException extends Exception {
        @Nullable

        /* renamed from: f */
        private String f13258f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public static /* synthetic */ TmoUserStatus m6676D(Context context, boolean z, TmoSubscriptionCheck tmoSubscriptionCheck, boolean z2, String str, String str2, TmoUserStatusResponse tmoUserStatusResponse) throws Exception {
        TmoUserStatus g = m6641g(tmoUserStatusResponse, false);
        String imei = tmoUserStatusResponse.getImei();
        if (imei != null && !imei.isEmpty()) {
            String replaceAll = imei.replaceAll("\\D", "");
            String h = PreferenceUtils.m5389h("PREF_MATA_IMEI", "default_imei");
            PreferenceUtils.m5383n("PREF_MATA_IMEI", replaceAll);
            if (!"default_imei".equalsIgnoreCase(h) && !h.equals(replaceAll)) {
                LogUtil.m5643d(f13247a + "getUserStatusImpl", "Registering with FO Backend - IMEI has changed");
                LogUtil.m5643d(f13247a + "getUserStatusImpl", "oldImei: " + h + ", new: " + replaceAll);
                FoRegistrationHelper.m5693m(context);
            }
        }
        boolean h0 = m6638h0();
        g.setPending(h0);
        boolean x = m6616x();
        if (x) {
            g.setPending(true);
        }
        ExternalAccountAction i = m6637i(g);
        ExternalAccountAction h2 = m6639h(g);
        if (System.currentTimeMillis() - PreferenceUtils.m5393d("PREF_LAST_SCAM_BLOCK_TOGGLE") > 420000) {
            if (h2 == ExternalAccountAction.ACTIVATED_SCAM_BLOCK) {
                MainApplication.m7553C("scam_block_external_update", new String[]{"status"}, new String[]{"on"});
            } else if (h2 == ExternalAccountAction.DEACTIVATED_SCAM_BLOCK) {
                MainApplication.m7553C("scam_block_external_update", new String[]{"status"}, new String[]{"off"});
            }
        }
        LogUtil.m5643d(f13247a + "getUserStatus", "userStatus:  " + g.toString());
        SubscriptionHelper.State c = SubscriptionHelper.m5325c();
        if (BuildUtils.m5851c() && SubscriptionHelper.m5315m(c) && !SubscriptionHelper.m5316l(g)) {
            EventManager.m5725a(context, "License_Active_To_Expired");
            if (c == SubscriptionHelper.State.TRIAL) {
                MainApplication.m7555A("cnamfree_expired", null);
            }
        }
        if (g.getDaysLeft() > 0) {
            PreferenceUtils.m5384m("PREF_TRIAL_EXPIRATION_TMO", DateUtils.m5794a(new Date(), g.getDaysLeft()).getTime());
        }
        PreferenceUtils.m5384m("PREF_LAST_OFFLINE_TRIAL_DECREMENT", System.currentTimeMillis());
        if (z) {
            m6650b0(m6631l(g));
        } else {
            m6650b0(g);
        }
        boolean b = PreferenceUtils.m5395b("pref_shown_permissions", false);
        if (x) {
            LogUtil.m5632o(f13247a, "User was previously in error state, restarting the subscription checks");
            tmoSubscriptionCheck.m6587k(context, m6626n0(g));
        } else if (h0) {
            LogUtil.m5632o(f13247a, "User is pending and they pressed refresh. Immediately checking /featurestate");
            tmoSubscriptionCheck.m6586l();
        } else if (!z2 || (!(i == ExternalAccountAction.ACTIVATION || i == ExternalAccountAction.INITIALIZATION) || !b)) {
            LogUtil.m5632o(f13247a, "User status updated and there is no action to take.");
        } else {
            LogUtil.m5632o(f13247a, "Detected a change in MATA, going to verify the change on /featurestate");
            boolean z3 = i == ExternalAccountAction.ACTIVATION;
            tmoSubscriptionCheck.m6597a(context, m6626n0(g), false, z3, z3);
        }
        ApiUtils.m6841p0();
        if (SubscriptionHelper.m5307u(g)) {
            PreferenceUtils.m5385l("PREF_LAST_ACCOUNT_TYPE", 1);
        } else if (SubscriptionHelper.m5316l(g)) {
            PreferenceUtils.m5385l("PREF_LAST_ACCOUNT_TYPE", 2);
        }
        AnalyticsWrapper.m5874f(str, str2, f13248b, g, f13249c, m6627n());
        return g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public static /* synthetic */ boolean m6674F(Throwable th) throws Exception {
        return th instanceof IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public static /* synthetic */ AddRemoveResponse m6671I(TmoUserStatus tmoUserStatus, Exception exc, TmoUserStatus tmoUserStatus2) throws Exception {
        AddRemoveResponse addRemoveResponse = new AddRemoveResponse();
        addRemoveResponse.f13252c = exc;
        addRemoveResponse.f13251b = tmoUserStatus2;
        addRemoveResponse.f13250a = tmoUserStatus;
        return addRemoveResponse;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J */
    public static /* synthetic */ void m6670J(Realm realm, TmoUserStatus tmoUserStatus, Realm realm2) {
        realm.m3053Q0(TmoUserStatus.class).m2918E().m3099d();
        realm.m3046u0(tmoUserStatus, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Q */
    public static /* synthetic */ void m6663Q(boolean z, String str, String str2, TmoUserStatus tmoUserStatus) throws Exception {
        String errorText = tmoUserStatus.getErrorText();
        AnalyticsWrapper.m5869k(z, errorText == null || "none".equalsIgnoreCase(errorText) || errorText.isEmpty(), errorText, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: S */
    public static /* synthetic */ void m6661S(boolean z, AccountType accountType, SubscriptionHelper.State state, Context context, TmoUserStatus tmoUserStatus) throws Exception {
        AnalyticsWrapper.m5855y(z, accountType, state, true, "");
        if (z) {
            EventManager.m5725a(context, "Subscription_Flow_Completed");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: U */
    public static /* synthetic */ ObservableSource m6659U(AccountType accountType, boolean z, Context context, Retrofit retrofit, boolean z2, TmoUserStatusResponse tmoUserStatusResponse) throws Exception {
        Exception e = m6645e(tmoUserStatusResponse, accountType, z);
        Observable<TmoUserStatus> v = m6618v(context, retrofit, new TmoSubscriptionCheck(), false, z2, null, m6617w());
        final TmoUserStatus g = m6641g(tmoUserStatusResponse, accountType == AccountType.BLOCK);
        String str = accountType == AccountType.NAMEID ? "paid" : "free";
        if (e == null || v == null) {
            if (accountType == AccountType.BLOCK) {
                MainApplication.m7553C("scam_block_change_result", new String[]{"result"}, new String[]{FirebaseAnalytics.Param.SUCCESS});
                EventManager.m5725a(context, z ? "Scam_Blocking_Enabled" : "Scam_Blocking_Disabled");
            } else if (accountType == AccountType.CNAM) {
                MainApplication.m7553C("caller_id_change_result", new String[]{"result"}, new String[]{FirebaseAnalytics.Param.SUCCESS});
            } else if (z) {
                MainApplication.m7553C("in_app_purchase", new String[]{"soc", "result"}, new String[]{str, FirebaseAnalytics.Param.SUCCESS});
            } else {
                MainApplication.m7553C("unsubscribe", new String[]{"result"}, new String[]{FirebaseAnalytics.Param.SUCCESS});
            }
            AddRemoveResponse addRemoveResponse = new AddRemoveResponse();
            addRemoveResponse.f13252c = e;
            addRemoveResponse.f13251b = null;
            addRemoveResponse.f13250a = g;
            return Observable.just(addRemoveResponse);
        }
        String errorCode = tmoUserStatusResponse.getErrorCode();
        if (accountType == AccountType.BLOCK) {
            MainApplication.m7553C("scam_block_change_result", new String[]{"result", Constants.IPC_BUNDLE_KEY_SEND_ERROR}, new String[]{Constants.IPC_BUNDLE_KEY_SEND_ERROR, errorCode});
        } else if (accountType == AccountType.CNAM) {
            MainApplication.m7553C("caller_id_change_result", new String[]{"result", Constants.IPC_BUNDLE_KEY_SEND_ERROR}, new String[]{Constants.IPC_BUNDLE_KEY_SEND_ERROR, errorCode});
        } else if (z) {
            MainApplication.m7553C("in_app_purchase", new String[]{"soc", "result", Constants.IPC_BUNDLE_KEY_SEND_ERROR}, new String[]{str, Constants.IPC_BUNDLE_KEY_SEND_ERROR, errorCode});
        } else {
            MainApplication.m7553C("unsubscribe", new String[]{"result", Constants.IPC_BUNDLE_KEY_SEND_ERROR}, new String[]{Constants.IPC_BUNDLE_KEY_SEND_ERROR, errorCode});
        }
        LogUtil.m5632o(f13247a, "Found exception while processing addremovesoc. Going to /getuserstatus.");
        return Observable.zip(Observable.just(e), v, new BiFunction() { // from class: com.tmobile.services.nameid.api.t2
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return TmoApiWrapper.m6671I(TmoUserStatus.this, (Exception) obj, (TmoUserStatus) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: V */
    public static /* synthetic */ TmoUserStatus m6658V(AccountType accountType, boolean z, AddRemoveResponse addRemoveResponse) throws Exception {
        TmoUserStatus tmoUserStatus = addRemoveResponse.f13250a;
        if (addRemoveResponse.f13252c != null) {
            if (addRemoveResponse.f13251b == null || !m6647d(accountType, z, addRemoveResponse.f13251b)) {
                LogUtil.m5632o(f13247a, "/getuserstatus returned and it did not contain corrected response, throwing original exception.");
                throw addRemoveResponse.f13252c;
            }
            LogUtil.m5632o(f13247a, "/getuserstatus returned and it contained the correct response. Replacing initial /addremovesoc response with it.");
            tmoUserStatus = addRemoveResponse.f13251b;
        }
        boolean h0 = m6638h0();
        boolean x = m6616x();
        tmoUserStatus.setPendingCheckError(x);
        tmoUserStatus.setPending(h0 && !x);
        if (accountType != AccountType.BLOCK) {
            m6650b0(tmoUserStatus);
        }
        return tmoUserStatus;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Y */
    public static /* synthetic */ void m6655Y(AccountType accountType, Context context, TmoSubscriptionCheck tmoSubscriptionCheck, TmoUserStatus tmoUserStatus) throws Exception {
        SubscriptionHelper.State k0;
        if (tmoUserStatus.getTypeLetter() != null && (k0 = m6632k0(tmoUserStatus.getTypeLetter(), tmoUserStatus.getDaysLeft())) != SubscriptionHelper.State.NONE) {
            if (accountType != AccountType.BLOCK) {
                EventManager.m5725a(context, "Subscription_Successful");
            }
            LogUtil.m5632o(f13247a, "Going to check subscription against /featurestate");
            tmoSubscriptionCheck.m6597a(context, k0, false, false, true);
        }
    }

    /* renamed from: a0 */
    private static boolean m6652a0() {
        return PreferenceUtils.m5395b("PREF_USE_MOCK_MATA", false);
    }

    /* renamed from: b0 */
    private static void m6650b0(final TmoUserStatus tmoUserStatus) {
        LogUtil.m5643d(f13247a + "putInRealm", "putting user status in realm : " + tmoUserStatus.toString());
        try {
            final Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.z2
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    TmoApiWrapper.m6670J(Realm.this, tmoUserStatus, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f(f13247a, "Error putting user status in Realm:", e);
        }
    }

    /* renamed from: c */
    private static String m6649c(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int i2 = (bArr[i] >>> 4) & 15;
            int i3 = 0;
            while (true) {
                if (i2 < 0 || i2 > 9) {
                    sb.append((char) ((i2 - 10) + 97));
                } else {
                    sb.append((char) (i2 + 48));
                }
                i2 = bArr[i] & 15;
                if (i3 >= 1) {
                    break;
                }
                i3++;
            }
        }
        return sb.toString();
    }

    /* renamed from: c0 */
    public static Observable<TmoUserStatus> m6648c0(final Context context, final AccountType accountType, final boolean z, final boolean z2, final String str) {
        return m6636i0() ? m6635j().concatMap(new Function() { // from class: com.tmobile.services.nameid.api.j2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource zip;
                zip = Observable.zip(Observable.just(r5), TmoApiWrapper.m6644e0(r0, accountType, z, z2, str, ((TmoApiWrapper.MobileNetworkReturn) obj).f13255a, new TmoSubscriptionCheck()), new BiFunction() { // from class: com.tmobile.services.nameid.api.j3
                    @Override // io.reactivex.functions.BiFunction
                    public final Object apply(Object obj2, Object obj3) {
                        TmoUserStatus tmoUserStatus = (TmoUserStatus) obj3;
                        TmoApiWrapper.m6630l0((TmoApiWrapper.MobileNetworkReturn) obj2, r4);
                        return tmoUserStatus;
                    }
                });
                return zip;
            }
        }) : m6644e0(context, accountType, z, z2, str, m6622r(null, m6617w()), new TmoSubscriptionCheck());
    }

    /* renamed from: d */
    private static boolean m6647d(AccountType accountType, boolean z, TmoUserStatus tmoUserStatus) {
        String str = f13247a;
        LogUtil.m5632o(str, "Checking if " + tmoUserStatus.toString() + " matches requested type of " + accountType.name() + " and added? " + z);
        SubscriptionHelper.State j = SubscriptionHelper.m5318j(SubscriptionHelper.m5327a(tmoUserStatus));
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        boolean z5 = true;
        boolean z6 = true;
        boolean z7 = true;
        if (accountType == AccountType.BLOCK) {
            if (tmoUserStatus.getScamBlock() == null || tmoUserStatus.getScamBlock().booleanValue() != z) {
                z7 = false;
            }
            return z7;
        } else if (accountType == AccountType.NAMEID) {
            if (z) {
                if (j != SubscriptionHelper.State.PREMIUM) {
                    z2 = false;
                }
                return z2;
            }
            if (j != SubscriptionHelper.State.NONE) {
                z3 = false;
            }
            return z3;
        } else if (accountType == AccountType.TRIAL) {
            if (z) {
                if (j != SubscriptionHelper.State.TRIAL) {
                    z4 = false;
                }
                return z4;
            }
            if (j != SubscriptionHelper.State.NONE) {
                z5 = false;
            }
            return z5;
        } else if (accountType != AccountType.CNAM) {
            return false;
        } else {
            if (tmoUserStatus.isCNAMON() != z) {
                z6 = false;
            }
            return z6;
        }
    }

    /* renamed from: d0 */
    public static void m6646d0(Context context, AccountType accountType, boolean z, boolean z2, String str, @Nullable Consumer<TmoUserStatus> consumer, @Nullable Consumer<Throwable> consumer2) {
        Consumer<Throwable> consumer3 = consumer2;
        if (consumer2 == null) {
            consumer3 = C1686a3.f13264f;
        }
        Consumer<TmoUserStatus> consumer4 = consumer;
        if (consumer == null) {
            consumer4 = C1735k2.f13343f;
        }
        m6648c0(context, accountType, z, z2, str).observeOn(AndroidSchedulers.m4448c()).subscribe(consumer4, consumer3);
    }

    /* renamed from: e */
    private static Exception m6645e(TmoUserStatusResponse tmoUserStatusResponse, AccountType accountType, boolean z) throws MismatchException, UnrecoverableException, ProcessingException {
        if (!tmoUserStatusResponse.getErrorCode().toLowerCase().contains("none")) {
            return new ProcessingException(tmoUserStatusResponse.getErrorCode());
        }
        return null;
    }

    /* renamed from: e0 */
    public static Observable<TmoUserStatus> m6644e0(final Context context, final AccountType accountType, final boolean z, boolean z2, final String str, final Retrofit retrofit, final TmoSubscriptionCheck tmoSubscriptionCheck) {
        String str2 = f13247a + "setAccountStatus";
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "Adding" : "Removing");
        sb.append(" account type ");
        sb.append(accountType);
        LogUtil.m5643d(str2, sb.toString());
        final SubscriptionHelper.State c = SubscriptionHelper.m5325c();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?><AddRemoveSocRequest xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:noNamespaceSchemaLocation=\"addremovesoc.xsd\"><soccode>");
        sb2.append(accountType.getValue());
        sb2.append("</soccode><operation>");
        sb2.append(z ? "ADD" : "REMOVE");
        sb2.append("</operation></AddRemoveSocRequest>");
        RequestBody create = RequestBody.create(MediaType.parse("text/plain"), sb2.toString());
        if (accountType != AccountType.BLOCK && z) {
            EventManager.m5725a(context, "Subscription_Flow_Started");
        }
        Observable<TmoUserStatus> share = m6643f(retrofit).mo6680b(create).observeOn(AndroidSchedulers.m4448c()).subscribeOn(Schedulers.m3239b()).concatMap(new Function() { // from class: com.tmobile.services.nameid.api.u2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return TmoApiWrapper.m6659U(TmoApiWrapper.AccountType.this, z, context, retrofit, z, (TmoUserStatusResponse) obj);
            }
        }).map(new Function() { // from class: com.tmobile.services.nameid.api.g3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return TmoApiWrapper.m6658V(TmoApiWrapper.AccountType.this, z, (TmoApiWrapper.AddRemoveResponse) obj);
            }
        }).retryWhen(new RetrySitErrorMata()).share();
        Consumer<? super Throwable> consumer = C1770r2.f13417f;
        if (!z || !z2) {
            LogUtil.m5632o(f13247a, "/addremovesoc is not an upgrade");
            share.flatMap(new Function() { // from class: com.tmobile.services.nameid.api.h3
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource s;
                    TmoUserStatus tmoUserStatus = (TmoUserStatus) obj;
                    s = TmoApiWrapper.m6621s(context, null);
                    return s;
                }
            }).subscribe(C1745m2.f13366f, consumer);
        } else {
            LogUtil.m5632o(f13247a, "/addremovesoc is an upgrade");
            share.flatMap(new Function() { // from class: com.tmobile.services.nameid.api.h2
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource s;
                    TmoUserStatus tmoUserStatus = (TmoUserStatus) obj;
                    s = TmoApiWrapper.m6621s(context, null);
                    return s;
                }
            }).subscribe(new Consumer() { // from class: com.tmobile.services.nameid.api.v2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    TmoApiWrapper.m6655Y(TmoApiWrapper.AccountType.this, context, tmoSubscriptionCheck, (TmoUserStatus) obj);
                }
            }, consumer);
        }
        if (accountType == AccountType.BLOCK) {
            share.subscribe(new Consumer() { // from class: com.tmobile.services.nameid.api.i2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    TmoUserStatus tmoUserStatus = (TmoUserStatus) obj;
                    AnalyticsWrapper.m5872h(z, true, "");
                }
            }, new Consumer() { // from class: com.tmobile.services.nameid.api.d3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    AnalyticsWrapper.m5872h(z, false, TmoApiWrapper.m6625o((Throwable) obj));
                }
            });
        } else if (accountType == AccountType.CNAM) {
            share.subscribe(new Consumer() { // from class: com.tmobile.services.nameid.api.b3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    TmoApiWrapper.m6663Q(z, str, r6, (TmoUserStatus) obj);
                }
            }, new Consumer() { // from class: com.tmobile.services.nameid.api.w2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    AnalyticsWrapper.m5869k(z, false, TmoApiWrapper.m6625o((Throwable) obj), str, r6);
                }
            });
        } else {
            share.subscribe(new Consumer() { // from class: com.tmobile.services.nameid.api.p2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    TmoApiWrapper.m6661S(z, accountType, c, context, (TmoUserStatus) obj);
                }
            }, new Consumer() { // from class: com.tmobile.services.nameid.api.c3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    AnalyticsWrapper.m5855y(z, accountType, c, false, TmoApiWrapper.m6625o((Throwable) obj));
                }
            });
        }
        return share;
    }

    /* renamed from: f */
    private static TmoAccountApi m6643f(Retrofit retrofit) {
        return (BuildUtils.m5848f() || (BuildUtils.m5852b() && m6652a0())) ? m6624p(retrofit) : (TmoAccountApi) retrofit.create(TmoAccountApi.class);
    }

    /* renamed from: f0 */
    public static String m6642f0(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes(Utf8Charset.NAME);
            instance.update(bytes, 0, bytes.length);
            return m6649c(instance.digest());
        } catch (Exception e) {
            LogUtil.m5641f(f13247a, "error while generating password", e);
            return null;
        }
    }

    /* renamed from: g */
    private static TmoUserStatus m6641g(TmoUserStatusResponse tmoUserStatusResponse, boolean z) {
        String str = f13247a;
        LogUtil.m5639h(str, "creating TmoUserStatus for: " + tmoUserStatusResponse.toString());
        TmoUserStatus tmoUserStatus = new TmoUserStatus();
        Realm G0 = Realm.m3064G0();
        try {
            TmoUserStatus tmoUserStatus2 = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus2 != null) {
                String str2 = f13247a;
                LogUtil.m5639h(str2, "found user status in realm: " + tmoUserStatus2.toString());
                tmoUserStatus = tmoUserStatus2.copy();
            }
            if (G0 != null) {
                G0.close();
            }
            tmoUserStatus.setPending(false);
            tmoUserStatus.setPendingCheckError(false);
            Boolean scamId = tmoUserStatusResponse.getScamId();
            if (scamId != null) {
                tmoUserStatus.setScamId(scamId);
            }
            Boolean scamBlock = tmoUserStatusResponse.getScamBlock();
            if (scamBlock != null) {
                tmoUserStatus.setScamBlock(scamBlock);
            }
            if (tmoUserStatusResponse.getTrialDaysLeft() != -1) {
                tmoUserStatus.setDaysLeft(tmoUserStatusResponse.getTrialDaysLeft());
            }
            tmoUserStatus.setUpdatedAt(new Date());
            String upgradeEligible = tmoUserStatusResponse.getUpgradeEligible();
            if (upgradeEligible != null && !z) {
                tmoUserStatus.setEligible("true".equalsIgnoreCase(upgradeEligible));
            }
            if (tmoUserStatusResponse.getSubscriptionType() != null) {
                String str3 = f13247a;
                LogUtil.m5643d(str3, "Setting Type Letter: " + tmoUserStatusResponse.getSubscriptionType());
                tmoUserStatus.setTypeLetter(tmoUserStatusResponse.getSubscriptionType());
            }
            if (tmoUserStatusResponse.getStatus() != null) {
                tmoUserStatus.setStatusText(tmoUserStatusResponse.getStatus());
            }
            tmoUserStatus.setErrorText(tmoUserStatusResponse.getErrorCode());
            if (tmoUserStatusResponse.getNovm() != null) {
                tmoUserStatus.setNovm(tmoUserStatusResponse.getNovm().booleanValue());
            }
            if (tmoUserStatusResponse.isCNAMON() != null) {
                tmoUserStatus.setCNAMON(tmoUserStatusResponse.isCNAMON().booleanValue());
            } else {
                tmoUserStatus.setCNAMON(false);
            }
            if (tmoUserStatusResponse.isCNAMEligible() != null) {
                tmoUserStatus.setCNAMEligible(tmoUserStatusResponse.isCNAMEligible().booleanValue());
            } else {
                tmoUserStatus.setCNAMEligible(false);
            }
            if (tmoUserStatusResponse.getVMTTOFF() != null) {
                tmoUserStatus.setVMTTOFF(tmoUserStatusResponse.getVMTTOFF().booleanValue());
            }
            if (tmoUserStatusResponse.getCustomerType() != null) {
                tmoUserStatus.setCustomerType(tmoUserStatusResponse.getCustomerType());
            }
            if (tmoUserStatusResponse.getPnb() != null) {
                tmoUserStatus.setPnb(tmoUserStatusResponse.getPnb());
            }
            if (tmoUserStatusResponse.getVmtt() != null) {
                tmoUserStatus.setVmtt(tmoUserStatusResponse.getVmtt());
            }
            return tmoUserStatus;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: g0 */
    public static String m6640g0(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            byte[] bytes = str.getBytes(Utf8Charset.NAME);
            instance.update(bytes, 0, bytes.length);
            return m6649c(instance.digest());
        } catch (Exception e) {
            LogUtil.m5641f(f13247a, "error while generating password", e);
            return null;
        }
    }

    /* renamed from: h */
    private static ExternalAccountAction m6639h(@Nonnull TmoUserStatus tmoUserStatus) {
        Realm G0 = Realm.m3064G0();
        try {
            TmoUserStatus tmoUserStatus2 = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus2 == null) {
                ExternalAccountAction externalAccountAction = ExternalAccountAction.NONE;
                if (G0 != null) {
                    G0.close();
                }
                return externalAccountAction;
            } else if (tmoUserStatus.getScamBlock() == null || tmoUserStatus2.getScamBlock() == null || tmoUserStatus2.getScamBlock().equals(tmoUserStatus.getScamBlock())) {
                if (G0 != null) {
                    G0.close();
                }
                return ExternalAccountAction.NONE;
            } else if (tmoUserStatus.getScamBlock().booleanValue()) {
                ExternalAccountAction externalAccountAction2 = ExternalAccountAction.ACTIVATED_SCAM_BLOCK;
                if (G0 != null) {
                    G0.close();
                }
                return externalAccountAction2;
            } else {
                ExternalAccountAction externalAccountAction3 = ExternalAccountAction.DEACTIVATED_SCAM_BLOCK;
                if (G0 != null) {
                    G0.close();
                }
                return externalAccountAction3;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* renamed from: h0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m6638h0() {
        /*
            io.realm.Realm r0 = io.realm.Realm.m3064G0()
            r3 = r0
            r0 = r3
            java.lang.Class<com.tmobile.services.nameid.model.TmoUserStatus> r1 = com.tmobile.services.nameid.model.TmoUserStatus.class
            io.realm.RealmQuery r0 = r0.m3053Q0(r1)     // Catch: all -> 0x002f
            java.lang.Object r0 = r0.m2916G()     // Catch: all -> 0x002f
            com.tmobile.services.nameid.model.TmoUserStatus r0 = (com.tmobile.services.nameid.model.TmoUserStatus) r0     // Catch: all -> 0x002f
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0023
            r0 = r4
            boolean r0 = r0.isPending()     // Catch: all -> 0x002f
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0023
            r0 = 1
            r5 = r0
            goto L_0x0025
        L_0x0023:
            r0 = 0
            r5 = r0
        L_0x0025:
            r0 = r3
            if (r0 == 0) goto L_0x002d
            r0 = r3
            r0.close()
        L_0x002d:
            r0 = r5
            return r0
        L_0x002f:
            r4 = move-exception
            r0 = r4
            throw r0     // Catch: all -> 0x0032
        L_0x0032:
            r6 = move-exception
            r0 = r3
            if (r0 == 0) goto L_0x0044
            r0 = r3
            r0.close()     // Catch: all -> 0x003e
            goto L_0x0044
        L_0x003e:
            r3 = move-exception
            r0 = r4
            r1 = r3
            r0.addSuppressed(r1)
        L_0x0044:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.api.TmoApiWrapper.m6638h0():boolean");
    }

    /* renamed from: i */
    private static ExternalAccountAction m6637i(@Nonnull TmoUserStatus tmoUserStatus) {
        if (TmoUserStatus.SubscriptionStatus.fromStatusText(tmoUserStatus.getStatusText()) != TmoUserStatus.SubscriptionStatus.ACTIVE) {
            return ExternalAccountAction.NONE;
        }
        Realm G0 = Realm.m3064G0();
        try {
            TmoUserStatus tmoUserStatus2 = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (!(tmoUserStatus2 == null || tmoUserStatus2.getStatusText() == null)) {
                if (TmoUserStatus.SubscriptionStatus.fromStatusText(tmoUserStatus2.getStatusText()) == TmoUserStatus.SubscriptionStatus.ACTIVE) {
                    ExternalAccountAction externalAccountAction = ExternalAccountAction.NONE;
                    if (G0 != null) {
                        G0.close();
                    }
                    return externalAccountAction;
                }
                ExternalAccountAction externalAccountAction2 = ExternalAccountAction.ACTIVATION;
                if (G0 != null) {
                    G0.close();
                }
                return externalAccountAction2;
            }
            ExternalAccountAction externalAccountAction3 = ExternalAccountAction.INITIALIZATION;
            if (G0 != null) {
                G0.close();
            }
            return externalAccountAction3;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: i0 */
    private static boolean m6636i0() {
        if (!m6623q().contains("https")) {
            LogUtil.m5639h(f13247a + "shouldCallOverMobile", "returning true - https request not detected");
            return true;
        }
        LogUtil.m5639h(f13247a + "shouldCallOverMobile", "returning false - https request detected");
        return false;
    }

    /* renamed from: j */
    public static Observable<MobileNetworkReturn> m6635j() {
        final Context l = MainApplication.m7528l();
        return l == null ? Observable.error(new TmobileRequestBuildError("Context is null")) : Observable.create(new ObservableOnSubscribe() { // from class: com.tmobile.services.nameid.api.y2
            @Override // io.reactivex.ObservableOnSubscribe
            /* renamed from: a */
            public final void mo2504a(ObservableEmitter observableEmitter) {
                TmoApiWrapper.m6615y(l, observableEmitter);
            }
        });
    }

    /* renamed from: j0 */
    private static boolean m6634j0() {
        return PreferenceUtils.m5395b("PREF_USE_LAB_MATA", false);
    }

    @TargetApi(21)
    /* renamed from: k */
    private static void m6633k(ObservableEmitter<MobileNetworkReturn> observableEmitter, Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        builder.addTransportType(0);
        builder.addCapability(12);
        connectivityManager.requestNetwork(builder.build(), new MobileNetworkCallback(connectivityManager, observableEmitter));
    }

    /* renamed from: k0 */
    private static SubscriptionHelper.State m6632k0(String str, int i) {
        SubscriptionHelper.State state;
        SubscriptionHelper.State state2 = SubscriptionHelper.State.NONE;
        if (BuildUtils.m5850d()) {
            LogUtil.m5643d(f13247a + "subscriptionTypeToState", "detected Metro user - returning state of NONE");
            return state2;
        }
        TmoUserStatus.SubscriptionType fromTypeLetter = TmoUserStatus.SubscriptionType.fromTypeLetter(str);
        if (fromTypeLetter == TmoUserStatus.SubscriptionType.PREMIUM_STANDALONE || fromTypeLetter == TmoUserStatus.SubscriptionType.PREMIUM_BUNDLED) {
            if (i > 0) {
                LogUtil.m5632o(f13247a, "MyAccount api says premium account status but has daysleft. Looking for trial instead of premium");
                state = SubscriptionHelper.State.TRIAL;
            } else {
                state = SubscriptionHelper.State.PREMIUM;
            }
        } else if (fromTypeLetter == TmoUserStatus.SubscriptionType.REDUCED_BUNDLED || fromTypeLetter == TmoUserStatus.SubscriptionType.REDUCED_STANDALONE) {
            state = SubscriptionHelper.State.REDUCED;
        } else {
            state = state2;
            if (fromTypeLetter == TmoUserStatus.SubscriptionType.FREE) {
                state = SubscriptionHelper.State.TRIAL;
            }
        }
        return state;
    }

    /* renamed from: l */
    private static TmoUserStatus m6631l(TmoUserStatus tmoUserStatus) {
        LogUtil.m5643d(f13247a + "filterCnamOnly", "incoming user status: " + tmoUserStatus.toString());
        try {
            Realm G0 = Realm.m3064G0();
            TmoUserStatus tmoUserStatus2 = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus2 == null || !tmoUserStatus2.isValid()) {
                if (G0 != null) {
                    G0.close();
                }
                return tmoUserStatus;
            }
            TmoUserStatus copy = tmoUserStatus2.copy();
            m6628m0(copy, tmoUserStatus);
            if (G0 != null) {
                G0.close();
            }
            return copy;
        } catch (Exception e) {
            LogUtil.m5641f(f13247a, "Error filtering user status:", e);
            return tmoUserStatus;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public static void m6630l0(MobileNetworkReturn mobileNetworkReturn, Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (Build.VERSION.SDK_INT >= 21 && mobileNetworkReturn.f13256b != null) {
            connectivityManager.unregisterNetworkCallback(mobileNetworkReturn.f13256b);
        }
    }

    /* renamed from: m */
    private static String m6629m() {
        Realm G0 = Realm.m3064G0();
        try {
            TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus != null && tmoUserStatus.getCustomerType() != null) {
                String customerType = tmoUserStatus.getCustomerType();
                if (G0 != null) {
                    G0.close();
                }
                return customerType;
            } else if (G0 == null) {
                return "";
            } else {
                G0.close();
                return "";
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: m0 */
    private static TmoUserStatus m6628m0(TmoUserStatus tmoUserStatus, TmoUserStatus tmoUserStatus2) {
        tmoUserStatus.setCNAMEligible(tmoUserStatus2.isCNAMEligible());
        tmoUserStatus.setCNAMON(tmoUserStatus2.isCNAMON());
        return tmoUserStatus;
    }

    /* renamed from: n */
    private static String m6627n() {
        return m6634j0() ? PreferenceUtils.m5390g("PREF_LAB_MSISDN") : PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN");
    }

    /* renamed from: n0 */
    public static SubscriptionHelper.State m6626n0(@Nullable TmoUserStatus tmoUserStatus) {
        return (tmoUserStatus == null || tmoUserStatus.getTypeLetter() == null) ? SubscriptionHelper.State.NONE : TmoUserStatus.SubscriptionStatus.fromStatusText(tmoUserStatus.getStatusText()) != TmoUserStatus.SubscriptionStatus.ACTIVE ? SubscriptionHelper.State.NONE : m6632k0(tmoUserStatus.getTypeLetter(), tmoUserStatus.getDaysLeft());
    }

    /* renamed from: o */
    static String m6625o(Throwable th) {
        String str;
        if (th instanceof ProcessingException) {
            str = ((ProcessingException) th).f13257f;
        } else if (th instanceof UnrecoverableException) {
            str = ((UnrecoverableException) th).f13258f;
        } else if (th instanceof HttpException) {
            HttpException httpException = (HttpException) th;
            str = httpException.code() + ":" + httpException.message();
        } else {
            str = th.getMessage();
        }
        return str;
    }

    /* renamed from: p */
    private static MockTmoApi m6624p(Retrofit retrofit) {
        return new MockTmoApi(retrofit);
    }

    /* renamed from: q */
    private static String m6623q() {
        return BuildUtils.m5846h() ? "http://dev-myacc-mock-api-elb-425871552.us-east-1.elb.amazonaws.com:1234" : m6634j0() ? "https://lab.omwmyaccountservice.t-mobile.com/" : BuildUtils.m5847g() ? "https://selfservice.geo.t-mobile.com/" : "http://dev-myacc-mock-api-elb-425871552.us-east-1.elb.amazonaws.com:8080";
    }

    @Nullable
    /* renamed from: r */
    public static Retrofit m6622r(@Nullable Network network, String str) {
        OkHttpClient.Builder builder;
        Context l = MainApplication.m7528l();
        if (l == null) {
            return null;
        }
        String g = PreferenceUtils.m5390g("PREF_SIT");
        String m = m6629m();
        long longValue = DeviceInfoUtils.m5760d().longValue();
        String n = m6627n();
        String g0 = m6640g0(str + "fONameIdClient@Tm0US");
        if (g0 == null) {
            return null;
        }
        SocketFactory socketFactory = null;
        if (Build.VERSION.SDK_INT >= 21) {
            socketFactory = null;
            if (network != null) {
                socketFactory = network.getSocketFactory();
            }
        }
        OkHttpClient.Builder addInterceptor = new OkHttpClient.Builder().addInterceptor(new ChuckerInterceptor(l));
        if (!BuildUtils.m5847g() || BuildUtils.m5846h()) {
            builder = addInterceptor.addInterceptor(new TmoTstHeaderInterceptor(g, longValue + "", n, g0, str));
        } else {
            builder = addInterceptor.addInterceptor(new TmoHeaderInterceptor(g, longValue + "", n, g0, str, m));
        }
        OkHttpClient.Builder builder2 = builder;
        if (socketFactory != null) {
            builder2 = builder.socketFactory(socketFactory);
        }
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(C1755o2.f13392a);
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
        return new Retrofit.Builder().baseUrl(m6623q()).addConverterFactory(SimpleXmlConverterFactory.create()).client(builder2.addInterceptor(httpLoggingInterceptor).readTimeout(30L, TimeUnit.SECONDS).callTimeout(30L, TimeUnit.SECONDS).build()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build();
    }

    /* renamed from: s */
    public static Observable<TmoUserStatus> m6621s(final Context context, @Nullable final String str) {
        if (m6636i0()) {
            return m6635j().concatMap(new Function() { // from class: com.tmobile.services.nameid.api.x2
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource zip;
                    zip = Observable.zip(Observable.just(r2), TmoApiWrapper.m6619u(r0, ((TmoApiWrapper.MobileNetworkReturn) obj).f13255a, new TmoSubscriptionCheck(), str, ""), new BiFunction() { // from class: com.tmobile.services.nameid.api.e3
                        @Override // io.reactivex.functions.BiFunction
                        public final Object apply(Object obj2, Object obj3) {
                            TmoUserStatus tmoUserStatus = (TmoUserStatus) obj3;
                            TmoApiWrapper.m6630l0((TmoApiWrapper.MobileNetworkReturn) obj2, r4);
                            return tmoUserStatus;
                        }
                    });
                    return zip;
                }
            }).observeOn(AndroidSchedulers.m4448c());
        }
        String w = m6617w();
        return m6619u(context, m6622r(null, w), new TmoSubscriptionCheck(), str, w).observeOn(AndroidSchedulers.m4448c());
    }

    /* renamed from: t */
    public static void m6620t(@Nullable Consumer<TmoUserStatus> consumer, @Nullable Consumer<Throwable> consumer2, @Nullable String str) {
        if (consumer2 == null) {
            consumer2 = C1726i3.f13326f;
        }
        Consumer<TmoUserStatus> consumer3 = consumer;
        if (consumer == null) {
            consumer3 = C1775s2.f13422f;
        }
        Context l = MainApplication.m7528l();
        if (l != null) {
            m6621s(l, str).subscribe(consumer3, consumer2);
        }
    }

    @Nullable
    /* renamed from: u */
    public static Observable<TmoUserStatus> m6619u(Context context, Retrofit retrofit, TmoSubscriptionCheck tmoSubscriptionCheck, @Nullable String str, String str2) {
        return m6618v(context, retrofit, tmoSubscriptionCheck, true, false, str, str2);
    }

    @Nullable
    /* renamed from: v */
    private static Observable<TmoUserStatus> m6618v(@Nullable final Context context, Retrofit retrofit, final TmoSubscriptionCheck tmoSubscriptionCheck, final boolean z, final boolean z2, @Nullable final String str, final String str2) {
        if (context == null) {
            LogUtil.m5631p(f13247a, "Context is null. Returning early. This should never happen.");
            return null;
        }
        f13248b = 0;
        f13249c = 0;
        if (str == null) {
            str = UUID.randomUUID().toString();
        }
        return m6643f(retrofit).mo6681a().subscribeOn(Schedulers.m3239b()).observeOn(AndroidSchedulers.m4448c()).map(new Function() { // from class: com.tmobile.services.nameid.api.f3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return TmoApiWrapper.m6676D(context, z2, tmoSubscriptionCheck, z, str, str2, (TmoUserStatusResponse) obj);
            }
        }).doOnError(new Consumer() { // from class: com.tmobile.services.nameid.api.q2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Throwable th = (Throwable) obj;
                AnalyticsWrapper.m5873g(str, str2, TmoApiWrapper.f13248b, TmoApiWrapper.f13249c, TmoApiWrapper.m6627n());
            }
        }).retry(1L, C1740l2.f13360f).retryWhen(new RetrySitErrorMata(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public static String m6617w() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(new Date());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m6616x() {
        /*
            io.realm.Realm r0 = io.realm.Realm.m3064G0()
            r3 = r0
            r0 = r3
            java.lang.Class<com.tmobile.services.nameid.model.TmoUserStatus> r1 = com.tmobile.services.nameid.model.TmoUserStatus.class
            io.realm.RealmQuery r0 = r0.m3053Q0(r1)     // Catch: all -> 0x002f
            java.lang.Object r0 = r0.m2916G()     // Catch: all -> 0x002f
            com.tmobile.services.nameid.model.TmoUserStatus r0 = (com.tmobile.services.nameid.model.TmoUserStatus) r0     // Catch: all -> 0x002f
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0023
            r0 = r4
            boolean r0 = r0.isPendingCheckError()     // Catch: all -> 0x002f
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0023
            r0 = 1
            r5 = r0
            goto L_0x0025
        L_0x0023:
            r0 = 0
            r5 = r0
        L_0x0025:
            r0 = r3
            if (r0 == 0) goto L_0x002d
            r0 = r3
            r0.close()
        L_0x002d:
            r0 = r5
            return r0
        L_0x002f:
            r4 = move-exception
            r0 = r4
            throw r0     // Catch: all -> 0x0032
        L_0x0032:
            r6 = move-exception
            r0 = r3
            if (r0 == 0) goto L_0x0044
            r0 = r3
            r0.close()     // Catch: all -> 0x003e
            goto L_0x0044
        L_0x003e:
            r3 = move-exception
            r0 = r4
            r1 = r3
            r0.addSuppressed(r1)
        L_0x0044:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.api.TmoApiWrapper.m6616x():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public static /* synthetic */ void m6615y(Context context, ObservableEmitter observableEmitter) throws Exception {
        if (BuildUtils.m5848f()) {
            MobileNetworkReturn mobileNetworkReturn = new MobileNetworkReturn();
            mobileNetworkReturn.f13255a = m6622r(null, m6617w());
            observableEmitter.onNext(mobileNetworkReturn);
            return;
        }
        m6633k(observableEmitter, context);
    }
}
