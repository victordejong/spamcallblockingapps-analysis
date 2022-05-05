package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.content.SharedPreferences;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.tmoid.agent.Configuration;
import com.tmobile.tmoid.helperlib.AgentServiceConnectionMode;
import com.tmobile.tmoid.helperlib.sit.SessionInstanceToken;
import com.tmobile.tmoid.helperlib.sit.SitAgentServiceConnection;
import com.tmobile.tmoid.helperlib.sit.SitMobileDataConnectionException;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.annotations.NonNull;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/IamWrapper.class */
public class IamWrapper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.utility.IamWrapper$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/IamWrapper$1.class */
    public static final class C19041 implements ObservableOnSubscribe<IamResponse> {

        /* renamed from: a */
        final /* synthetic */ boolean f14311a;

        /* renamed from: b */
        final /* synthetic */ Context f14312b;

        /* renamed from: c */
        final /* synthetic */ SitAnalyticEvent f14313c;

        C19041(boolean z, Context context, SitAnalyticEvent sitAnalyticEvent) {
            this.f14311a = z;
            this.f14312b = context;
            this.f14313c = sitAnalyticEvent;
        }

        @Override // io.reactivex.ObservableOnSubscribe
        /* renamed from: a */
        public void mo2504a(@NonNull final ObservableEmitter<IamResponse> observableEmitter) throws Exception {
            if (BuildUtils.m5848f()) {
                PreferenceUtils.m5383n("PREF_SIT", "thisisnotatoken");
                PreferenceUtils.m5383n("PREF_TMO_ACCOUNT_MSISDN", "15015551234");
                PreferenceUtils.m5383n("PREF_SIT_EXPIRATION", new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US).format(DateUtils.m5794a(new Date(), 1)));
                observableEmitter.onNext(IamResponse.SUCCESS);
                observableEmitter.onComplete();
                return;
            }
            try {
                final SitStateCheck p = MainApplication.m7524p();
                if (p.m5343c()) {
                    p.m5345a(new SitStateListener(this) { // from class: com.tmobile.services.nameid.utility.IamWrapper.1.1
                        @Override // com.tmobile.services.nameid.utility.SitStateListener
                        /* renamed from: a */
                        public void mo5340a(boolean z) {
                            if (!z) {
                                LogUtil.m5632o("IamHelper#", "The waited-for process has finished, retrying with the SIT it got");
                                observableEmitter.onNext(p.m5344b() == null ? IamResponse.ERROR : p.m5344b());
                                observableEmitter.onComplete();
                                p.m5342d(this);
                            }
                        }
                    });
                    LogUtil.m5632o("IamHelper#", "Need new SIT, but some other process is already getting it. Waiting for it to return ");
                    return;
                }
                String g = PreferenceUtils.m5390g("PREF_SIT_EXPIRATION");
                if (this.f14311a || g.isEmpty() || !IamWrapper.m5674n(g).after(new Date())) {
                    LogUtil.m5632o("IamHelper#", "Attempting to get new SIT, forceRefresh=" + this.f14311a);
                    SharedPreferences.Editor edit = this.f14312b.getSharedPreferences(Configuration.PREFERENCES_FILE, 0).edit();
                    edit.putString("ses.url", "https://eas3.msg.t-mobile.com/generic_devices");
                    edit.putString("redirect.uri", "https://localhost");
                    edit.putString("device.agent", "IAM_Device_Agent/3.0.7");
                    edit.commit();
                    p.m5341e(true, null);
                    Context applicationContext = this.f14312b.getApplicationContext();
                    final SitAnalyticEvent sitAnalyticEvent = this.f14313c;
                    new SitAgentServiceConnection(applicationContext, new SitAgentServiceConnection.ConnectedCallback() { // from class: com.tmobile.services.nameid.utility.u
                        @Override // com.tmobile.tmoid.helperlib.sit.SitAgentServiceConnection.ConnectedCallback
                        /* renamed from: a */
                        public final void mo4989a(SitAgentServiceConnection sitAgentServiceConnection) {
                            new Thread(new Runnable() { // from class: com.tmobile.services.nameid.utility.t
                                @Override // java.lang.Runnable
                                public final void run() {
                                    IamWrapper.m5680h(SitAgentServiceConnection.this, r5, r6);
                                }
                            }).start();
                        }
                    }, AgentServiceConnectionMode.LOCAL);
                    return;
                }
                p.m5341e(false, IamResponse.SUCCESS);
                observableEmitter.onNext(IamResponse.SUCCESS);
                observableEmitter.onComplete();
                LogUtil.m5632o("IamHelper#", "Asked for sit, however it expires at " + g + " which is in the future. Returning cached value.");
            } catch (Exception e) {
                LogUtil.m5641f("IamHelper#getIamToken", "exception connecting to SIT agent", e);
                observableEmitter.onNext(IamResponse.ERROR);
                observableEmitter.onComplete();
            }
        }
    }

    /* renamed from: com.tmobile.services.nameid.utility.IamWrapper$2 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/IamWrapper$2.class */
    static final class C19062 implements ObservableOnSubscribe<IamResponse> {

        /* renamed from: a */
        final /* synthetic */ Context f14316a;

        /* renamed from: b */
        final /* synthetic */ SitAnalyticEvent f14317b;

        C19062(Context context, SitAnalyticEvent sitAnalyticEvent) {
            this.f14316a = context;
            this.f14317b = sitAnalyticEvent;
        }

        @Override // io.reactivex.ObservableOnSubscribe
        /* renamed from: a */
        public void mo2504a(@NonNull final ObservableEmitter<IamResponse> observableEmitter) throws Exception {
            LogUtil.m5643d("IamHelper#getIamMsisdn", "already have valid sit, getting MSISDN");
            if (BuildUtils.m5848f()) {
                PreferenceUtils.m5383n("PREF_TMO_ACCOUNT_MSISDN", "15015551234");
                observableEmitter.onNext(IamResponse.SUCCESS);
                observableEmitter.onComplete();
                return;
            }
            try {
                SharedPreferences.Editor edit = this.f14316a.getSharedPreferences(Configuration.PREFERENCES_FILE, 0).edit();
                edit.putString("ses.url", "https://eas3.msg.t-mobile.com/generic_devices");
                edit.putString("redirect.uri", "https://localhost");
                edit.putString("device.agent", "IAM_Device_Agent/3.0.7");
                edit.commit();
                Context applicationContext = this.f14316a.getApplicationContext();
                final SitAnalyticEvent sitAnalyticEvent = this.f14317b;
                new SitAgentServiceConnection(applicationContext, new SitAgentServiceConnection.ConnectedCallback() { // from class: com.tmobile.services.nameid.utility.v
                    @Override // com.tmobile.tmoid.helperlib.sit.SitAgentServiceConnection.ConnectedCallback
                    /* renamed from: a */
                    public final void mo4989a(SitAgentServiceConnection sitAgentServiceConnection) {
                        new Thread(new Runnable() { // from class: com.tmobile.services.nameid.utility.w
                            @Override // java.lang.Runnable
                            public final void run() {
                                IamWrapper.m5681g(SitAgentServiceConnection.this, r5, r6);
                            }
                        }).start();
                    }
                }, AgentServiceConnectionMode.LOCAL);
            } catch (Exception e) {
                LogUtil.m5641f("IamHelper#getIamToken", "exception connecting to SIT agent", e);
                observableEmitter.onNext(IamResponse.ERROR);
                observableEmitter.onComplete();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/IamWrapper$IamResponse.class */
    public enum IamResponse {
        SUCCESS,
        ERROR_NO_NETWORK,
        ERROR_EXPIRED,
        ERROR
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/IamWrapper$SitAnalyticEvent.class */
    public static class SitAnalyticEvent {

        /* renamed from: a */
        private String f14318a;

        /* renamed from: b */
        private String f14319b = "0";

        /* renamed from: c */
        private String f14320c = "0";

        /* renamed from: d */
        private String f14321d = "";

        /* renamed from: e */
        private String f14322e = "";

        /* renamed from: f */
        private boolean f14323f = false;

        /* renamed from: g */
        private boolean f14324g = false;

        public SitAnalyticEvent() {
            this.f14318a = "";
            this.f14318a = UUID.randomUUID().toString();
        }

        public SitAnalyticEvent(String str) {
            this.f14318a = "";
            this.f14318a = str;
        }

        /* renamed from: a */
        public void m5669a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i) {
            LogUtil.m5643d("IamHelper#", "update: portion = " + i + " sitResult = " + str + " misisdnResult = " + str2 + " errorCode = " + str4);
            if (str != null) {
                this.f14319b = str;
            }
            if (str2 != null) {
                this.f14320c = str2;
            }
            if (str3 != null) {
                this.f14321d = str3;
            }
            if (str4 != null) {
                this.f14322e = str4;
            }
            if (i == 1) {
                this.f14323f = true;
            }
            if (i == 2) {
                this.f14324g = true;
            }
            if (this.f14323f && this.f14324g) {
                AnalyticsWrapper.m5875e(this.f14318a, this.f14319b, this.f14320c, this.f14321d, this.f14322e);
            }
        }
    }

    private IamWrapper() {
        throw new IllegalAccessError("This is a utility class, it should not be created");
    }

    /* renamed from: c */
    public static Observable<IamResponse> m5685c(Context context, @Nullable SitAnalyticEvent sitAnalyticEvent) {
        SitAnalyticEvent sitAnalyticEvent2 = sitAnalyticEvent;
        if (sitAnalyticEvent == null) {
            sitAnalyticEvent2 = new SitAnalyticEvent();
        }
        return Observable.create(new C19062(context, sitAnalyticEvent2));
    }

    /* renamed from: d */
    public static Observable<IamResponse> m5684d(Context context, @Nullable String str) {
        return m5683e(context, false, str);
    }

    /* renamed from: e */
    public static Observable<IamResponse> m5683e(Context context, boolean z, @Nullable String str) {
        return Observable.create(new C19041(z, context, str != null ? new SitAnalyticEvent(str) : new SitAnalyticEvent()));
    }

    /* renamed from: f */
    private static void m5682f(String str, String str2) {
        if (m5675m(str, str2)) {
            MainApplication.m7550F();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static void m5681g(SitAgentServiceConnection sitAgentServiceConnection, ObservableEmitter<IamResponse> observableEmitter, SitAnalyticEvent sitAnalyticEvent) {
        if (!sitAgentServiceConnection.m4990e()) {
            sitAnalyticEvent.m5669a(null, "0", null, null, 2);
            observableEmitter.onNext(IamResponse.ERROR);
            observableEmitter.onComplete();
            return;
        }
        try {
            if (PreferenceUtils.m5395b("PREF_CLEAR_SIT_CACHE", false)) {
                LogUtil.m5643d("IamHelper#handleMsisdnService", "Clearing SIT cache required.");
                sitAgentServiceConnection.m4991d().mo4761a();
                PreferenceUtils.m5386k("PREF_CLEAR_SIT_CACHE", false);
            } else {
                LogUtil.m5643d("IamHelper#handleMsisdnService", "Clearing SIT cache NOT required.");
            }
            String a = sitAgentServiceConnection.m4991d().mo4760b().m4999a();
            String g = PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN");
            if (!g.isEmpty() && !a.isEmpty() && !g.equals(a)) {
                LogUtil.m5632o("IamHelper#", "MSISDN changed, going to refresh account status and register with FO backend");
                TmoApiWrapper.m6620t(C1996x.f14616f, C1999y.f14619f, null);
                Context l = MainApplication.m7528l();
                if (l != null) {
                    LogUtil.m5643d("IamHelper#handleMsisdnService", "Registering with FO backend - MSISDN changed");
                    FoRegistrationHelper.m5693m(l);
                }
            }
            sitAnalyticEvent.m5669a(null, TmoUserStatus.CUSTOMER_TYPE_POSTPAID, a, null, 2);
            m5682f(g, a);
            LogUtil.m5643d("IamHelper#", "Storing new MSISDN: " + a);
            PreferenceUtils.m5383n("PREF_TMO_ACCOUNT_MSISDN", a);
            observableEmitter.onNext(IamResponse.SUCCESS);
        } catch (SitMobileDataConnectionException e) {
            LogUtil.m5641f("IamHelper#handleMsisdnService", "exception getting token", e);
            sitAnalyticEvent.m5669a(null, "0", null, null, 2);
            observableEmitter.onNext(IamResponse.ERROR_NO_NETWORK);
        } catch (Exception e2) {
            LogUtil.m5641f("IamHelper#handleMsisdnService", "exception getting token", e2);
            sitAnalyticEvent.m5669a(null, "0", null, null, 2);
            observableEmitter.onNext(IamResponse.ERROR);
        }
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public static void m5680h(SitAgentServiceConnection sitAgentServiceConnection, ObservableEmitter<IamResponse> observableEmitter, SitAnalyticEvent sitAnalyticEvent) {
        SitMobileDataConnectionException e;
        SitServerCommunicationErrorException e2;
        Exception e3;
        SessionInstanceToken c;
        long time = new Date().getTime();
        SitStateCheck p = MainApplication.m7524p();
        if (!sitAgentServiceConnection.m4990e()) {
            m5676l(time, "InvalidHelperLibrary", false, false, "", "");
            sitAnalyticEvent.m5669a("0", null, null, null, 1);
            observableEmitter.onNext(IamResponse.ERROR);
            observableEmitter.onComplete();
            p.m5341e(false, IamResponse.ERROR);
            return;
        }
        try {
            if (PreferenceUtils.m5395b("PREF_CLEAR_SIT_CACHE", false)) {
                LogUtil.m5643d("IamHelper#handleService", "Clearing SIT cache required.");
                sitAgentServiceConnection.m4991d().mo4761a();
                PreferenceUtils.m5386k("PREF_CLEAR_SIT_CACHE", false);
            } else {
                LogUtil.m5643d("IamHelper#handleService", "Clearing SIT cache NOT required.");
            }
            c = sitAgentServiceConnection.m4991d().mo4759c("cnam");
        } catch (SitMobileDataConnectionException e4) {
            e = e4;
        } catch (SitServerCommunicationErrorException e5) {
            e2 = e5;
        } catch (Exception e6) {
            e3 = e6;
        }
        try {
        } catch (SitMobileDataConnectionException e7) {
            e = e7;
            LogUtil.m5641f("IamHelper#handleService", "exception getting token", e);
            m5676l(time, SitMobileDataConnectionException.class.getSimpleName(), false, false, "", "");
            sitAnalyticEvent.m5669a("0", null, null, null, 1);
            observableEmitter.onNext(IamResponse.ERROR_NO_NETWORK);
            p.m5341e(false, IamResponse.ERROR_NO_NETWORK);
            p.m5341e(false, IamResponse.SUCCESS);
            observableEmitter.onComplete();
        } catch (SitServerCommunicationErrorException e8) {
            e2 = e8;
            LogUtil.m5641f("IamHelper#handleService", "exception getting token", e2);
            m5676l(time, SitServerCommunicationErrorException.class.getSimpleName(), false, true, e2.getSitErrorType().name(), String.valueOf(e2.getErrorCode()));
            sitAnalyticEvent.m5669a("0", null, null, String.valueOf(e2.getErrorCode()), 1);
            observableEmitter.onNext(IamResponse.ERROR);
            p.m5341e(false, IamResponse.ERROR);
            p.m5341e(false, IamResponse.SUCCESS);
            observableEmitter.onComplete();
        } catch (Exception e9) {
            e3 = e9;
            LogUtil.m5641f("IamHelper#handleService", "exception getting token", e3);
            m5676l(time, e3.getClass().getSimpleName(), false, false, "", "");
            sitAnalyticEvent.m5669a("0", null, null, null, 1);
            observableEmitter.onNext(IamResponse.ERROR);
            p.m5341e(false, IamResponse.ERROR);
            p.m5341e(false, IamResponse.SUCCESS);
            observableEmitter.onComplete();
        }
        if (!c.m4996c()) {
            LogUtil.m5631p("IamHelper#handleService", "token is invalid");
            m5676l(time, "InvalidToken", false, false, "", "");
            sitAnalyticEvent.m5669a("0", null, null, null, 1);
            observableEmitter.onNext(IamResponse.ERROR);
            observableEmitter.onComplete();
            p.m5341e(false, IamResponse.ERROR);
            return;
        }
        String a = c.m4998a();
        String b = c.m4997b();
        if (m5674n(b).before(new Date())) {
            PreferenceUtils.m5383n("PREF_SIT", "");
            observableEmitter.onNext(IamResponse.ERROR_EXPIRED);
            observableEmitter.onComplete();
            p.m5341e(false, IamResponse.ERROR_EXPIRED);
            sitAnalyticEvent.m5669a("0", null, null, null, 1);
            return;
        }
        String a2 = sitAgentServiceConnection.m4991d().mo4760b().m4999a();
        String g = PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN");
        sitAnalyticEvent.m5669a(null, TmoUserStatus.CUSTOMER_TYPE_POSTPAID, a2, null, 2);
        m5682f(g, a2);
        LogUtil.m5643d("IamHelper#", "Storing new MSISDN: " + a2);
        PreferenceUtils.m5383n("PREF_TMO_ACCOUNT_MSISDN", a2);
        PreferenceUtils.m5383n("PREF_SIT", a);
        PreferenceUtils.m5383n("PREF_SIT_EXPIRATION", b);
        LogUtil.m5632o("IamHelper#", "Got sit token: " + c.m4998a() + " expiring at " + b);
        m5676l(time, "Success", true, false, "", "");
        sitAnalyticEvent.m5669a(TmoUserStatus.CUSTOMER_TYPE_POSTPAID, null, null, null, 1);
        observableEmitter.onNext(IamResponse.SUCCESS);
        p.m5341e(false, IamResponse.SUCCESS);
        observableEmitter.onComplete();
    }

    /* renamed from: i */
    public static boolean m5679i() {
        String g = PreferenceUtils.m5390g("PREF_SIT_EXPIRATION");
        return !g.isEmpty() && m5674n(g).after(new Date());
    }

    /* renamed from: l */
    private static void m5676l(long j, String str, boolean z, boolean z2, String str2, String str3) {
        long time = new Date().getTime();
        String str4 = z ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0";
        String str5 = z2 ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0";
        AnalyticsWrapper.m5858v(j, time, str, str4, str5, str2, str3);
        MainApplication.m7553C("sit_event", new String[]{"time_start", "time_end", "result", "message", "server_error", "error_type", "error_code"}, new String[]{String.valueOf(j), String.valueOf(time), str4, str, str5, str2, str3});
        if (z2) {
            MainApplication.m7553C("sit_server_exception", new String[]{"error_type", "error_code"}, new String[]{str2, str3});
        }
    }

    /* renamed from: m */
    private static boolean m5675m(@NonNull String str, @NonNull String str2) {
        LogUtil.m5643d("IamHelper#", "Old MSISDN: " + str + " New MSISDN: " + str2);
        if (str2.isEmpty() || str.isEmpty()) {
            LogUtil.m5643d("IamHelper#", "Can't evaluate due to a blank MSISDN. Assume no change.");
            return false;
        }
        boolean z = !str2.equals(str);
        LogUtil.m5643d("IamHelper#", "MSISDN changed? " + z);
        return z;
    }

    @Nonnull
    /* renamed from: n */
    public static Date m5674n(@Nullable String str) {
        if (str == null) {
            return new Date(0L);
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        try {
            return simpleDateFormat.parse(str);
        } catch (Exception e) {
            return new Date(0L);
        }
    }
}
