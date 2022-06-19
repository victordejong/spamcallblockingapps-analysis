package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.network.C1442b;
import com.applovin.impl.sdk.p054b.C1311c;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.ab */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/ab.class */
public abstract class AbstractC1333ab extends AbstractC1385y {
    public AbstractC1333ab(String str, C1408l c1408l) {
        super(str, c1408l);
    }

    /* renamed from: b */
    public void m5721b(JSONObject jSONObject) {
        C1311c m5720c = m5720c(jSONObject);
        if (m5720c == null) {
            return;
        }
        mo5724a(m5720c);
        m5733a("Pending reward handled: " + m5720c);
    }

    /* renamed from: c */
    private C1311c m5720c(JSONObject jSONObject) {
        String str;
        try {
            JSONObject m5057a = C1493h.m5057a(jSONObject);
            C1493h.m5052d(m5057a, this.f5113b);
            C1493h.m5053c(jSONObject, this.f5113b);
            C1493h.m5050e(jSONObject, this.f5113b);
            Map<String, String> stringMap = JsonUtils.toStringMap((JSONObject) m5057a.get("params"));
            try {
                str = m5057a.getString("result");
            } catch (Throwable th) {
                str = "network_timeout";
            }
            return C1311c.m5841a(str, stringMap);
        } catch (JSONException e) {
            m5732a("Unable to parse API response", e);
            return null;
        }
    }

    /* renamed from: a */
    public abstract void mo5724a(C1311c c1311c);

    /* renamed from: b */
    public abstract boolean mo5722b();

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: h */
    public int mo5602h() {
        return ((Integer) this.f5113b.m5511a(C1314b.f4816bs)).intValue();
    }

    @Override // java.lang.Runnable
    public void run() {
        m5603a(m5601i(), new C1442b.AbstractC1446c<JSONObject>() { // from class: com.applovin.impl.sdk.e.ab.1
            /* renamed from: a */
            public void mo5331a(int i, String str, JSONObject jSONObject) {
                if (AbstractC1333ab.this.mo5722b()) {
                    AbstractC1333ab abstractC1333ab = AbstractC1333ab.this;
                    abstractC1333ab.m5728d("Reward validation failed with error code " + i + " but task was cancelled already");
                    return;
                }
                AbstractC1333ab abstractC1333ab2 = AbstractC1333ab.this;
                abstractC1333ab2.m5728d("Reward validation failed with code " + i + " and error: " + str);
                AbstractC1333ab.this.mo5605a(i);
            }

            /* renamed from: a */
            public void mo5330a(JSONObject jSONObject, int i) {
                if (!AbstractC1333ab.this.mo5722b()) {
                    AbstractC1333ab abstractC1333ab = AbstractC1333ab.this;
                    abstractC1333ab.m5733a("Reward validation succeeded with code " + i + " and response: " + jSONObject);
                    AbstractC1333ab.this.m5721b(jSONObject);
                    return;
                }
                AbstractC1333ab abstractC1333ab2 = AbstractC1333ab.this;
                abstractC1333ab2.m5728d("Reward validation succeeded with code " + i + " but task was cancelled already");
                AbstractC1333ab abstractC1333ab3 = AbstractC1333ab.this;
                abstractC1333ab3.m5728d("Response: " + jSONObject);
            }
        });
    }
}
