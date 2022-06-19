package com.applovin.impl.sdk.p056d;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.C1676a;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.applovin.impl.sdk.d.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d/f.class */
public class C1328f {

    /* renamed from: t */
    private final String f5101t;

    /* renamed from: s */
    private static final Set<String> f5099s = new HashSet(32);

    /* renamed from: u */
    private static final Set<C1328f> f5100u = new HashSet(16);

    /* renamed from: a */
    public static final C1328f f5081a = m5744a("ad_req");

    /* renamed from: b */
    public static final C1328f f5082b = m5744a("ad_imp");

    /* renamed from: c */
    public static final C1328f f5083c = m5744a("ad_session_start");

    /* renamed from: d */
    public static final C1328f f5084d = m5744a("ad_imp_session");

    /* renamed from: e */
    public static final C1328f f5085e = m5744a("cached_files_expired");

    /* renamed from: f */
    public static final C1328f f5086f = m5744a("cache_drop_count");

    /* renamed from: g */
    public static final C1328f f5087g = m5743a("sdk_reset_state_count", true);

    /* renamed from: h */
    public static final C1328f f5088h = m5743a("ad_response_process_failures", true);

    /* renamed from: i */
    public static final C1328f f5089i = m5743a("response_process_failures", true);

    /* renamed from: j */
    public static final C1328f f5090j = m5743a("incent_failed_to_display_count", true);

    /* renamed from: k */
    public static final C1328f f5091k = m5744a("app_paused_and_resumed");

    /* renamed from: l */
    public static final C1328f f5092l = m5743a("ad_rendered_with_mismatched_sdk_key", true);

    /* renamed from: m */
    public static final C1328f f5093m = m5744a("ad_shown_outside_app_count");

    /* renamed from: n */
    public static final C1328f f5094n = m5744a("med_ad_req");

    /* renamed from: o */
    public static final C1328f f5095o = m5743a("med_ad_response_process_failures", true);

    /* renamed from: p */
    public static final C1328f f5096p = m5743a("med_waterfall_ad_no_fill", true);

    /* renamed from: q */
    public static final C1328f f5097q = m5743a("med_waterfall_ad_adapter_load_failed", true);

    /* renamed from: r */
    public static final C1328f f5098r = m5743a("med_waterfall_ad_invalid_response", true);

    static {
        m5744a("fullscreen_ad_nil_vc_count");
        m5744a("applovin_bundle_missing");
    }

    private C1328f(String str) {
        this.f5101t = str;
    }

    /* renamed from: a */
    private static C1328f m5744a(String str) {
        return m5743a(str, false);
    }

    /* renamed from: a */
    private static C1328f m5743a(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            Set<String> set = f5099s;
            if (set.contains(str)) {
                throw new IllegalArgumentException(C1676a.m4789h("Key has already been used: ", str));
            }
            set.add(str);
            C1328f c1328f = new C1328f(str);
            if (z) {
                f5100u.add(c1328f);
            }
            return c1328f;
        }
        throw new IllegalArgumentException("No key name specified");
    }
}
