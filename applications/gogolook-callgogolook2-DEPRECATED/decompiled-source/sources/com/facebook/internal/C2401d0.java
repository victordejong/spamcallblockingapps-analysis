package com.facebook.internal;

import android.os.Bundle;
import java.util.Collection;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
import p081h.p154f.EnumC6151v;
/* renamed from: com.facebook.internal.d0 */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/d0.class */
public final class C2401d0 {

    /* renamed from: a */
    public static final String f2987a = "com.facebook.internal.d0";

    /* renamed from: b */
    public static final Collection<String> f2988b = C2408g0.m34826b("service_disabled", "AndroidAuthKillSwitchException");

    /* renamed from: c */
    public static final Collection<String> f2989c = C2408g0.m34826b("access_denied", "OAuthAccessDeniedException");

    /* renamed from: a */
    public static Bundle m34898a(String str, int i, Bundle bundle) {
        Bundle bundle2;
        JSONObject a;
        JSONObject a2;
        String a3 = C6135n.m23760a(C6135n.m23746e());
        if (C2408g0.m34816d(a3)) {
            return null;
        }
        Bundle bundle3 = new Bundle();
        bundle3.putString("android_key_hash", a3);
        bundle3.putString("app_id", C6135n.m23745f());
        bundle3.putInt("version", i);
        bundle3.putString("display", "touch");
        Bundle bundle4 = new Bundle();
        bundle4.putString("action_id", str);
        Bundle bundle5 = bundle;
        if (bundle == null) {
            bundle5 = new Bundle();
        }
        try {
            a = C2388c.m34910a(bundle4);
            a2 = C2388c.m34910a(bundle5);
        } catch (JSONException e) {
            EnumC6151v vVar = EnumC6151v.DEVELOPER_ERRORS;
            String str2 = f2987a;
            C2503y.m34559a(vVar, 6, str2, "Error creating Url -- " + e);
            bundle2 = null;
        }
        if (a == null || a2 == null) {
            return null;
        }
        bundle3.putString("bridge_args", a.toString());
        bundle3.putString("method_args", a2.toString());
        bundle2 = bundle3;
        return bundle2;
    }

    /* renamed from: a */
    public static final String m34899a() {
        return "v5.0";
    }

    /* renamed from: b */
    public static final String m34897b() {
        return String.format("m.%s", C6135n.m23736o());
    }

    /* renamed from: c */
    public static final String m34896c() {
        return String.format("https://graph.%s", C6135n.m23736o());
    }

    /* renamed from: d */
    public static final String m34895d() {
        return String.format("https://graph-video.%s", C6135n.m23736o());
    }
}
