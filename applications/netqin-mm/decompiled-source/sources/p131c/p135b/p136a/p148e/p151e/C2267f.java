package p131c.p135b.p136a.p148e.p151e;

import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;
/* renamed from: c.b.a.e.e.f */
/* loaded from: classes-dex2jar.jar:c/b/a/e/e/f.class */
public class C2267f {

    /* renamed from: b */
    public static final Set<String> f8878b = new HashSet(32);

    /* renamed from: c */
    public static final Set<C2267f> f8879c = new HashSet(16);

    /* renamed from: d */
    public static final C2267f f8880d = m30526a("ad_req");

    /* renamed from: e */
    public static final C2267f f8881e = m30526a("ad_imp");

    /* renamed from: f */
    public static final C2267f f8882f = m30526a("ad_session_start");

    /* renamed from: g */
    public static final C2267f f8883g = m30526a("ad_imp_session");

    /* renamed from: h */
    public static final C2267f f8884h = m30526a("cached_files_expired");

    /* renamed from: i */
    public static final C2267f f8885i = m30526a("cache_drop_count");

    /* renamed from: j */
    public static final C2267f f8886j = m30525a("sdk_reset_state_count", true);

    /* renamed from: k */
    public static final C2267f f8887k = m30525a("ad_response_process_failures", true);

    /* renamed from: l */
    public static final C2267f f8888l = m30525a("response_process_failures", true);

    /* renamed from: m */
    public static final C2267f f8889m = m30525a("incent_failed_to_display_count", true);

    /* renamed from: n */
    public static final C2267f f8890n = m30526a("app_paused_and_resumed");

    /* renamed from: o */
    public static final C2267f f8891o = m30525a("ad_rendered_with_mismatched_sdk_key", true);

    /* renamed from: p */
    public static final C2267f f8892p = m30526a("ad_shown_outside_app_count");

    /* renamed from: q */
    public static final C2267f f8893q = m30526a("med_ad_req");

    /* renamed from: r */
    public static final C2267f f8894r = m30525a("med_ad_response_process_failures", true);

    /* renamed from: s */
    public static final C2267f f8895s = m30525a("med_adapters_failed_init_missing_activity", true);

    /* renamed from: t */
    public static final C2267f f8896t = m30525a("med_waterfall_ad_no_fill", true);

    /* renamed from: u */
    public static final C2267f f8897u = m30525a("med_waterfall_ad_adapter_load_failed", true);

    /* renamed from: v */
    public static final C2267f f8898v = m30525a("med_waterfall_ad_invalid_response", true);

    /* renamed from: a */
    public final String f8899a;

    static {
        m30526a("fullscreen_ad_nil_vc_count");
        m30526a("applovin_bundle_missing");
    }

    public C2267f(String str) {
        this.f8899a = str;
    }

    /* renamed from: a */
    public static C2267f m30526a(String str) {
        return m30525a(str, false);
    }

    /* renamed from: a */
    public static C2267f m30525a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("No key name specified");
        } else if (!f8878b.contains(str)) {
            f8878b.add(str);
            C2267f fVar = new C2267f(str);
            if (z) {
                f8879c.add(fVar);
            }
            return fVar;
        } else {
            throw new IllegalArgumentException("Key has already been used: " + str);
        }
    }

    /* renamed from: b */
    public static Set<C2267f> m30524b() {
        return f8879c;
    }

    /* renamed from: a */
    public String m30527a() {
        return this.f8899a;
    }
}
