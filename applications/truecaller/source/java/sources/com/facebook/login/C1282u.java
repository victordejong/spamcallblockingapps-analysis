package com.facebook.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.appevents.C0953d0;
import com.facebook.appevents.C1096x;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.SupportMessenger;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018�� (2\u00020\u0001:\u0001(B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J`\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0018\u0010\u0013\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0007J(\u0010\u0016\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0007J(\u0010\u0017\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0007J\\\u0010\u0018\u001a\u00020\r2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00052\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00142\b\u0010\u0010\u001a\u0004\u0018\u00010\u001a2\u0014\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00142\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010\u001e\u001a\u00020\r2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010\u001f\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010!\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010\u0005J\u0010\u0010\"\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010\u0005J\u0010\u0010#\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010\u0005J\u001c\u0010$\u001a\u00020\r2\u0006\u0010%\u001a\u00020&2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0007J(\u0010'\u001a\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0007R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��¨\u0006)"}, d2 = {"Lcom/facebook/login/LoginLogger;", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "applicationId", "", "(Landroid/content/Context;Ljava/lang/String;)V", "getApplicationId", "()Ljava/lang/String;", "facebookVersion", "logger", "Lcom/facebook/appevents/InternalAppEventsLogger;", "logAuthorizationMethodComplete", "", "authId", AnalyticsConstants.METHOD, "result", "errorMessage", "errorCode", "loggingExtras", "", "eventName", "logAuthorizationMethodNotTried", "logAuthorizationMethodStart", "logCompleteLogin", "loginRequestId", "Lcom/facebook/login/LoginClient$Result$Code;", "resultExtras", "exception", "Ljava/lang/Exception;", "logHeartbeatEvent", "logLoginStatusError", "loggerRef", "logLoginStatusFailure", "logLoginStatusStart", "logLoginStatusSuccess", "logStartLogin", "pendingLoginRequest", "Lcom/facebook/login/LoginClient$Request;", "logUnexpectedError", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.login.u */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/u.class */
public final class C1282u {

    /* renamed from: d */
    public static final C1283a f3493d = new C1283a(null);

    /* renamed from: e */
    public static final ScheduledExecutorService f3494e = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: a */
    public final String f3495a;

    /* renamed from: b */
    public final C0953d0 f3496b;

    /* renamed from: c */
    public String f3497c;

    @Metadata(d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0016\u0010(\u001a\n **\u0004\u0018\u00010)0)X\u0082\u0004¢\u0006\u0002\n��¨\u0006."}, d2 = {"Lcom/facebook/login/LoginLogger$Companion;", "", "()V", "EVENT_EXTRAS_DEFAULT_AUDIENCE", "", "EVENT_EXTRAS_FACEBOOK_VERSION", "EVENT_EXTRAS_FAILURE", "EVENT_EXTRAS_IS_REAUTHORIZE", "EVENT_EXTRAS_LOGIN_BEHAVIOR", "EVENT_EXTRAS_MISSING_INTERNET_PERMISSION", "EVENT_EXTRAS_NEW_PERMISSIONS", "EVENT_EXTRAS_NOT_TRIED", "EVENT_EXTRAS_PERMISSIONS", "EVENT_EXTRAS_REQUEST_CODE", "EVENT_EXTRAS_TARGET_APP", "EVENT_EXTRAS_TRY_LOGIN_ACTIVITY", "EVENT_NAME_FOA_LOGIN_COMPLETE", "EVENT_NAME_FOA_LOGIN_METHOD_COMPLETE", "EVENT_NAME_FOA_LOGIN_METHOD_NOT_TRIED", "EVENT_NAME_FOA_LOGIN_METHOD_START", "EVENT_NAME_FOA_LOGIN_START", "EVENT_NAME_LOGIN_COMPLETE", "EVENT_NAME_LOGIN_HEARTBEAT", "EVENT_NAME_LOGIN_METHOD_COMPLETE", "EVENT_NAME_LOGIN_METHOD_NOT_TRIED", "EVENT_NAME_LOGIN_METHOD_START", "EVENT_NAME_LOGIN_START", "EVENT_NAME_LOGIN_STATUS_COMPLETE", "EVENT_NAME_LOGIN_STATUS_START", "EVENT_PARAM_AUTH_LOGGER_ID", "EVENT_PARAM_CHALLENGE", "EVENT_PARAM_ERROR_CODE", "EVENT_PARAM_ERROR_MESSAGE", "EVENT_PARAM_EXTRAS", "EVENT_PARAM_FOA_METHOD_RESULT_SKIPPED", "EVENT_PARAM_LOGIN_RESULT", "EVENT_PARAM_METHOD", "EVENT_PARAM_METHOD_RESULT_SKIPPED", "EVENT_PARAM_TIMESTAMP", "FACEBOOK_PACKAGE_NAME", "worker", "Ljava/util/concurrent/ScheduledExecutorService;", "kotlin.jvm.PlatformType", "newAuthorizationLoggingBundle", "Landroid/os/Bundle;", "authLoggerId", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.u$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/u$a.class */
    public static final class C1283a {
        public C1283a(f fVar) {
        }
    }

    public C1282u(Context context, String str) {
        PackageInfo packageInfo;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "applicationId");
        this.f3495a = str;
        this.f3496b = new C0953d0(new C1096x(context, str, (AccessToken) null));
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (packageInfo = packageManager.getPackageInfo(SupportMessenger.FACEBOOK, 0)) == null) {
                return;
            }
            this.f3497c = packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* renamed from: a */
    public final void m41553a(String str) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            final Bundle bundle = new Bundle();
            bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
            bundle.putString("0_auth_logger_id", str);
            bundle.putString("3_method", "");
            bundle.putString("2_result", "");
            bundle.putString("5_error_message", "");
            bundle.putString("4_error_code", "");
            bundle.putString("6_extras", "");
            f3494e.schedule(new Runnable() { // from class: com.facebook.login.d
                @Override // java.lang.Runnable
                public final void run() {
                    C1282u c1282u = C1282u.this;
                    Bundle bundle2 = bundle;
                    if (C1220a.m41623b(C1282u.class)) {
                        return;
                    }
                    try {
                        l.e(c1282u, "this$0");
                        l.e(bundle2, "$bundle");
                        c1282u.f3496b.m41978a("fb_mobile_login_heartbeat", bundle2);
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C1282u.class);
                    }
                }
            }, 5L, TimeUnit.SECONDS);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: b */
    public final void m41552b(String str, String str2, String str3) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
            bundle.putString("0_auth_logger_id", "");
            bundle.putString("3_method", "");
            bundle.putString("2_result", "");
            bundle.putString("5_error_message", "");
            bundle.putString("4_error_code", "");
            bundle.putString("6_extras", "");
            bundle.putString("2_result", "error");
            bundle.putString("5_error_message", str2);
            bundle.putString("3_method", str3);
            this.f3496b.m41978a(str, bundle);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
