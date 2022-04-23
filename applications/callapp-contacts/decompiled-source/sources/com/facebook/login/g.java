package com.facebook.login;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.browser.customtabs.c;
import com.facebook.AccessToken;
import com.facebook.FacebookActivity;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookException;
import com.facebook.Profile;
import com.facebook.f;
import com.facebook.internal.af;
import com.facebook.internal.e;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/g.class */
public class g {

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f20082d = Collections.unmodifiableSet(new HashSet<String>() { // from class: com.facebook.login.g.2
        {
            add("ads_management");
            add("create_event");
            add("rsvp_event");
        }
    });
    private static volatile g e;

    /* renamed from: a  reason: collision with root package name */
    public d f20083a = d.NATIVE_WITH_FALLBACK;

    /* renamed from: b  reason: collision with root package name */
    public com.facebook.login.b f20084b = com.facebook.login.b.FRIENDS;

    /* renamed from: c  reason: collision with root package name */
    public String f20085c = "rerequest";
    private final SharedPreferences f = com.facebook.g.i().getSharedPreferences("com.facebook.loginManager", 0);

    /* loaded from: classes3-dex2jar.jar:com/facebook/login/g$a.class */
    public static final class a implements i {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f20089a;

        public a(Activity activity) {
            af.a((Object) activity, "activity");
            this.f20089a = activity;
        }

        @Override // com.facebook.login.i
        public final Activity a() {
            return this.f20089a;
        }

        @Override // com.facebook.login.i
        public final void a(Intent intent, int i) {
            this.f20089a.startActivityForResult(intent, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/login/g$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private static f f20090a;

        private b() {
        }

        static f a(Context context) {
            synchronized (b.class) {
                if (context == null) {
                    try {
                        context = com.facebook.g.i();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (context == null) {
                    return null;
                }
                if (f20090a == null) {
                    f20090a = new f(context, com.facebook.g.m());
                }
                return f20090a;
            }
        }
    }

    g() {
        af.a();
        if (com.facebook.g.f19779a && e.a() != null) {
            c.a(com.facebook.g.i(), "com.android.chrome", new com.facebook.login.a());
            c.a(com.facebook.g.i(), com.facebook.g.i().getPackageName());
        }
    }

    public static g a() {
        if (e == null) {
            synchronized (g.class) {
                try {
                    if (e == null) {
                        e = new g();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public static void a(Context context, LoginClient.Request request) {
        f a2 = b.a(context);
        if (a2 != null && request != null) {
            a2.a(request);
        }
    }

    public static void a(Context context, LoginClient.Result.a aVar, Map<String, String> map, Exception exc, boolean z, LoginClient.Request request) {
        f a2 = b.a(context);
        if (a2 != null) {
            if (request == null) {
                a2.a("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("try_login_activity", z ? "1" : "0");
            a2.a(request.getAuthId(), hashMap, aVar, map, exc);
        }
    }

    public static void a(Collection<String> collection) {
        if (collection != null) {
            for (String str : collection) {
                if (a(str)) {
                    throw new FacebookException(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", str));
                }
            }
        }
    }

    public static boolean a(i iVar, LoginClient.Request request) {
        Intent intent = new Intent();
        intent.setClass(com.facebook.g.i(), FacebookActivity.class);
        intent.setAction(request.getLoginBehavior().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable("request", request);
        intent.putExtra("com.facebook.LoginFragment:Request", bundle);
        if (!(com.facebook.g.i().getPackageManager().resolveActivity(intent, 0) != null)) {
            return false;
        }
        try {
            iVar.a(intent, LoginClient.getLoginRequestCode());
            return true;
        } catch (ActivityNotFoundException e2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        if (str != null) {
            return str.startsWith("publish") || str.startsWith("manage") || f20082d.contains(str);
        }
        return false;
    }

    public final void a(boolean z) {
        SharedPreferences.Editor edit = this.f.edit();
        edit.putBoolean("express_login_allowed", z);
        edit.apply();
    }

    final boolean a(int i, Intent intent, f<h> fVar) {
        LoginClient.Request request;
        AccessToken accessToken;
        Map<String, String> map;
        FacebookAuthorizationException facebookAuthorizationException;
        boolean z;
        LoginClient.Result.a aVar = LoginClient.Result.a.ERROR;
        h hVar = null;
        if (intent != null) {
            LoginClient.Result result = (LoginClient.Result) intent.getParcelableExtra("com.facebook.LoginFragment:Result");
            if (result != null) {
                request = result.request;
                aVar = result.code;
                if (i == -1) {
                    if (result.code == LoginClient.Result.a.SUCCESS) {
                        accessToken = result.token;
                        facebookAuthorizationException = null;
                    } else {
                        facebookAuthorizationException = new FacebookAuthorizationException(result.errorMessage);
                        accessToken = null;
                    }
                } else if (i == 0) {
                    facebookAuthorizationException = null;
                    accessToken = null;
                    z = true;
                    map = result.loggingExtras;
                } else {
                    facebookAuthorizationException = null;
                    accessToken = null;
                }
                z = false;
                map = result.loggingExtras;
            } else {
                facebookAuthorizationException = null;
                map = null;
                request = null;
                accessToken = null;
                z = false;
            }
        } else if (i == 0) {
            aVar = LoginClient.Result.a.CANCEL;
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
        FacebookException facebookException = facebookAuthorizationException;
        if (facebookAuthorizationException == null) {
            facebookException = facebookAuthorizationException;
            if (accessToken == null) {
                facebookException = facebookAuthorizationException;
                if (!z) {
                    facebookException = new FacebookException("Unexpected call to LoginManager.onActivityResult");
                }
            }
        }
        a(null, aVar, map, facebookException, true, request);
        if (accessToken != null) {
            AccessToken.setCurrentAccessToken(accessToken);
            Profile.fetchProfileForCurrentAccessToken();
        }
        if (fVar == null) {
            return true;
        }
        if (accessToken != null) {
            Set<String> permissions = request.getPermissions();
            HashSet hashSet = new HashSet(accessToken.getPermissions());
            if (request.isRerequest()) {
                hashSet.retainAll(permissions);
            }
            HashSet hashSet2 = new HashSet(permissions);
            hashSet2.removeAll(hashSet);
            hVar = new h(accessToken, hashSet, hashSet2);
        }
        if (z || (hVar != null && hVar.f20091a.size() == 0)) {
            fVar.c();
            return true;
        } else if (facebookException != null) {
            fVar.k();
            return true;
        } else if (accessToken == null) {
            return true;
        } else {
            a(true);
            fVar.l();
            return true;
        }
    }
}
