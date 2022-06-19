package com.applovin.impl.mediation.p038a;

import com.applovin.impl.mediation.C1191g;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.a.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/d.class */
public class C1047d extends AbstractC1048e {

    /* renamed from: c */
    private final AtomicBoolean f3804c = new AtomicBoolean();

    private C1047d(C1047d c1047d, C1191g c1191g) {
        super(c1047d.m6646V(), c1047d.m6655M(), c1047d.m6656L(), c1191g, c1047d.f3806b);
    }

    public C1047d(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, C1408l c1408l) {
        super(map, jSONObject, jSONObject2, null, c1408l);
    }

    @Override // com.applovin.impl.mediation.p038a.AbstractC1044a
    /* renamed from: a */
    public AbstractC1044a mo6669a(C1191g c1191g) {
        return new C1047d(this, c1191g);
    }

    /* renamed from: a */
    public void m6668a(MaxNativeAdView maxNativeAdView) {
        ((AbstractC1044a) this).f3797a.m6153a(maxNativeAdView);
    }

    /* renamed from: u */
    public MaxNativeAd m6667u() {
        return ((AbstractC1044a) this).f3797a.m6146b();
    }

    /* renamed from: v */
    public MaxNativeAdView m6666v() {
        return ((AbstractC1044a) this).f3797a.m6141c();
    }

    /* renamed from: w */
    public String m6665w() {
        return BundleUtils.getString("template", "", m6645W());
    }

    /* renamed from: x */
    public boolean m6664x() {
        return ((AbstractC1044a) this).f3797a == null;
    }

    /* renamed from: y */
    public AtomicBoolean m6663y() {
        return this.f3804c;
    }
}
