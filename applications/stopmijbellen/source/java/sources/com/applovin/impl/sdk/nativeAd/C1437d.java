package com.applovin.impl.sdk.nativeAd;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAdFormat;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.nativeAd.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/d.class */
public class C1437d extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final JSONObject f5391a;

    /* renamed from: c */
    private final AppLovinNativeAdLoadListener f5392c;

    public C1437d(JSONObject jSONObject, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, C1408l c1408l) {
        super("TaskProcessNativeAdResponse", c1408l);
        this.f5391a = jSONObject;
        this.f5392c = appLovinNativeAdLoadListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray = JsonUtils.getJSONArray(this.f5391a, "ads", new JSONArray());
        if (jSONArray.length() > 0) {
            m5733a("Processing ad...");
            this.f5113b.m5525R().m5654a(new C1438e(JsonUtils.getJSONObject(jSONArray, 0, new JSONObject()), this.f5391a, this.f5392c, this.f5113b));
            return;
        }
        m5730c("No ads were returned from the server");
        Utils.maybeHandleNoFillResponseForPublisher("native_native", MaxAdFormat.NATIVE, this.f5391a, this.f5113b);
        this.f5392c.onNativeAdLoadFailed(204);
    }
}
