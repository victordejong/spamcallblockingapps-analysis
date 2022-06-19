package com.applovin.impl.sdk.p053ad;

import android.net.Uri;
import com.applovin.impl.adview.AbstractC0996i;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p052a.AbstractC1250b;
import com.applovin.impl.sdk.p052a.C1258c;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.ad.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/a.class */
public final class C1281a extends AbstractC1286e {

    /* renamed from: a */
    private final String f4564a = m6023b();

    /* renamed from: b */
    private final String f4565b = m6020h();

    /* renamed from: c */
    private final String f4566c = m6024aJ();

    /* renamed from: d */
    private final C1258c f4567d = new C1258c(this);

    public C1281a(JSONObject jSONObject, JSONObject jSONObject2, EnumC1282b enumC1282b, C1408l c1408l) {
        super(jSONObject, jSONObject2, enumC1282b, c1408l);
    }

    /* renamed from: aJ */
    private String m6024aJ() {
        return getStringFromAdObject("stream_url", "");
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: a */
    public void mo5966a() {
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "html", this.f4564a);
            JsonUtils.putString(this.adObject, "stream_url", this.f4566c);
        }
    }

    /* renamed from: a */
    public void m6026a(Uri uri) {
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "video", uri.toString());
        }
    }

    /* renamed from: a */
    public void m6025a(String str) {
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "html", str);
        }
    }

    /* renamed from: b */
    public String m6023b() {
        String string;
        synchronized (this.adObjectLock) {
            string = JsonUtils.getString(this.adObject, "html", "");
        }
        return string;
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: c */
    public String mo5919c() {
        return this.f4565b;
    }

    /* renamed from: d */
    public String m6022d() {
        return this.f4566c;
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: e */
    public boolean mo5911e() {
        return this.adObject.has("stream_url");
    }

    /* renamed from: f */
    public void m6021f() {
        synchronized (this.adObjectLock) {
            this.adObject.remove("stream_url");
        }
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: g */
    public Uri mo5908g() {
        String m6024aJ = m6024aJ();
        if (StringUtils.isValidString(m6024aJ)) {
            return Uri.parse(m6024aJ);
        }
        String m6020h = m6020h();
        if (!StringUtils.isValidString(m6020h)) {
            return null;
        }
        return Uri.parse(m6020h);
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public AbstractC1250b getAdEventTracker() {
        return this.f4567d;
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        JSONObject deepCopy;
        synchronized (this.fullResponseLock) {
            deepCopy = JsonUtils.deepCopy(this.fullResponse);
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(deepCopy, "ads", new JSONArray());
        if (jSONArray.length() > 0) {
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, 0, new JSONObject());
            JsonUtils.putString(jSONObject, "html", this.f4564a);
            JsonUtils.putString(jSONObject, "video", this.f4565b);
            JsonUtils.putString(jSONObject, "stream_url", this.f4566c);
        }
        return deepCopy;
    }

    /* renamed from: h */
    public String m6020h() {
        return getStringFromAdObject("video", "");
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public boolean hasVideoUrl() {
        return mo5908g() != null;
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: i */
    public Uri mo5906i() {
        String stringFromAdObject = getStringFromAdObject("click_url", "");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e, com.applovin.impl.sdk.p052a.AbstractC1249a
    public boolean isOpenMeasurementEnabled() {
        return getBooleanFromAdObject("omsdk_enabled", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.p053ad.AbstractC1286e
    /* renamed from: j */
    public Uri mo5905j() {
        String stringFromAdObject = getStringFromAdObject("video_click_url", "");
        return StringUtils.isValidString(stringFromAdObject) ? Uri.parse(stringFromAdObject) : mo5906i();
    }

    /* renamed from: k */
    public float m6019k() {
        return getFloatFromAdObject("mraid_close_delay_graphic", 0.0f);
    }

    /* renamed from: l */
    public boolean m6018l() {
        if (this.adObject.has("close_button_expandable_hidden")) {
            return getBooleanFromAdObject("close_button_expandable_hidden", Boolean.FALSE);
        }
        return true;
    }

    /* renamed from: m */
    public AbstractC0996i.EnumC0997a m6017m() {
        return m5965a(getIntFromAdObject("expandable_style", AbstractC0996i.EnumC0997a.INVISIBLE.m6855a()));
    }
}
