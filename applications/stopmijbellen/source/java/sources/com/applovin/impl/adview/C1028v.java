package com.applovin.impl.adview;

import android.annotation.TargetApi;
import android.webkit.WebSettings;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.adview.v */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/v.class */
public final class C1028v {

    /* renamed from: a */
    private JSONObject f3716a;

    public C1028v(JSONObject jSONObject) {
        this.f3716a = jSONObject;
    }

    @TargetApi(21)
    /* renamed from: a */
    public Integer m6777a() {
        int i;
        String string = JsonUtils.getString(this.f3716a, "mixed_content_mode", null);
        if (StringUtils.isValidString(string)) {
            if ("always_allow".equalsIgnoreCase(string)) {
                i = 0;
            } else if ("never_allow".equalsIgnoreCase(string)) {
                i = 1;
            } else if (!"compatibility_mode".equalsIgnoreCase(string)) {
                return null;
            } else {
                i = 2;
            }
            return Integer.valueOf(i);
        }
        return null;
    }

    /* renamed from: b */
    public WebSettings.PluginState m6776b() {
        String string = JsonUtils.getString(this.f3716a, "plugin_state", null);
        if (StringUtils.isValidString(string)) {
            if ("on".equalsIgnoreCase(string)) {
                return WebSettings.PluginState.ON;
            }
            if ("on_demand".equalsIgnoreCase(string)) {
                return WebSettings.PluginState.ON_DEMAND;
            }
            if (!"off".equalsIgnoreCase(string)) {
                return null;
            }
            return WebSettings.PluginState.OFF;
        }
        return null;
    }

    /* renamed from: c */
    public Boolean m6775c() {
        return JsonUtils.getBoolean(this.f3716a, "allow_file_access", null);
    }

    /* renamed from: d */
    public Boolean m6774d() {
        return JsonUtils.getBoolean(this.f3716a, "load_with_overview_mode", null);
    }

    /* renamed from: e */
    public Boolean m6773e() {
        return JsonUtils.getBoolean(this.f3716a, "use_wide_view_port", null);
    }

    /* renamed from: f */
    public Boolean m6772f() {
        return JsonUtils.getBoolean(this.f3716a, "allow_content_access", null);
    }

    /* renamed from: g */
    public Boolean m6771g() {
        return JsonUtils.getBoolean(this.f3716a, "use_built_in_zoom_controls", null);
    }

    /* renamed from: h */
    public Boolean m6770h() {
        return JsonUtils.getBoolean(this.f3716a, "display_zoom_controls", null);
    }

    /* renamed from: i */
    public Boolean m6769i() {
        return JsonUtils.getBoolean(this.f3716a, "save_form_data", null);
    }

    /* renamed from: j */
    public Boolean m6768j() {
        return JsonUtils.getBoolean(this.f3716a, "geolocation_enabled", null);
    }

    /* renamed from: k */
    public Boolean m6767k() {
        return JsonUtils.getBoolean(this.f3716a, "need_initial_focus", null);
    }

    /* renamed from: l */
    public Boolean m6766l() {
        return JsonUtils.getBoolean(this.f3716a, "allow_file_access_from_file_urls", null);
    }

    /* renamed from: m */
    public Boolean m6765m() {
        return JsonUtils.getBoolean(this.f3716a, "allow_universal_access_from_file_urls", null);
    }

    /* renamed from: n */
    public Boolean m6764n() {
        return JsonUtils.getBoolean(this.f3716a, "offscreen_pre_raster", null);
    }
}
