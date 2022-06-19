package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.network.C1442b;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.y */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/y.class */
public abstract class AbstractC1385y extends AbstractRunnableC1331a {
    public AbstractC1385y(String str, C1408l c1408l) {
        super(str, c1408l);
    }

    /* renamed from: a */
    public abstract String mo5606a();

    /* renamed from: a */
    public void mo5605a(int i) {
        C1493h.m5064a(i, this.f5113b);
    }

    /* renamed from: a */
    public abstract void mo5604a(JSONObject jSONObject);

    /* renamed from: a */
    public void m5603a(JSONObject jSONObject, final C1442b.AbstractC1446c<JSONObject> abstractC1446c) {
        AbstractC1378u<JSONObject> abstractC1378u = new AbstractC1378u<JSONObject>(C1447c.m5327a(this.f5113b).mo5192a(C1493h.m5059a(mo5606a(), this.f5113b)).mo5181c(C1493h.m5054b(mo5606a(), this.f5113b)).mo5191a(C1493h.m5051e(this.f5113b)).mo5185b("POST").mo5190a(jSONObject).mo5175d(((Boolean) this.f5113b.m5511a(C1314b.f4928eA)).booleanValue()).mo5193a((C1447c.C1448a) new JSONObject()).mo5195a(mo5602h()).mo5196a(), this.f5113b) { // from class: com.applovin.impl.sdk.e.y.1
            /* renamed from: a */
            public void mo5331a(int i, String str, JSONObject jSONObject2) {
                abstractC1446c.mo5331a(i, str, jSONObject2);
            }

            /* renamed from: a */
            public void mo5330a(JSONObject jSONObject2, int i) {
                abstractC1446c.mo5330a(jSONObject2, i);
            }
        };
        abstractC1378u.m5627a(C1314b.f4739aU);
        abstractC1378u.m5623b(C1314b.f4740aV);
        this.f5113b.m5525R().m5654a(abstractC1378u);
    }

    /* renamed from: h */
    public abstract int mo5602h();

    /* renamed from: i */
    public JSONObject m5601i() {
        JSONObject jSONObject = new JSONObject();
        String m5457m = this.f5113b.m5457m();
        if (((Boolean) this.f5113b.m5511a(C1314b.f4920ds)).booleanValue() && StringUtils.isValidString(m5457m)) {
            JsonUtils.putString(jSONObject, "cuid", m5457m);
        }
        if (((Boolean) this.f5113b.m5511a(C1314b.f4922du)).booleanValue()) {
            JsonUtils.putString(jSONObject, "compass_random_token", this.f5113b.m5456n());
        }
        if (((Boolean) this.f5113b.m5511a(C1314b.f4924dw)).booleanValue()) {
            JsonUtils.putString(jSONObject, "applovin_random_token", this.f5113b.m5455o());
        }
        mo5604a(jSONObject);
        return jSONObject;
    }
}
