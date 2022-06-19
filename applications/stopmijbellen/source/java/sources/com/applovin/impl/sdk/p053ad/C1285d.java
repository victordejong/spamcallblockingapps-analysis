package com.applovin.impl.sdk.p053ad;

import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.ad.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/d.class */
public final class C1285d {

    /* renamed from: a */
    private static final Map<String, C1285d> f4583a = new HashMap();

    /* renamed from: b */
    private static final Object f4584b = new Object();

    /* renamed from: c */
    private JSONObject f4585c;

    /* renamed from: d */
    private final String f4586d;

    /* renamed from: e */
    private AppLovinAdSize f4587e;

    /* renamed from: f */
    private AppLovinAdType f4588f;

    private C1285d(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str) {
        String str2;
        if (!TextUtils.isEmpty(str) || !(appLovinAdType == null || appLovinAdSize == null)) {
            this.f4587e = appLovinAdSize;
            this.f4588f = appLovinAdType;
            if (StringUtils.isValidString(str)) {
                str2 = str.trim();
            } else {
                str2 = appLovinAdSize.getLabel() + "_" + appLovinAdType.getLabel();
            }
            this.f4586d = str2.toLowerCase(Locale.ENGLISH);
            return;
        }
        throw new IllegalArgumentException("No zone identifier or type or size specified");
    }

    /* renamed from: a */
    public static C1285d m6008a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType) {
        return m6007a(appLovinAdSize, appLovinAdType, null);
    }

    /* renamed from: a */
    public static C1285d m6007a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str) {
        C1285d c1285d = new C1285d(appLovinAdSize, appLovinAdType, str);
        synchronized (f4584b) {
            String str2 = c1285d.f4586d;
            Map<String, C1285d> map = f4583a;
            if (map.containsKey(str2)) {
                c1285d = map.get(str2);
            } else {
                map.put(str2, c1285d);
            }
        }
        return c1285d;
    }

    /* renamed from: a */
    public static C1285d m6006a(String str) {
        return m6007a(null, null, str);
    }

    /* renamed from: a */
    public static void m6005a(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("ad_size") || !jSONObject.has("ad_type")) {
            return;
        }
        synchronized (f4584b) {
            C1285d c1285d = f4583a.get(JsonUtils.getString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, ""));
            if (c1285d != null) {
                c1285d.f4587e = AppLovinAdSize.fromString(JsonUtils.getString(jSONObject, "ad_size", ""));
                c1285d.f4588f = AppLovinAdType.fromString(JsonUtils.getString(jSONObject, "ad_type", ""));
            }
        }
    }

    /* renamed from: b */
    public static C1285d m6003b(String str) {
        return m6007a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED, str);
    }

    /* renamed from: f */
    public static Collection<C1285d> m5999f() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(6);
        Collections.addAll(linkedHashSet, m5998g(), m5997h(), m5996i(), m5995j(), m5994k(), m5993l());
        return Collections.unmodifiableSet(linkedHashSet);
    }

    /* renamed from: g */
    public static C1285d m5998g() {
        return m6008a(AppLovinAdSize.BANNER, AppLovinAdType.REGULAR);
    }

    /* renamed from: h */
    public static C1285d m5997h() {
        return m6008a(AppLovinAdSize.MREC, AppLovinAdType.REGULAR);
    }

    /* renamed from: i */
    public static C1285d m5996i() {
        return m6008a(AppLovinAdSize.LEADER, AppLovinAdType.REGULAR);
    }

    /* renamed from: j */
    public static C1285d m5995j() {
        return m6008a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.REGULAR);
    }

    /* renamed from: k */
    public static C1285d m5994k() {
        return m6008a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED);
    }

    /* renamed from: l */
    public static C1285d m5993l() {
        return m6008a(AppLovinAdSize.NATIVE, AppLovinAdType.NATIVE);
    }

    /* renamed from: a */
    public String m6009a() {
        return this.f4586d;
    }

    /* renamed from: b */
    public MaxAdFormat m6004b() {
        AppLovinAdSize m6002c = m6002c();
        if (m6002c == AppLovinAdSize.BANNER) {
            return MaxAdFormat.BANNER;
        }
        if (m6002c == AppLovinAdSize.LEADER) {
            return MaxAdFormat.LEADER;
        }
        if (m6002c == AppLovinAdSize.MREC) {
            return MaxAdFormat.MREC;
        }
        if (m6002c == AppLovinAdSize.CROSS_PROMO) {
            return MaxAdFormat.CROSS_PROMO;
        }
        if (m6002c != AppLovinAdSize.INTERSTITIAL) {
            if (m6002c != AppLovinAdSize.NATIVE) {
                return null;
            }
            return MaxAdFormat.NATIVE;
        } else if (m6001d() == AppLovinAdType.REGULAR) {
            return MaxAdFormat.INTERSTITIAL;
        } else {
            if (m6001d() == AppLovinAdType.INCENTIVIZED) {
                return MaxAdFormat.REWARDED;
            }
            if (m6001d() != AppLovinAdType.AUTO_INCENTIVIZED) {
                return null;
            }
            return MaxAdFormat.REWARDED_INTERSTITIAL;
        }
    }

    /* renamed from: c */
    public AppLovinAdSize m6002c() {
        if (this.f4587e == null && JsonUtils.valueExists(this.f4585c, "ad_size")) {
            this.f4587e = AppLovinAdSize.fromString(JsonUtils.getString(this.f4585c, "ad_size", null));
        }
        return this.f4587e;
    }

    /* renamed from: d */
    public AppLovinAdType m6001d() {
        if (this.f4588f == null && JsonUtils.valueExists(this.f4585c, "ad_type")) {
            this.f4588f = AppLovinAdType.fromString(JsonUtils.getString(this.f4585c, "ad_type", null));
        }
        return this.f4588f;
    }

    /* renamed from: e */
    public boolean m6000e() {
        return m5999f().contains(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1285d.class == obj.getClass()) {
            return this.f4586d.equalsIgnoreCase(((C1285d) obj).f4586d);
        }
        return false;
    }

    public int hashCode() {
        return this.f4586d.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AdZone{id=");
        m8752j.append(this.f4586d);
        m8752j.append(", zoneObject=");
        m8752j.append(this.f4585c);
        m8752j.append('}');
        return m8752j.toString();
    }
}
