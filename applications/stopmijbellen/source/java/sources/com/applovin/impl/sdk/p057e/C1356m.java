package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.Utils;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.m */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/m.class */
public class C1356m extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final AbstractC1358a f5154a;

    /* renamed from: com.applovin.impl.sdk.e.m$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/m$a.class */
    public interface AbstractC1358a {
        /* renamed from: a */
        void mo5659a();
    }

    public C1356m(C1408l c1408l, AbstractC1358a abstractC1358a) {
        super("TaskFetchVariables", c1408l);
        this.f5154a = abstractC1358a;
    }

    /* renamed from: a */
    private Map<String, String> m5663a() {
        return Utils.stringifyObjectMap(this.f5113b.m5522U().m5408a(null, false, false));
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractC1378u<JSONObject> abstractC1378u = new AbstractC1378u<JSONObject>(C1447c.m5327a(this.f5113b).mo5192a(C1493h.m5043k(this.f5113b)).mo5181c(C1493h.m5042l(this.f5113b)).mo5191a(m5663a()).mo5185b("GET").mo5193a((C1447c.C1448a) new JSONObject()).mo5188b(((Integer) this.f5113b.m5511a(C1314b.f4905dd)).intValue()).mo5196a(), this.f5113b) { // from class: com.applovin.impl.sdk.e.m.1
            /* renamed from: a */
            public void mo5331a(int i, String str, JSONObject jSONObject) {
                m5728d("Unable to fetch variables: server returned " + i);
                C1479t.m5107i("AppLovinVariableService", "Failed to load variables.");
                C1356m.this.f5154a.mo5659a();
            }

            /* renamed from: a */
            public void mo5330a(JSONObject jSONObject, int i) {
                C1493h.m5052d(jSONObject, this.f5113b);
                C1493h.m5053c(jSONObject, this.f5113b);
                C1493h.m5048f(jSONObject, this.f5113b);
                C1493h.m5050e(jSONObject, this.f5113b);
                C1356m.this.f5154a.mo5659a();
            }
        };
        abstractC1378u.m5627a(C1314b.f4743aY);
        abstractC1378u.m5623b(C1314b.f4744aZ);
        this.f5113b.m5525R().m5654a(abstractC1378u);
    }
}
