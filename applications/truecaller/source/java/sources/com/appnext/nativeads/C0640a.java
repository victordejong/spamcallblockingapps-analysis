package com.appnext.nativeads;

import com.amazon.device.ads.DtbConstants;
import com.appnext.core.C0551g;
import com.appnext.core.SettingsManager;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appnext.nativeads.a */
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/a.class */
public final class C0640a extends SettingsManager {

    /* renamed from: fV */
    private static C0640a f1979fV;

    /* renamed from: v */
    private String f1980v = "https://cdn.appnext.com/tools/sdk/confign/nativeads_new/" + C0551g.m42382av() + "/native_ads_config.json";

    /* renamed from: bc */
    public static C0640a m42211bc() {
        C0640a c0640a;
        synchronized (C0640a.class) {
            try {
                if (f1979fV == null) {
                    f1979fV = new C0640a();
                }
                c0640a = f1979fV;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0640a;
    }

    @Override // com.appnext.core.SettingsManager
    /* renamed from: j */
    public final String mo42107j() {
        return this.f1980v;
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
        m8661V.put("default_video_quality", "2");
        m8661V.put("num_saved_videos", "5");
        m8661V.put("default_video_length", "2");
        m8661V.put("min_internet_connection_video", AnalyticsConstants.NETWORK_3G);
        m8661V.put("banner_expiration_time", DtbConstants.NETWORK_TYPE_UNKNOWN);
        m8661V.put("ads_caching_time_minutes", DtbConstants.NETWORK_TYPE_UNKNOWN);
        m8661V.put("new_button_text", "Install");
        m8661V.put("existing_button_text", "Open");
        m8661V.put("gdpr", "false");
        m8661V.put("cpiActiveFlow", "d");
        m8661V.put("cpcActiveFlow", C22021b.f61237c);
        m8661V.put("didPrivacy", "false");
        m8661V.put("min_imp_precentage", "50");
        m8661V.put("repeat_viewable_criteria", "true");
        m8661V.put("min_vta_precentage", "50");
        m8661V.put("repeat_vta_viewable_criteria", "true");
        m8661V.put("stp_flag", "false");
        return m8661V;
    }

    @Override // com.appnext.core.SettingsManager
    /* renamed from: m */
    public final String mo42104m() {
        return "NativeAdSettings";
    }
}
