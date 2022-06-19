package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.android.installreferrer.api.InstallReferrerClient;
import com.facebook.AccessToken;
import com.facebook.appevents.p031m0.C1033f;
import com.facebook.internal.AbstractC1135g0;
import com.facebook.internal.C1121b0;
import com.facebook.internal.C1137h0;
import com.facebook.internal.C1143k0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1172r0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.UUID;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import org.json.JSONException;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import p193e.p1538j.EnumC23248n0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0001\u0018�� :2\u00020\u0001:\u0001:B%\b\u0010\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB#\b��\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\nJ\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u001c\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0018\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0018\u001a\u00020\u0019J\"\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J;\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001a\u001a\u00020\u00132\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c¢\u0006\u0002\u0010\u001dJ\u001a\u0010\u001e\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u0005J.\u0010 \u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J)\u0010 \u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010%J\u0088\u0001\u0010&\u001a\u00020\u00112\b\u0010'\u001a\u0004\u0018\u00010\u00052\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010+2\b\u0010,\u001a\u0004\u0018\u00010\u00052\b\u0010-\u001a\u0004\u0018\u00010\u00052\b\u0010.\u001a\u0004\u0018\u00010\u00052\b\u0010/\u001a\u0004\u0018\u00010\u00052\b\u00100\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u00101\u001a\u0004\u0018\u00010\u00052\b\u00102\u001a\u0004\u0018\u00010\u00052\b\u00103\u001a\u0004\u0018\u00010\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u001a\u00104\u001a\u00020\u00112\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$J&\u00104\u001a\u00020\u00112\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017J,\u00104\u001a\u00020\u00112\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001a\u001a\u00020\u0013J$\u00105\u001a\u00020\u00112\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0018\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u00172\b\u00108\u001a\u0004\u0018\u00010\u0005J'\u00109\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010%R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0004\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006;"}, d2 = {"Lcom/facebook/appevents/AppEventsLoggerImpl;", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "applicationId", "", "accessToken", "Lcom/facebook/AccessToken;", "(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V", "activityName", "(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V", "accessTokenAppId", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "getApplicationId", "()Ljava/lang/String;", "contextName", "flush", "", "isValidForAccessToken", "", "logEvent", "eventName", "parameters", "Landroid/os/Bundle;", "valueToSum", "", "isImplicitlyLogged", "currentSessionId", "Ljava/util/UUID;", "(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V", "logEventFromSE", "buttonText", "logEventImplicitly", "purchaseAmount", "Ljava/math/BigDecimal;", ImpressionData.CURRENCY, "Ljava/util/Currency;", "(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V", "logProductItem", "itemID", "availability", "Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;", "condition", "Lcom/facebook/appevents/AppEventsLogger$ProductCondition;", "description", "imageLink", "link", "title", "priceAmount", "gtin", "mpn", "brand", "logPurchase", "logPurchaseImplicitly", "logPushNotificationOpen", "payload", "action", "logSdkEvent", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.x */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/x.class */
public final class C1096x {

    /* renamed from: c */
    public static final C1097a f3028c = new C1097a(null);

    /* renamed from: d */
    public static final String f3029d;

    /* renamed from: e */
    public static ScheduledThreadPoolExecutor f3030e;

    /* renamed from: f */
    public static final Object f3031f;

    /* renamed from: g */
    public static String f3032g;

    /* renamed from: h */
    public static boolean f3033h;

    /* renamed from: a */
    public final String f3034a;

    /* renamed from: b */
    public C1071p f3035b;

    @Metadata(d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0007J\u0006\u0010\"\u001a\u00020\u0019J\u0010\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0004H\u0007J\b\u0010%\u001a\u00020&H\u0007J\u0010\u0010'\u001a\u00020\u00042\u0006\u0010 \u001a\u00020!H\u0007J\b\u0010(\u001a\u00020\u0013H\u0007J\n\u0010)\u001a\u0004\u0018\u00010\u0004H\u0007J\n\u0010*\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u0010+\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010,\u001a\u00020\u0019H\u0002J\u0018\u0010-\u001a\u00020\u00192\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0002J\u0010\u00102\u001a\u00020\u00192\u0006\u00103\u001a\u00020\u0004H\u0002J\b\u00104\u001a\u00020\u0019H\u0007J\u0010\u00105\u001a\u00020\u00192\u0006\u00106\u001a\u00020\u0013H\u0007J\u0012\u00107\u001a\u00020\u00192\b\u00108\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u00109\u001a\u00020\u00192\b\u0010:\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006;"}, d2 = {"Lcom/facebook/appevents/AppEventsLoggerImpl$Companion;", "", "()V", "ACCOUNT_KIT_EVENT_NAME_PREFIX", "", "APP_EVENTS_KILLSWITCH", "APP_EVENT_NAME_PUSH_OPENED", "APP_EVENT_PREFERENCES", "APP_EVENT_PUSH_PARAMETER_ACTION", "APP_EVENT_PUSH_PARAMETER_CAMPAIGN", "APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS", "", "PUSH_PAYLOAD_CAMPAIGN_KEY", "PUSH_PAYLOAD_KEY", "TAG", "anonymousAppDeviceGUID", "backgroundExecutor", "Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "flushBehaviorField", "Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;", "isActivateAppEventRequested", "", "pushNotificationsRegistrationIdField", "staticLock", "activateApp", "", "application", "Landroid/app/Application;", "applicationId", "augmentWebView", "webView", "Landroid/webkit/WebView;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "eagerFlush", "functionDEPRECATED", "extraMsg", "getAnalyticsExecutor", "Ljava/util/concurrent/Executor;", "getAnonymousAppDeviceGUID", "getFlushBehavior", "getInstallReferrer", "getPushNotificationsRegistrationId", "initializeLib", "initializeTimersIfNeeded", "logEvent", "event", "Lcom/facebook/appevents/AppEvent;", "accessTokenAppId", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "notifyDeveloperError", "message", "onContextStop", "setFlushBehavior", "flushBehavior", "setInstallReferrer", "referrer", "setPushNotificationsRegistrationId", "registrationId", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.x$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/x$a.class */
    public static final class C1097a {

        @Metadata(d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/facebook/appevents/AppEventsLoggerImpl$Companion$getInstallReferrer$1", "Lcom/facebook/internal/InstallReferrerUtil$Callback;", "onReceiveReferrerUrl", "", "s", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* renamed from: com.facebook.appevents.x$a$a */
        /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/x$a$a.class */
        public static final class C1098a implements AbstractC1135g0 {
            @Override // com.facebook.internal.AbstractC1135g0
            /* renamed from: a */
            public void mo41735a(String str) {
                C1097a c1097a = C1096x.f3028c;
                C23228f0 c23228f0 = C23228f0.f64291a;
                C23228f0.m7354a().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("install_referrer", str).apply();
            }
        }

        public C1097a(f fVar) {
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x00c7 A[Catch: all -> 0x00e3, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00e3, blocks: (B:13:0x0068, B:32:0x00c7, B:15:0x0082, B:17:0x0089, B:22:0x00a1), top: B:54:0x0068 }] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void m41759a(com.facebook.appevents.C1096x.C1097a r5, final com.facebook.appevents.C1087r r6, final com.facebook.appevents.C1071p r7) {
            /*
                Method dump skipped, instructions count: 330
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.C1096x.C1097a.m41759a(com.facebook.appevents.x$a, com.facebook.appevents.r, com.facebook.appevents.p):void");
        }

        /* renamed from: b */
        public final EnumC1095w m41758b() {
            EnumC1095w enumC1095w;
            synchronized (C1096x.m41765c()) {
                enumC1095w = null;
                if (!C1220a.m41623b(C1096x.class)) {
                    enumC1095w = EnumC1095w.AUTO;
                }
            }
            return enumC1095w;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0056 -> B:6:0x003f). Please submit an issue!!! */
        /* renamed from: c */
        public final String m41757c() {
            C1098a c1098a = new C1098a();
            l.e(c1098a, "callback");
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (!C23228f0.m7354a().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("is_referrer_updated", false)) {
                InstallReferrerClient build = InstallReferrerClient.newBuilder(C23228f0.m7354a()).build();
                try {
                    build.startConnection(new C1137h0(build, c1098a));
                } catch (Exception e) {
                }
            }
            C23228f0 c23228f02 = C23228f0.f64291a;
            return C23228f0.m7354a().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("install_referrer", null);
        }

        /* renamed from: d */
        public final void m41756d() {
            synchronized (C1096x.m41765c()) {
                if (C1096x.m41766b() != null) {
                    return;
                }
                C1097a c1097a = C1096x.f3028c;
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
                if (!C1220a.m41623b(C1096x.class)) {
                    C1096x.f3030e = scheduledThreadPoolExecutor;
                }
                RunnableC0961h runnableC0961h = RunnableC0961h.f2651a;
                ScheduledThreadPoolExecutor m41766b = C1096x.m41766b();
                if (m41766b == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                m41766b.scheduleAtFixedRate(runnableC0961h, 0L, 86400L, TimeUnit.SECONDS);
            }
        }
    }

    static {
        String canonicalName = C1096x.class.getCanonicalName();
        String str = canonicalName;
        if (canonicalName == null) {
            str = "com.facebook.appevents.AppEventsLoggerImpl";
        }
        f3029d = str;
        f3031f = new Object();
    }

    public C1096x(Context context, String str, AccessToken accessToken) {
        this(C1168q0.m41671l(context), str, accessToken);
    }

    public C1096x(String str, String str2, AccessToken accessToken) {
        l.e(str, "activityName");
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41649f();
        this.f3034a = str;
        AccessToken accessToken2 = accessToken;
        if (accessToken == null) {
            AccessToken.C0907c c0907c = AccessToken.f2460l;
            accessToken2 = AccessToken.C0907c.m42030b();
        }
        if (accessToken2 == null || accessToken2.m42035a() || (str2 != null && !l.a(str2, accessToken2.f2472h))) {
            String str3 = str2;
            if (str2 == null) {
                C23228f0 c23228f0 = C23228f0.f64291a;
                str3 = C1168q0.m41665r(C23228f0.m7354a());
            }
            this.f3035b = new C1071p(null, str3);
        } else {
            l.e(accessToken2, "accessToken");
            String str4 = accessToken2.f2469e;
            C23228f0 c23228f02 = C23228f0.f64291a;
            this.f3035b = new C1071p(str4, C23228f0.m7353b());
        }
        synchronized (m41765c()) {
            if (m41766b() != null) {
                return;
            }
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
            if (!C1220a.m41623b(C1096x.class)) {
                f3030e = scheduledThreadPoolExecutor;
            }
            RunnableC0961h runnableC0961h = RunnableC0961h.f2651a;
            ScheduledThreadPoolExecutor m41766b = m41766b();
            if (m41766b == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            m41766b.scheduleAtFixedRate(runnableC0961h, 0L, 86400L, TimeUnit.SECONDS);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ String m41767a() {
        if (C1220a.m41623b(C1096x.class)) {
            return null;
        }
        try {
            return f3032g;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1096x.class);
            return null;
        }
    }

    /* renamed from: b */
    public static final /* synthetic */ ScheduledThreadPoolExecutor m41766b() {
        if (C1220a.m41623b(C1096x.class)) {
            return null;
        }
        try {
            return f3030e;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1096x.class);
            return null;
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ Object m41765c() {
        if (C1220a.m41623b(C1096x.class)) {
            return null;
        }
        try {
            return f3031f;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1096x.class);
            return null;
        }
    }

    /* renamed from: d */
    public final void m41764d() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C1091t c1091t = C1091t.f3016a;
            C1091t.m41776c(EnumC0947a0.EXPLICIT);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: e */
    public final void m41763e(String str, Bundle bundle) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C1033f c1033f = C1033f.f2846a;
            m41762f(str, null, bundle, false, C1033f.m41870b());
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: f */
    public final void m41762f(String str, Double d, Bundle bundle, boolean z, UUID uuid) {
        EnumC23248n0 enumC23248n0 = EnumC23248n0.APP_EVENTS;
        if (!C1220a.m41623b(this) && str != null) {
            try {
                if (str.length() == 0) {
                    return;
                }
                C1121b0 c1121b0 = C1121b0.f3084a;
                C23228f0 c23228f0 = C23228f0.f64291a;
                if (C1121b0.m41748b("app_events_killswitch", C23228f0.m7353b(), false)) {
                    C1143k0.f3139e.m41728c(enumC23248n0, "AppEvents", "KillSwitch is enabled and fail to log app event: %s", str);
                    return;
                }
                try {
                    String str2 = this.f3034a;
                    C1033f c1033f = C1033f.f2846a;
                    C1097a.m41759a(f3028c, new C1087r(str2, str, d, bundle, z, C1033f.f2856k == 0, uuid), this.f3035b);
                } catch (C23222c0 e) {
                    C1143k0.f3139e.m41728c(enumC23248n0, "AppEvents", "Invalid app event: %s", e.toString());
                } catch (JSONException e2) {
                    C1143k0.f3139e.m41728c(enumC23248n0, "AppEvents", "JSON encoding for app event failed: '%s'", e2.toString());
                }
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
            }
        }
    }

    /* renamed from: g */
    public final void m41761g(String str, Double d, Bundle bundle) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C1033f c1033f = C1033f.f2846a;
            m41762f(str, d, bundle, true, C1033f.m41870b());
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: h */
    public final void m41760h(BigDecimal bigDecimal, Currency currency, Bundle bundle, boolean z) {
        EnumC1095w enumC1095w;
        EnumC23248n0 enumC23248n0 = EnumC23248n0.DEVELOPER_ERRORS;
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            if (bigDecimal == null) {
                C1143k0.f3139e.m41729b(enumC23248n0, "AppEvents", "purchaseAmount cannot be null");
            } else if (currency == null) {
                C1143k0.f3139e.m41729b(enumC23248n0, "AppEvents", "currency cannot be null");
            } else {
                Bundle bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                }
                bundle2.putString("fb_currency", currency.getCurrencyCode());
                double doubleValue = bigDecimal.doubleValue();
                C1033f c1033f = C1033f.f2846a;
                m41762f("fb_mobile_purchase", Double.valueOf(doubleValue), bundle2, z, C1033f.m41870b());
                synchronized (m41765c()) {
                    enumC1095w = null;
                    if (!C1220a.m41623b(C1096x.class)) {
                        try {
                            enumC1095w = EnumC1095w.AUTO;
                        } catch (Throwable th) {
                            C1220a.m41624a(th, C1096x.class);
                        }
                    }
                }
                if (enumC1095w == EnumC1095w.EXPLICIT_ONLY) {
                    return;
                }
                C1091t c1091t = C1091t.f3016a;
                C1091t.m41776c(EnumC0947a0.EAGER_FLUSHING_EVENT);
            }
        } catch (Throwable th2) {
            C1220a.m41624a(th2, this);
        }
    }
}
