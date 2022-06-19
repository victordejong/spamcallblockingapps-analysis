package com.appnext.nativeads.designed_native_ads;

import com.amazon.device.ads.DtbConstants;
import com.appnext.core.C0551g;
import com.appnext.core.SettingsManager;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appnext.nativeads.designed_native_ads.c */
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/c.class */
public final class C0647c extends SettingsManager {

    /* renamed from: gn */
    private static C0647c f1995gn;

    /* renamed from: v */
    private String f1996v = "https://cdn.appnext.com/tools/sdk/confign/suggested_apps/" + C0551g.m42382av() + "/suggested_apps_config.json";

    /* renamed from: bg */
    public static C0647c m42194bg() {
        C0647c c0647c;
        synchronized (C0647c.class) {
            try {
                if (f1995gn == null) {
                    f1995gn = new C0647c();
                }
                c0647c = f1995gn;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0647c;
    }

    @Override // com.appnext.core.SettingsManager
    /* renamed from: j */
    public final String mo42107j() {
        return this.f1996v;
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
        m8661V.put("report_vta_instead_of_impresssion", "false");
        m8661V.put("title", "Suggested Apps For You");
        m8661V.put("title_text_color", "#D0D0D0");
        m8661V.put("amount_of_icons", "5");
        m8661V.put("present_titles", "true");
        m8661V.put("app_title_text_color", "#000000");
        m8661V.put("local_direction", "false");
        m8661V.put("background_color", "#FFFFFF");
        m8661V.put("transparency", "100");
        return m8661V;
    }

    @Override // com.appnext.core.SettingsManager
    /* renamed from: m */
    public final String mo42104m() {
        return "DesignNativeAdsSettings";
    }
}
