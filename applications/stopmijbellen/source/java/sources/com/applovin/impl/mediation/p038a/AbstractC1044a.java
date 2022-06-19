package com.applovin.impl.mediation.p038a;

import android.os.Bundle;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.C1191g;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdWaterfallInfo;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.a.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/a.class */
public abstract class AbstractC1044a extends C1049f implements MaxAd {

    /* renamed from: a */
    public C1191g f3797a;

    /* renamed from: c */
    private final AtomicBoolean f3798c = new AtomicBoolean();

    /* renamed from: d */
    private MaxAdWaterfallInfo f3799d;

    /* renamed from: e */
    private String f3800e;

    public AbstractC1044a(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, C1191g c1191g, C1408l c1408l) {
        super(map, jSONObject, jSONObject2, c1408l);
        this.f3797a = c1191g;
    }

    /* renamed from: a */
    public static AbstractC1044a m6716a(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, C1408l c1408l) {
        String string = JsonUtils.getString(jSONObject2, "ad_format", null);
        MaxAdFormat formatFromString = MaxAdFormat.formatFromString(string);
        if (formatFromString.isAdViewAd()) {
            return new C1045b(map, jSONObject, jSONObject2, c1408l);
        }
        if (formatFromString == MaxAdFormat.NATIVE) {
            return new C1047d(map, jSONObject, jSONObject2, c1408l);
        }
        if (!formatFromString.isFullscreenAd()) {
            throw new IllegalArgumentException(C1676a.m4789h("Unsupported ad format: ", string));
        }
        return new C1046c(map, jSONObject, jSONObject2, c1408l);
    }

    /* renamed from: u */
    private long m6696u() {
        return m6629b("load_started_time_ms", 0L);
    }

    /* renamed from: a */
    public abstract AbstractC1044a mo6669a(C1191g c1191g);

    /* renamed from: a */
    public String m6720a() {
        return this.f3800e;
    }

    /* renamed from: a */
    public void m6719a(Bundle bundle) {
        if (bundle != null) {
            if (bundle.containsKey("creative_id") && !m6631b("creative_id")) {
                m6622c("creative_id", BundleUtils.getString("creative_id", bundle));
            }
            if (!bundle.containsKey("ad_width") || m6631b("ad_width") || !bundle.containsKey("ad_height") || m6631b("ad_height")) {
                return;
            }
            int i = BundleUtils.getInt("ad_width", bundle);
            int i2 = BundleUtils.getInt("ad_height", bundle);
            m6624c("ad_width", i);
            m6624c("ad_height", i2);
        }
    }

    /* renamed from: a */
    public void m6718a(MaxAdWaterfallInfo maxAdWaterfallInfo) {
        this.f3799d = maxAdWaterfallInfo;
    }

    /* renamed from: a */
    public void m6717a(String str) {
        this.f3800e = str;
    }

    /* renamed from: b */
    public JSONObject m6715b() {
        return m6634a("ad_values", new JSONObject());
    }

    /* renamed from: c */
    public JSONObject m6714c() {
        return m6634a("revenue_parameters", new JSONObject());
    }

    /* renamed from: d */
    public String m6713d() {
        return JsonUtils.getString(m6714c(), "revenue_event", "");
    }

    /* renamed from: e */
    public boolean m6712e() {
        C1191g c1191g = this.f3797a;
        boolean z = false;
        if (c1191g != null) {
            z = false;
            if (c1191g.m6135f()) {
                z = false;
                if (this.f3797a.m6133g()) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public String m6711f() {
        return m6636a("event_id", "");
    }

    /* renamed from: g */
    public C1191g m6710g() {
        return this.f3797a;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str) {
        return getAdValue(str, null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str, String str2) {
        JSONObject m6715b = m6715b();
        return m6715b.has(str) ? JsonUtils.getString(m6715b, str, str2) : m6645W().getString(str, str2);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getCreativeId() {
        return m6627b("creative_id", (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdFormat getFormat() {
        return MaxAdFormat.formatFromString(m6627b("ad_format", m6636a("ad_format", (String) null)));
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkName() {
        return m6627b("network_name", "");
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkPlacement() {
        return StringUtils.emptyIfNull(m6705l());
    }

    @Override // com.applovin.mediation.MaxAd
    public double getRevenue() {
        return JsonUtils.getDouble(m6634a("revenue_parameters", (JSONObject) null), "revenue", -1.0d);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getRevenuePrecision() {
        return JsonUtils.getString(m6634a("revenue_parameters", (JSONObject) null), "precision", "");
    }

    @Override // com.applovin.mediation.MaxAd
    public AppLovinSdkUtils.Size getSize() {
        int m6630b = m6630b("ad_width", -3);
        int m6630b2 = m6630b("ad_height", -3);
        return (m6630b == -3 || m6630b2 == -3) ? getFormat().getSize() : new AppLovinSdkUtils.Size(m6630b, m6630b2);
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdWaterfallInfo getWaterfall() {
        return this.f3799d;
    }

    /* renamed from: h */
    public Bundle m6709h() {
        JSONObject jSONObject;
        if (m6631b("credentials")) {
            jSONObject = m6634a("credentials", new JSONObject());
        } else {
            jSONObject = m6634a("server_parameters", new JSONObject());
            JsonUtils.putString(jSONObject, FacebookMediationAdapter.RTB_PLACEMENT_PARAMETER, m6705l());
        }
        return JsonUtils.toBundle(jSONObject);
    }

    /* renamed from: i */
    public String m6708i() {
        return m6627b("bid_response", (String) null);
    }

    /* renamed from: j */
    public long m6707j() {
        return m6629b("bid_expiration_ms", BundleUtils.getLong("bid_expiration_ms", -1L, m6645W()));
    }

    /* renamed from: k */
    public boolean m6706k() {
        return m6628b("is_js_tag_ad", Boolean.FALSE).booleanValue();
    }

    /* renamed from: l */
    public String m6705l() {
        return m6627b("third_party_ad_placement_id", (String) null);
    }

    /* renamed from: m */
    public String m6704m() {
        return m6636a("waterfall_name", "");
    }

    /* renamed from: n */
    public String m6703n() {
        return m6636a("waterfall_test_name", "");
    }

    /* renamed from: o */
    public long m6702o() {
        if (m6696u() > 0) {
            return m6700q() - m6696u();
        }
        return -1L;
    }

    /* renamed from: p */
    public void m6701p() {
        m6623c("load_started_time_ms", SystemClock.elapsedRealtime());
    }

    /* renamed from: q */
    public long m6700q() {
        return m6629b("load_completed_time_ms", 0L);
    }

    /* renamed from: r */
    public void m6699r() {
        m6623c("load_completed_time_ms", SystemClock.elapsedRealtime());
    }

    /* renamed from: s */
    public AtomicBoolean m6698s() {
        return this.f3798c;
    }

    /* renamed from: t */
    public void m6697t() {
        this.f3797a = null;
        this.f3799d = null;
    }

    @Override // com.applovin.impl.mediation.p038a.C1049f
    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MediatedAd{thirdPartyAdPlacementId=");
        m8752j.append(m6705l());
        m8752j.append(", adUnitId=");
        m8752j.append(getAdUnitId());
        m8752j.append(", format=");
        m8752j.append(getFormat().getLabel());
        m8752j.append(", networkName='");
        m8752j.append(getNetworkName());
        m8752j.append("'}");
        return m8752j.toString();
    }
}
