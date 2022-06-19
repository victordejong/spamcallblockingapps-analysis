package com.applovin.impl.sdk.p053ad;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.ad.AppLovinAdImpl */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/AppLovinAdImpl.class */
public abstract class AppLovinAdImpl extends AppLovinAdBase implements AppLovinAd {

    /* renamed from: a */
    private C1285d f4562a;

    /* renamed from: b */
    private C1292f f4563b;
    public final EnumC1282b source;

    public AppLovinAdImpl(JSONObject jSONObject, JSONObject jSONObject2, EnumC1282b enumC1282b, C1408l c1408l) {
        super(jSONObject, jSONObject2, c1408l);
        this.source = enumC1282b;
    }

    public boolean equals(Object obj) {
        AppLovinAd appLovinAd = obj;
        if (obj instanceof C1292f) {
            AppLovinAd m5889b = ((C1292f) obj).m5889b();
            appLovinAd = obj;
            if (m5889b != null) {
                appLovinAd = m5889b;
            }
        }
        boolean z = true;
        if (this == appLovinAd) {
            return true;
        }
        if (appLovinAd == null || getClass() != appLovinAd.getClass()) {
            return false;
        }
        if (getAdIdNumber() != ((AppLovinAdImpl) appLovinAd).getAdIdNumber()) {
            z = false;
        }
        return z;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.sdk.AppLovinAd
    public long getAdIdNumber() {
        return getLongFromAdObject("ad_id", -1L);
    }

    @Override // com.applovin.sdk.AppLovinAd
    public String getAdValue(String str) {
        return getAdValue(str, null);
    }

    @Override // com.applovin.sdk.AppLovinAd
    public String getAdValue(String str, String str2) {
        return JsonUtils.getString(getJsonObjectFromAdObject("ad_values", new JSONObject()), str, str2);
    }

    public C1285d getAdZone() {
        C1285d c1285d = this.f4562a;
        if (c1285d != null) {
            if (c1285d.m6002c() != null && this.f4562a.m6001d() != null) {
                return this.f4562a;
            }
            if (getSize() == null && getType() == null) {
                return this.f4562a;
            }
        }
        C1285d m6007a = C1285d.m6007a(getSize(), getType(), getStringFromFullResponse(AppLovinUtils.ServerParameterKeys.ZONE_ID, null));
        this.f4562a = m6007a;
        return m6007a;
    }

    public C1292f getDummyAd() {
        return this.f4563b;
    }

    public abstract JSONObject getOriginalFullResponse();

    public String getRawFullResponse() {
        String jSONObject;
        synchronized (this.fullResponseLock) {
            jSONObject = this.fullResponse.toString();
        }
        return jSONObject;
    }

    @Override // com.applovin.sdk.AppLovinAd
    public AppLovinAdSize getSize() {
        return AppLovinAdSize.fromString(getStringFromFullResponse("ad_size", null));
    }

    public EnumC1282b getSource() {
        return this.source;
    }

    @Override // com.applovin.sdk.AppLovinAd
    public AppLovinAdType getType() {
        return AppLovinAdType.fromString(getStringFromFullResponse("ad_type", null));
    }

    @Override // com.applovin.sdk.AppLovinAd
    public String getZoneId() {
        String str = null;
        if (!getAdZone().m6000e()) {
            str = getStringFromFullResponse(AppLovinUtils.ServerParameterKeys.ZONE_ID, null);
        }
        return str;
    }

    public boolean hasShown() {
        return getBooleanFromAdObject("shown", Boolean.FALSE);
    }

    public boolean hasVideoUrl() {
        this.sdk.m5542A().m5111e("AppLovinAd", "Attempting to invoke hasVideoUrl() from base ad class");
        return false;
    }

    public int hashCode() {
        return (int) getAdIdNumber();
    }

    @Override // com.applovin.sdk.AppLovinAd
    public boolean isVideoAd() {
        return this.adObject.has("is_video_ad") ? getBooleanFromAdObject("is_video_ad", Boolean.FALSE) : hasVideoUrl();
    }

    public void setDummyAd(C1292f c1292f) {
        this.f4563b = c1292f;
    }

    public void setHasShown(boolean z) {
        try {
            synchronized (this.adObjectLock) {
                this.adObject.put("shown", z);
            }
        } catch (Throwable th) {
        }
    }

    public boolean shouldCancelHtmlCachingIfShown() {
        return getBooleanFromAdObject("chcis", Boolean.FALSE);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinAd{adIdNumber=");
        m8752j.append(getAdIdNumber());
        m8752j.append(", source=");
        m8752j.append(getSource());
        m8752j.append(", zoneId=\"");
        m8752j.append(getZoneId());
        m8752j.append("\"");
        m8752j.append('}');
        return m8752j.toString();
    }
}
