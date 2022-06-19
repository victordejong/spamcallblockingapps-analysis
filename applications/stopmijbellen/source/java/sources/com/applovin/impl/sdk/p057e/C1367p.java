package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.C1285d;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.google.android.gms.ads.AdError;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.p */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/p.class */
public class C1367p extends AbstractRunnableC1331a implements AppLovinAdLoadListener {

    /* renamed from: a */
    private final JSONObject f5193a;

    /* renamed from: c */
    private final C1285d f5194c;

    /* renamed from: d */
    private final EnumC1282b f5195d;

    /* renamed from: e */
    private final AppLovinAdLoadListener f5196e;

    public C1367p(JSONObject jSONObject, C1285d c1285d, EnumC1282b enumC1282b, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        super("TaskProcessAdResponse", c1408l);
        if (jSONObject != null) {
            if (c1285d == null) {
                throw new IllegalArgumentException("No zone specified");
            }
            this.f5193a = jSONObject;
            this.f5194c = c1285d;
            this.f5195d = enumC1282b;
            this.f5196e = appLovinAdLoadListener;
            return;
        }
        throw new IllegalArgumentException("No response specified");
    }

    /* renamed from: a */
    private void m5643a(JSONObject jSONObject) {
        AbstractRunnableC1331a c1368q;
        String string = JsonUtils.getString(jSONObject, "type", AdError.UNDEFINED_DOMAIN);
        if ("applovin".equalsIgnoreCase(string)) {
            m5733a("Starting task for AppLovin ad...");
            c1368q = new C1376s(jSONObject, this.f5193a, this.f5195d, this, this.f5113b);
        } else if ("vast".equalsIgnoreCase(string)) {
            m5733a("Starting task for VAST ad...");
            this.f5113b.m5525R().m5654a(AbstractC1371r.m5630a(jSONObject, this.f5193a, this.f5195d, this, this.f5113b));
            return;
        } else if (!"js_tag".equalsIgnoreCase(string)) {
            m5730c("Unable to process ad of unknown type: " + string);
            failedToReceiveAd(AppLovinErrorCodes.INVALID_RESPONSE);
            return;
        } else {
            m5733a("Starting task for JS tag ad...");
            c1368q = new C1368q(jSONObject, this.f5193a, this.f5195d, this, this.f5113b);
        }
        this.f5113b.m5525R().m5654a(c1368q);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        AppLovinAdLoadListener appLovinAdLoadListener = this.f5196e;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        AppLovinAdLoadListener appLovinAdLoadListener = this.f5196e;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.failedToReceiveAd(i);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray = JsonUtils.getJSONArray(this.f5193a, "ads", new JSONArray());
        if (jSONArray.length() > 0) {
            m5733a("Processing ad...");
            m5643a(JsonUtils.getJSONObject(jSONArray, 0, new JSONObject()));
            return;
        }
        m5730c("No ads were returned from the server");
        Utils.maybeHandleNoFillResponseForPublisher(this.f5194c.m6009a(), this.f5194c.m6004b(), this.f5193a, this.f5113b);
        failedToReceiveAd(204);
    }
}
