package p000;

import android.os.Bundle;
import java.util.Collection;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: cn0 */
/* loaded from: classes-dex2jar.jar:cn0.class */
public final class cn0 {

    /* renamed from: a */
    public static final String f2397a = "cn0";

    /* renamed from: b */
    public static final Collection<String> f2398b = fn0.w0(new String[]{"service_disabled", "AndroidAuthKillSwitchException"});

    /* renamed from: c */
    public static final Collection<String> f2399c = fn0.w0(new String[]{"access_denied", "OAuthAccessDeniedException"});

    /* renamed from: a */
    public static final String m5291a() {
        return "v5.0";
    }

    /* renamed from: b */
    public static final String m5290b() {
        return String.format("m.%s", ui0.p());
    }

    /* renamed from: c */
    public static final String m5289c() {
        return String.format("https://graph.%s", ui0.p());
    }

    /* renamed from: d */
    public static final String m5288d() {
        return String.format("https://graph-video.%s", ui0.p());
    }

    /* renamed from: e */
    public static Bundle m5287e(String str, int i, Bundle bundle) {
        Bundle bundle2;
        JSONObject m7062b;
        JSONObject m7062b2;
        String h = ui0.h(ui0.e());
        if (fn0.Q(h)) {
            return null;
        }
        Bundle bundle3 = new Bundle();
        bundle3.putString("android_key_hash", h);
        bundle3.putString("app_id", ui0.f());
        bundle3.putInt("version", i);
        bundle3.putString("display", "touch");
        Bundle bundle4 = new Bundle();
        bundle4.putString("action_id", str);
        Bundle bundle5 = bundle;
        if (bundle == null) {
            bundle5 = new Bundle();
        }
        try {
            m7062b = am0.m7062b(bundle4);
            m7062b2 = am0.m7062b(bundle5);
        } catch (JSONException e) {
            dj0 dj0Var = dj0.DEVELOPER_ERRORS;
            String str2 = f2397a;
            xm0.e(dj0Var, 6, str2, "Error creating Url -- " + e);
            bundle2 = null;
        }
        if (m7062b == null || m7062b2 == null) {
            return null;
        }
        bundle3.putString("bridge_args", m7062b.toString());
        bundle3.putString("method_args", m7062b2.toString());
        bundle2 = bundle3;
        return bundle2;
    }
}
