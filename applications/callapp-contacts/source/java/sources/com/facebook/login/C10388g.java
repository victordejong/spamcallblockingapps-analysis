package com.facebook.login;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.browser.customtabs.C0450c;
import com.facebook.AbstractC10180f;
import com.facebook.AccessToken;
import com.facebook.C10181g;
import com.facebook.FacebookActivity;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookException;
import com.facebook.Profile;
import com.facebook.internal.C10218af;
import com.facebook.internal.C10280e;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.facebook.login.g */
/* loaded from: classes3-dex2jar.jar:com/facebook/login/g.class */
public class C10388g {

    /* renamed from: d */
    private static final Set<String> f34020d = Collections.unmodifiableSet(new HashSet<String>() { // from class: com.facebook.login.g.2
        {
            add("ads_management");
            add("create_event");
            add("rsvp_event");
        }
    });

    /* renamed from: e */
    private static volatile C10388g f34021e;

    /* renamed from: a */
    public EnumC10382d f34022a = EnumC10382d.NATIVE_WITH_FALLBACK;

    /* renamed from: b */
    public EnumC10380b f34023b = EnumC10380b.FRIENDS;

    /* renamed from: c */
    public String f34024c = "rerequest";

    /* renamed from: f */
    private final SharedPreferences f34025f = C10181g.m23290i().getSharedPreferences("com.facebook.loginManager", 0);

    /* renamed from: com.facebook.login.g$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/login/g$a.class */
    public static final class C10392a implements AbstractC10395i {

        /* renamed from: a */
        private final Activity f34029a;

        public C10392a(Activity activity) {
            C10218af.m23179a((Object) activity, "activity");
            this.f34029a = activity;
        }

        @Override // com.facebook.login.AbstractC10395i
        /* renamed from: a */
        public final Activity mo22875a() {
            return this.f34029a;
        }

        @Override // com.facebook.login.AbstractC10395i
        /* renamed from: a */
        public final void mo22874a(Intent intent, int i) {
            this.f34029a.startActivityForResult(intent, i);
        }
    }

    /* renamed from: com.facebook.login.g$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/login/g$b.class */
    public static final class C10393b {

        /* renamed from: a */
        private static C10386f f34030a;

        private C10393b() {
        }

        /* renamed from: a */
        static C10386f m22876a(Context context) {
            synchronized (C10393b.class) {
                if (context == null) {
                    try {
                        context = C10181g.m23290i();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (context == null) {
                    return null;
                }
                if (f34030a == null) {
                    f34030a = new C10386f(context, C10181g.m23286m());
                }
                return f34030a;
            }
        }
    }

    C10388g() {
        C10218af.m23182a();
        if (!C10181g.f33597a || C10280e.m23068a() == null) {
            return;
        }
        C0450c.m45476a(C10181g.m23290i(), "com.android.chrome", new C10379a());
        C0450c.m45477a(C10181g.m23290i(), C10181g.m23290i().getPackageName());
    }

    /* renamed from: a */
    public static C10388g m22884a() {
        if (f34021e == null) {
            synchronized (C10388g.class) {
                try {
                    if (f34021e == null) {
                        f34021e = new C10388g();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f34021e;
    }

    /* renamed from: a */
    public static void m22882a(Context context, LoginClient.Request request) {
        C10386f m22876a = C10393b.m22876a(context);
        if (m22876a == null || request == null) {
            return;
        }
        m22876a.m22890a(request);
    }

    /* renamed from: a */
    public static void m22881a(Context context, LoginClient.Result.EnumC10373a enumC10373a, Map<String, String> map, Exception exc, boolean z, LoginClient.Request request) {
        C10386f m22876a = C10393b.m22876a(context);
        if (m22876a == null) {
            return;
        }
        if (request == null) {
            m22876a.m22887a("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("try_login_activity", z ? "1" : "0");
        m22876a.m22885a(request.getAuthId(), hashMap, enumC10373a, map, exc);
    }

    /* renamed from: a */
    public static void m22878a(Collection<String> collection) {
        if (collection == null) {
            return;
        }
        for (String str : collection) {
            if (m22879a(str)) {
                throw new FacebookException(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", str));
            }
        }
    }

    /* renamed from: a */
    public static boolean m22880a(AbstractC10395i abstractC10395i, LoginClient.Request request) {
        Intent intent = new Intent();
        intent.setClass(C10181g.m23290i(), FacebookActivity.class);
        intent.setAction(request.getLoginBehavior().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable("request", request);
        intent.putExtra("com.facebook.LoginFragment:Request", bundle);
        if (!(C10181g.m23290i().getPackageManager().resolveActivity(intent, 0) != null)) {
            return false;
        }
        try {
            abstractC10395i.mo22874a(intent, LoginClient.getLoginRequestCode());
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m22879a(String str) {
        if (str != null) {
            return str.startsWith("publish") || str.startsWith("manage") || f34020d.contains(str);
        }
        return false;
    }

    /* renamed from: a */
    public final void m22877a(boolean z) {
        SharedPreferences.Editor edit = this.f34025f.edit();
        edit.putBoolean("express_login_allowed", z);
        edit.apply();
    }

    /* renamed from: a */
    final boolean m22883a(int i, Intent intent, AbstractC10180f<C10394h> abstractC10180f) {
        LoginClient.Request request;
        AccessToken accessToken;
        Map<String, String> map;
        FacebookAuthorizationException facebookAuthorizationException;
        boolean z;
        Map<String, String> map2;
        LoginClient.Request request2;
        AccessToken accessToken2;
        FacebookAuthorizationException facebookAuthorizationException2;
        AccessToken accessToken3;
        LoginClient.Result.EnumC10373a enumC10373a = LoginClient.Result.EnumC10373a.ERROR;
        if (intent != null) {
            LoginClient.Result result = (LoginClient.Result) intent.getParcelableExtra("com.facebook.LoginFragment:Result");
            if (result != null) {
                request2 = result.request;
                enumC10373a = result.code;
                if (i == -1) {
                    if (result.code == LoginClient.Result.EnumC10373a.SUCCESS) {
                        accessToken3 = result.token;
                        facebookAuthorizationException2 = null;
                    } else {
                        facebookAuthorizationException2 = new FacebookAuthorizationException(result.errorMessage);
                        accessToken3 = null;
                    }
                } else if (i == 0) {
                    facebookAuthorizationException2 = null;
                    accessToken3 = null;
                    z = true;
                    accessToken2 = accessToken3;
                    facebookAuthorizationException = facebookAuthorizationException2;
                    map2 = result.loggingExtras;
                } else {
                    facebookAuthorizationException2 = null;
                    accessToken3 = null;
                }
                z = false;
                accessToken2 = accessToken3;
                facebookAuthorizationException = facebookAuthorizationException2;
                map2 = result.loggingExtras;
            } else {
                facebookAuthorizationException = null;
                map2 = null;
                request2 = null;
                accessToken2 = null;
                z = false;
            }
            AccessToken accessToken4 = accessToken2;
            map = map2;
            request = request2;
            accessToken = accessToken4;
        } else if (i == 0) {
            enumC10373a = LoginClient.Result.EnumC10373a.CANCEL;
            facebookAuthorizationException = null;
            request = null;
            map = null;
            accessToken = null;
            z = true;
        } else {
            facebookAuthorizationException = null;
            request = null;
            map = null;
            accessToken = null;
            z = false;
        }
        FacebookAuthorizationException facebookAuthorizationException3 = facebookAuthorizationException;
        if (facebookAuthorizationException == null) {
            facebookAuthorizationException3 = facebookAuthorizationException;
            if (accessToken == null) {
                facebookAuthorizationException3 = facebookAuthorizationException;
                if (!z) {
                    facebookAuthorizationException3 = new FacebookException("Unexpected call to LoginManager.onActivityResult");
                }
            }
        }
        m22881a(null, enumC10373a, map, facebookAuthorizationException3, true, request);
        if (accessToken != null) {
            AccessToken.setCurrentAccessToken(accessToken);
            Profile.fetchProfileForCurrentAccessToken();
        }
        if (abstractC10180f != null) {
            C10394h c10394h = null;
            if (accessToken != null) {
                Set<String> permissions = request.getPermissions();
                HashSet hashSet = new HashSet(accessToken.getPermissions());
                if (request.isRerequest()) {
                    hashSet.retainAll(permissions);
                }
                HashSet hashSet2 = new HashSet(permissions);
                hashSet2.removeAll(hashSet);
                c10394h = new C10394h(accessToken, hashSet, hashSet2);
            }
            if (z || (c10394h != null && c10394h.f34031a.size() == 0)) {
                abstractC10180f.m23309c();
                return true;
            } else if (facebookAuthorizationException3 != null) {
                abstractC10180f.mo23308k();
                return true;
            } else if (accessToken == null) {
                return true;
            } else {
                m22877a(true);
                abstractC10180f.mo23307l();
                return true;
            }
        }
        return true;
    }
}
