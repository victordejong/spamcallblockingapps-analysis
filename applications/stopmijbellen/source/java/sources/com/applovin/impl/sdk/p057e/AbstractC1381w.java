package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.network.C1442b;
import com.applovin.impl.sdk.p054b.C1311c;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.w */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/w.class */
public abstract class AbstractC1381w extends AbstractC1385y {
    public AbstractC1381w(String str, C1408l c1408l) {
        super(str, c1408l);
    }

    /* renamed from: a */
    private JSONObject m5618a(C1311c c1311c) {
        JSONObject m5601i = m5601i();
        JsonUtils.putString(m5601i, "result", c1311c.m5840b());
        Map<String, String> m5843a = c1311c.m5843a();
        if (m5843a != null) {
            JsonUtils.putJSONObject(m5601i, "params", new JSONObject(m5843a));
        }
        return m5601i;
    }

    /* renamed from: b */
    public abstract C1311c mo5617b();

    /* renamed from: b */
    public abstract void mo5616b(JSONObject jSONObject);

    /* renamed from: c */
    public abstract void mo5615c();

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: h */
    public int mo5602h() {
        return ((Integer) this.f5113b.m5511a(C1314b.f4817bt)).intValue();
    }

    @Override // java.lang.Runnable
    public void run() {
        C1311c mo5617b = mo5617b();
        if (mo5617b == null) {
            m5728d("Pending reward not found");
            mo5615c();
            return;
        }
        m5733a("Reporting pending reward: " + mo5617b + "...");
        m5603a(m5618a(mo5617b), new C1442b.AbstractC1446c<JSONObject>() { // from class: com.applovin.impl.sdk.e.w.1
            /* renamed from: a */
            public void mo5331a(int i, String str, JSONObject jSONObject) {
                AbstractC1381w.this.mo5605a(i);
            }

            /* renamed from: a */
            public void mo5330a(JSONObject jSONObject, int i) {
                AbstractC1381w.this.mo5616b(jSONObject);
            }
        });
    }
}
