package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.C1281a;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.s */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/s.class */
public class C1376s extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final JSONObject f5207a;

    /* renamed from: c */
    private final JSONObject f5208c;

    /* renamed from: d */
    private final AppLovinAdLoadListener f5209d;

    /* renamed from: e */
    private final EnumC1282b f5210e;

    public C1376s(JSONObject jSONObject, JSONObject jSONObject2, EnumC1282b enumC1282b, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        super("TaskRenderAppLovinAd", c1408l);
        this.f5207a = jSONObject;
        this.f5208c = jSONObject2;
        this.f5210e = enumC1282b;
        this.f5209d = appLovinAdLoadListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        m5733a("Rendering ad...");
        C1281a c1281a = new C1281a(this.f5207a, this.f5208c, this.f5210e, this.f5113b);
        boolean booleanValue = JsonUtils.getBoolean(this.f5207a, "gs_load_immediately", Boolean.FALSE).booleanValue();
        boolean booleanValue2 = JsonUtils.getBoolean(this.f5207a, "vs_load_immediately", Boolean.TRUE).booleanValue();
        C1340d c1340d = new C1340d(c1281a, this.f5113b, this.f5209d);
        c1340d.m5693a(booleanValue2);
        c1340d.m5692b(booleanValue);
        C1362o.EnumC1364a enumC1364a = C1362o.EnumC1364a.CACHING_OTHER;
        C1362o.EnumC1364a enumC1364a2 = enumC1364a;
        if (((Boolean) this.f5113b.m5511a(C1314b.f4807bj)).booleanValue()) {
            AppLovinAdSize size = c1281a.getSize();
            AppLovinAdSize appLovinAdSize = AppLovinAdSize.INTERSTITIAL;
            if (size == appLovinAdSize && c1281a.getType() == AppLovinAdType.REGULAR) {
                enumC1364a2 = C1362o.EnumC1364a.CACHING_INTERSTITIAL;
            } else {
                enumC1364a2 = enumC1364a;
                if (c1281a.getSize() == appLovinAdSize) {
                    enumC1364a2 = enumC1364a;
                    if (c1281a.getType() == AppLovinAdType.INCENTIVIZED) {
                        enumC1364a2 = C1362o.EnumC1364a.CACHING_INCENTIVIZED;
                    }
                }
            }
        }
        this.f5113b.m5525R().m5653a(c1340d, enumC1364a2);
    }
}
