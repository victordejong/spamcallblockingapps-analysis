package com.applovin.impl.sdk.p053ad;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p052a.AbstractC1250b;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.ad.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/ad/f.class */
public final class C1292f extends AppLovinAdImpl {

    /* renamed from: a */
    private AppLovinAd f4619a;

    /* renamed from: b */
    private final C1285d f4620b;

    public C1292f(C1285d c1285d, C1408l c1408l) {
        super(new JSONObject(), new JSONObject(), EnumC1282b.UNKNOWN, c1408l);
        this.f4620b = c1285d;
    }

    /* renamed from: c */
    private AppLovinAd m5888c() {
        return (AppLovinAd) this.sdk.m5518Y().m5836c(this.f4620b);
    }

    /* renamed from: d */
    private String m5887d() {
        C1285d adZone = getAdZone();
        return (adZone == null || adZone.m6000e()) ? null : adZone.m6009a();
    }

    /* renamed from: a */
    public AppLovinAd m5891a() {
        return this.f4619a;
    }

    /* renamed from: a */
    public void m5890a(AppLovinAd appLovinAd) {
        this.f4619a = appLovinAd;
    }

    /* renamed from: b */
    public AppLovinAd m5889b() {
        AppLovinAd appLovinAd = this.f4619a;
        if (appLovinAd == null) {
            appLovinAd = m5888c();
        }
        return appLovinAd;
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1292f.class != obj.getClass()) {
            return false;
        }
        AppLovinAd m5889b = m5889b();
        return m5889b != null ? m5889b.equals(obj) : super.equals(obj);
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public AbstractC1250b getAdEventTracker() {
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl, com.applovin.impl.sdk.AppLovinAdBase, com.applovin.sdk.AppLovinAd
    public long getAdIdNumber() {
        AppLovinAd m5889b = m5889b();
        return m5889b != null ? m5889b.getAdIdNumber() : (char) 0;
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public C1285d getAdZone() {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) m5889b();
        return appLovinAdImpl != null ? appLovinAdImpl.getAdZone() : this.f4620b;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getCreatedAtMillis() {
        AppLovinAd m5889b = m5889b();
        return m5889b instanceof AppLovinAdImpl ? ((AppLovinAdImpl) m5889b).getCreatedAtMillis() : (char) 0;
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public String getOpenMeasurementContentUrl() {
        return null;
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public String getOpenMeasurementCustomReferenceData() {
        return null;
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public List<VerificationScriptResource> getOpenMeasurementVerificationScriptResources() {
        return null;
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        AppLovinAd m5889b = m5889b();
        return m5889b instanceof AppLovinAdImpl ? ((AppLovinAdImpl) m5889b).getOriginalFullResponse() : null;
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl, com.applovin.sdk.AppLovinAd
    public AppLovinAdSize getSize() {
        return getAdZone().m6002c();
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public EnumC1282b getSource() {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) m5889b();
        return appLovinAdImpl != null ? appLovinAdImpl.getSource() : EnumC1282b.UNKNOWN;
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl, com.applovin.sdk.AppLovinAd
    public AppLovinAdType getType() {
        return getAdZone().m6001d();
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl, com.applovin.sdk.AppLovinAd
    public String getZoneId() {
        return this.f4620b.m6000e() ? null : this.f4620b.m6009a();
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public int hashCode() {
        AppLovinAd m5889b = m5889b();
        return m5889b != null ? m5889b.hashCode() : super.hashCode();
    }

    @Override // com.applovin.impl.sdk.p052a.AbstractC1249a
    public boolean isOpenMeasurementEnabled() {
        return false;
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl, com.applovin.sdk.AppLovinAd
    public boolean isVideoAd() {
        AppLovinAd m5889b = m5889b();
        return m5889b != null && m5889b.isVideoAd();
    }

    @Override // com.applovin.impl.sdk.p053ad.AppLovinAdImpl
    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinAd{ #");
        m8752j.append(getAdIdNumber());
        m8752j.append(", adType=");
        m8752j.append(getType());
        m8752j.append(", adSize=");
        m8752j.append(getSize());
        m8752j.append(", zoneId='");
        m8752j.append(m5887d());
        m8752j.append('\'');
        m8752j.append('}');
        return m8752j.toString();
    }
}
