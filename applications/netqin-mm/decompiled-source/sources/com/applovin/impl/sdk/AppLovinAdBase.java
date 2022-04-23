package com.applovin.impl.sdk;

import android.text.TextUtils;
import com.applovin.impl.sdk.p489ad.EnumC7029b;
import com.applovin.mediation.AppLovinNativeAdapter;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.Arrays;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p150c.AbstractC2250f;
import p131c.p135b.p136a.p148e.p150c.C2246b;
import p131c.p135b.p136a.p148e.p150c.C2248d;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinAdBase.class */
public abstract class AppLovinAdBase implements AbstractC2250f, AppLovinAd {

    /* renamed from: a */
    public final int f21537a;
    public final JSONObject adObject;
    public final Object adObjectLock;

    /* renamed from: b */
    public C2246b f21538b;

    /* renamed from: c */
    public final long f21539c;

    /* renamed from: d */
    public C2248d f21540d;
    public final JSONObject fullResponse;
    public final Object fullResponseLock;
    public final C2341l sdk;
    public final EnumC7029b source;

    public AppLovinAdBase(JSONObject jSONObject, JSONObject jSONObject2, EnumC7029b bVar, C2341l lVar) {
        if (jSONObject == null) {
            throw new IllegalArgumentException("No ad object specified");
        } else if (jSONObject2 == null) {
            throw new IllegalArgumentException("No response specified");
        } else if (lVar != null) {
            this.adObject = jSONObject;
            this.fullResponse = jSONObject2;
            this.source = bVar;
            this.sdk = lVar;
            this.adObjectLock = new Object();
            this.fullResponseLock = new Object();
            this.f21539c = System.currentTimeMillis();
            char[] charArray = jSONObject.toString().toCharArray();
            Arrays.sort(charArray);
            this.f21537a = new String(charArray).hashCode();
        } else {
            throw new IllegalArgumentException("No sdk specified");
        }
    }

    public boolean containsKeyForAdObject(String str) {
        boolean has;
        synchronized (this.adObjectLock) {
            has = this.adObject.has(str);
        }
        return has;
    }

    public boolean equals(Object obj) {
        AppLovinAd appLovinAd = obj;
        if (obj instanceof C2248d) {
            AppLovinAd b = ((C2248d) obj).m30610b();
            appLovinAd = obj;
            if (b != null) {
                appLovinAd = b;
            }
        }
        boolean z = true;
        if (this == appLovinAd) {
            return true;
        }
        if (appLovinAd == null || getClass() != appLovinAd.getClass()) {
            return false;
        }
        AppLovinAdBase appLovinAdBase = (AppLovinAdBase) appLovinAd;
        C2246b bVar = this.f21538b;
        if (bVar != null) {
            if (!bVar.equals(appLovinAdBase.f21538b)) {
                return false;
            }
        } else if (appLovinAdBase.f21538b != null) {
            return false;
        }
        if (this.source != appLovinAdBase.source) {
            return false;
        }
        if (this.f21537a != appLovinAdBase.f21537a) {
            z = false;
        }
        return z;
    }

    public long getAdIdNumber() {
        return getLongFromAdObject(AppLovinNativeAdapter.KEY_EXTRA_AD_ID, -1L);
    }

    @Override // com.applovin.sdk.AppLovinAd
    public String getAdValue(String str) {
        JSONObject jsonObjectFromAdObject;
        if (!TextUtils.isEmpty(str) && (jsonObjectFromAdObject = getJsonObjectFromAdObject("ad_values", null)) != null && jsonObjectFromAdObject.length() > 0) {
            return C2390i.m29913b(jsonObjectFromAdObject, str, (String) null, this.sdk);
        }
        return null;
    }

    public C2246b getAdZone() {
        C2246b bVar = this.f21538b;
        if (bVar != null) {
            if (bVar.m30638c() != null && this.f21538b.m30636d() != null) {
                return this.f21538b;
            }
            if (getSize() == null && getType() == null) {
                return this.f21538b;
            }
        }
        C2246b a = C2246b.m30646a(getSize(), getType(), getStringFromFullResponse("zone_id", null), this.sdk);
        this.f21538b = a;
        return a;
    }

    public boolean getBooleanFromAdObject(String str, Boolean bool) {
        boolean booleanValue;
        synchronized (this.adObjectLock) {
            booleanValue = C2390i.m29928a(this.adObject, str, bool, this.sdk).booleanValue();
        }
        return booleanValue;
    }

    public boolean getBooleanFromFullResponse(String str, boolean z) {
        boolean booleanValue;
        synchronized (this.fullResponseLock) {
            booleanValue = C2390i.m29928a(this.fullResponse, str, Boolean.valueOf(z), this.sdk).booleanValue();
        }
        return booleanValue;
    }

    public String getClCode() {
        String stringFromAdObject = getStringFromAdObject("clcode", "");
        return C2422o.m29851b(stringFromAdObject) ? stringFromAdObject : getStringFromFullResponse("clcode", "");
    }

    public long getCreatedAtMillis() {
        return this.f21539c;
    }

    public C2248d getDummyAd() {
        return this.f21540d;
    }

    public long getFetchLatencyMillis() {
        return getLongFromFullResponse("ad_fetch_latency_millis", -1L);
    }

    public long getFetchResponseSize() {
        return getLongFromFullResponse("ad_fetch_response_size", -1L);
    }

    public float getFloatFromAdObject(String str, float f) {
        float a;
        synchronized (this.adObjectLock) {
            a = C2390i.m29931a(this.adObject, str, f, this.sdk);
        }
        return a;
    }

    public float getFloatFromFullResponse(String str, float f) {
        float a;
        synchronized (this.fullResponseLock) {
            a = C2390i.m29931a(this.fullResponse, str, f, this.sdk);
        }
        return a;
    }

    public int getIntFromAdObject(String str, int i) {
        int b;
        synchronized (this.adObjectLock) {
            b = C2390i.m29916b(this.adObject, str, i, this.sdk);
        }
        return b;
    }

    public int getIntFromFullResponse(String str, int i) {
        int b;
        synchronized (this.fullResponseLock) {
            b = C2390i.m29916b(this.fullResponse, str, i, this.sdk);
        }
        return b;
    }

    public JSONObject getJsonObjectFromAdObject(String str, JSONObject jSONObject) {
        JSONObject b;
        synchronized (this.adObjectLock) {
            b = C2390i.m29911b(this.adObject, str, jSONObject, this.sdk);
        }
        return b;
    }

    public JSONObject getJsonObjectFromFullResponse(String str, JSONObject jSONObject) {
        JSONObject b;
        synchronized (this.fullResponseLock) {
            b = C2390i.m29911b(this.fullResponse, str, jSONObject, this.sdk);
        }
        return b;
    }

    public long getLongFromAdObject(String str, long j) {
        long a;
        synchronized (this.adObjectLock) {
            a = C2390i.m29929a(this.adObject, str, j, this.sdk);
        }
        return a;
    }

    public long getLongFromFullResponse(String str, long j) {
        long a;
        synchronized (this.fullResponseLock) {
            a = C2390i.m29929a(this.fullResponse, str, j, this.sdk);
        }
        return a;
    }

    public String getPrimaryKey() {
        return getStringFromAdObject("pk", "NA");
    }

    public C2341l getSdk() {
        return this.sdk;
    }

    public String getSecondaryKey1() {
        return getStringFromAdObject("sk1", null);
    }

    public String getSecondaryKey2() {
        return getStringFromAdObject("sk2", null);
    }

    public AppLovinAdSize getSize() {
        return AppLovinAdSize.fromString(getStringFromFullResponse("ad_size", null));
    }

    public EnumC7029b getSource() {
        return this.source;
    }

    public String getStringFromAdObject(String str, String str2) {
        String b;
        synchronized (this.adObjectLock) {
            b = C2390i.m29913b(this.adObject, str, str2, this.sdk);
        }
        return b;
    }

    public String getStringFromFullResponse(String str, String str2) {
        String b;
        synchronized (this.fullResponseLock) {
            b = C2390i.m29913b(this.fullResponse, str, str2, this.sdk);
        }
        return b;
    }

    public AppLovinAdType getType() {
        return AppLovinAdType.fromString(getStringFromFullResponse("ad_type", null));
    }

    public String getZoneId() {
        String str = null;
        if (!getAdZone().m30625j()) {
            str = getStringFromFullResponse("zone_id", null);
        }
        return str;
    }

    public boolean hasShown() {
        return getBooleanFromAdObject("shown", false);
    }

    public boolean hasVideoUrl() {
        this.sdk.m30262d0().m30039e("AppLovinAdBase", "Attempting to invoke hasVideoUrl() from base ad class");
        return false;
    }

    public int hashCode() {
        return this.f21537a;
    }

    public boolean isVideoAd() {
        return this.adObject.has("is_video_ad") ? getBooleanFromAdObject("is_video_ad", false) : hasVideoUrl();
    }

    public void setDummyAd(C2248d dVar) {
        this.f21540d = dVar;
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
        return getBooleanFromAdObject("chcis", false);
    }

    public String toString() {
        return "AppLovinAd{adIdNumber" + getAdIdNumber() + ", source=" + getSource() + ", zoneId='" + getZoneId() + "'}";
    }
}
