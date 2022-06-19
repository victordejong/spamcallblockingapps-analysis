package com.appnext.suggestedappswider.p023b;

import com.amazon.device.ads.DtbConstants;
import com.appnext.core.C0551g;
import com.appnext.core.SettingsManager;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appnext.suggestedappswider.b.d */
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/b/d.class */
public final class C0688d extends SettingsManager {

    /* renamed from: hs */
    private static C0688d f2133hs;

    /* renamed from: v */
    private String f2134v = "https://cdn.appnext.com/tools/sdk/confign/suggested_apps_wider/" + C0551g.m42382av() + "/suggested_apps_wider_config.json";

    /* renamed from: bs */
    public static C0688d m42108bs() {
        C0688d c0688d;
        synchronized (C0688d.class) {
            try {
                if (f2133hs == null) {
                    f2133hs = new C0688d();
                }
                c0688d = f2133hs;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0688d;
    }

    @Override // com.appnext.core.SettingsManager
    /* renamed from: j */
    public final String mo42107j() {
        return this.f2134v;
    }

    @Override // com.appnext.core.SettingsManager
    /* renamed from: k */
    public final HashMap<String, String> mo42106k() {
        return null;
    }

    @Override // com.appnext.core.SettingsManager
    /* renamed from: l */
    public final HashMap<String, String> mo42105l() {
        HashMap<String, String> m8661V = C22128a.m8661V("resolve_timeout", "8", "urlApp_protection", "true");
        m8661V.put("pview", "true");
        m8661V.put("postpone_vta_sec", DtbConstants.NETWORK_TYPE_UNKNOWN);
        m8661V.put("postpone_impression_sec", DtbConstants.NETWORK_TYPE_UNKNOWN);
        m8661V.put("default_caching_policy", "3");
        m8661V.put("min_internet_connection_video", AnalyticsConstants.NETWORK_3G);
        m8661V.put("banner_expiration_time", DtbConstants.NETWORK_TYPE_UNKNOWN);
        m8661V.put("ads_caching_time_minutes", DtbConstants.NETWORK_TYPE_UNKNOWN);
        m8661V.put("gdpr", "false");
        m8661V.put("cpiActiveFlow", "d");
        m8661V.put("cpcActiveFlow", C22021b.f61237c);
        m8661V.put("didPrivacy", "false");
        m8661V.put("min_imp_precentage", "50");
        m8661V.put("repeat_viewable_criteria", "true");
        m8661V.put("min_vta_precentage", "50");
        m8661V.put("repeat_vta_viewable_criteria", "true");
        m8661V.put("stp_flag", "false");
        m8661V.put("report_vta_instead_of_impresssion", "true");
        m8661V.put("title", "Suggested Apps For You");
        m8661V.put("title_text_color", "#D0D0D0");
        m8661V.put("amount_of_icons", "5");
        m8661V.put("present_titles", "true");
        m8661V.put("app_title_text_color", "#000000");
        m8661V.put("local_direction", "false");
        m8661V.put("background_color", "#FFFFFF");
        m8661V.put("transparency", "100");
        m8661V.put("animation", "true");
        m8661V.put("templates", "[\n    {\n      \"template\": 1,\n      \"weight\": 100\n    }\n  ]");
        return m8661V;
    }

    @Override // com.appnext.core.SettingsManager
    /* renamed from: m */
    public final String mo42104m() {
        return "SuggestedAppsWider";
    }
}
