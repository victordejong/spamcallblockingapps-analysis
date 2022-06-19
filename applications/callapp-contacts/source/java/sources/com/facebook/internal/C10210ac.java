package com.facebook.internal;

import com.facebook.C10181g;
import java.util.Arrays;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b,\n\u0002\u0010\u001e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u00108\u001a\u00020\u0004H\u0007J\b\u00109\u001a\u00020\u0004H\u0007J\b\u0010:\u001a\u00020\u0004H\u0007J\b\u0010;\u001a\u00020\u0004H\u0007J$\u0010<\u001a\u0004\u0018\u00010=2\u0006\u0010>\u001a\u00020\u00042\u0006\u0010?\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u00010=H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010)\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010*\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010,\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u000e\n��\u0012\u0004\b-\u0010\u0002\u001a\u0004\b.\u0010/R\"\u00100\u001a\b\u0012\u0004\u0012\u00020\u0004018\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b2\u0010\u0002\u001a\u0004\b3\u00104R\"\u00105\u001a\b\u0012\u0004\u0012\u00020\u0004018\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b6\u0010\u0002\u001a\u0004\b7\u00104¨\u0006B"}, m4298d2 = {"Lcom/facebook/internal/ServerProtocol;", "", "()V", "DIALOG_AUTHORITY_FORMAT", "", "DIALOG_CANCEL_URI", "DIALOG_PARAM_ACCESS_TOKEN", "DIALOG_PARAM_APP_ID", "DIALOG_PARAM_AUTH_TYPE", "DIALOG_PARAM_CBT", "DIALOG_PARAM_CCT_OVER_LOGGED_OUT_APP_SWITCH", "DIALOG_PARAM_CLIENT_ID", "DIALOG_PARAM_CUSTOM_TABS_PREFETCHING", "DIALOG_PARAM_DEFAULT_AUDIENCE", "DIALOG_PARAM_DISPLAY", "DIALOG_PARAM_DISPLAY_TOUCH", "DIALOG_PARAM_E2E", "DIALOG_PARAM_FAIL_ON_LOGGED_OUT", "DIALOG_PARAM_IES", "DIALOG_PARAM_LEGACY_OVERRIDE", "DIALOG_PARAM_LOGIN_BEHAVIOR", "DIALOG_PARAM_REDIRECT_URI", "DIALOG_PARAM_RESPONSE_TYPE", "DIALOG_PARAM_RETURN_SCOPES", "DIALOG_PARAM_SCOPE", "DIALOG_PARAM_SDK_VERSION", "DIALOG_PARAM_SSO_DEVICE", "DIALOG_PARAM_STATE", "DIALOG_PATH", "DIALOG_REDIRECT_CHROME_OS_URI", "DIALOG_REDIRECT_URI", "DIALOG_REREQUEST_AUTH_TYPE", "DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST", "DIALOG_RETURN_SCOPES_TRUE", "FALLBACK_DIALOG_DISPLAY_VALUE_TOUCH", "FALLBACK_DIALOG_PARAM_APP_ID", "FALLBACK_DIALOG_PARAM_BRIDGE_ARGS", "FALLBACK_DIALOG_PARAM_KEY_HASH", "FALLBACK_DIALOG_PARAM_METHOD_ARGS", "FALLBACK_DIALOG_PARAM_METHOD_RESULTS", "FALLBACK_DIALOG_PARAM_VERSION", "GRAPH_URL_FORMAT", "GRAPH_VIDEO_URL_FORMAT", "TAG", "errorConnectionFailure", "getErrorConnectionFailure$annotations", "getErrorConnectionFailure", "()Ljava/lang/String;", "errorsProxyAuthDisabled", "", "getErrorsProxyAuthDisabled$annotations", "getErrorsProxyAuthDisabled", "()Ljava/util/Collection;", "errorsUserCanceled", "getErrorsUserCanceled$annotations", "getErrorsUserCanceled", "getDefaultAPIVersion", "getDialogAuthority", "getGraphUrlBase", "getGraphVideoUrlBase", "getQueryParamsForPlatformActivityIntentWebFallback", "Landroid/os/Bundle;", "callId", "version", "", "methodArgs", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.ac */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/ac.class */
public final class C10210ac {

    /* renamed from: b */
    private static final String f33655b;

    /* renamed from: a */
    public static final C10210ac f33654a = new C10210ac();

    /* renamed from: c */
    private static final Collection<String> f33656c = C10213ae.m23213a("service_disabled", "AndroidAuthKillSwitchException");

    /* renamed from: d */
    private static final Collection<String> f33657d = C10213ae.m23213a("access_denied", "OAuthAccessDeniedException");

    /* renamed from: e */
    private static final String f33658e = "CONNECTION_FAILURE";

    static {
        String name = C10210ac.class.getName();
        C18524p.m3843b(name, "ServerProtocol::class.java.name");
        f33655b = name;
    }

    private C10210ac() {
    }

    /* renamed from: a */
    public static final String m23258a() {
        return "v9.0";
    }

    /* renamed from: b */
    public static final Collection<String> m23257b() {
        return f33656c;
    }

    /* renamed from: c */
    public static final Collection<String> m23256c() {
        return f33657d;
    }

    /* renamed from: d */
    public static final String m23255d() {
        return f33658e;
    }

    /* renamed from: e */
    public static final String m23254e() {
        C18500ag c18500ag = C18500ag.f63594a;
        String format = String.format("m.%s", Arrays.copyOf(new Object[]{C10181g.m23292g()}, 1));
        C18524p.m3843b(format, "java.lang.String.format(format, *args)");
        return format;
    }

    /* renamed from: f */
    public static final String m23253f() {
        C18500ag c18500ag = C18500ag.f63594a;
        String format = String.format("https://graph.%s", Arrays.copyOf(new Object[]{C10181g.m23291h()}, 1));
        C18524p.m3843b(format, "java.lang.String.format(format, *args)");
        return format;
    }

    /* renamed from: g */
    public static final String m23252g() {
        C18500ag c18500ag = C18500ag.f63594a;
        String format = String.format("https://graph-video.%s", Arrays.copyOf(new Object[]{C10181g.m23291h()}, 1));
        C18524p.m3843b(format, "java.lang.String.format(format, *args)");
        return format;
    }
}
