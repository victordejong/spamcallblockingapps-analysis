package com.applovin.impl.mediation.debugger.p044b;

import com.applovin.impl.mediation.p040c.C1106b;
import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.network.C1442b;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p057e.AbstractC1378u;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.debugger.b.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/b/a.class */
public class C1128a extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final C1442b.AbstractC1446c<JSONObject> f4087a;

    public C1128a(C1442b.AbstractC1446c<JSONObject> abstractC1446c, C1408l c1408l) {
        super("TaskFetchMediationDebuggerInfo", c1408l, true);
        this.f4087a = abstractC1446c;
    }

    /* renamed from: a */
    private JSONObject m6344a(C1408l c1408l) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("installed_mediation_adapters", C1107c.m6457a(c1408l));
        } catch (JSONException e) {
            m5732a("Failed to create mediation debugger request post body", e);
        }
        return jSONObject;
    }

    /* renamed from: b */
    private JSONObject m6343b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("installed_mediation_adapters", C1107c.m6457a(this.f5113b));
        } catch (JSONException e) {
            m5732a("Failed to construct JSON body", e);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public Map<String, String> m6346a() {
        HashMap hashMap = new HashMap();
        hashMap.put("sdk_version", AppLovinSdk.VERSION);
        if (!((Boolean) this.f5113b.m5511a(C1314b.f4963ep)).booleanValue()) {
            hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5113b.m5444z());
        }
        Map<String, Object> m5395h = this.f5113b.m5522U().m5395h();
        hashMap.put("package_name", String.valueOf(m5395h.get("package_name")));
        hashMap.put("app_version", String.valueOf(m5395h.get("app_version")));
        Map<String, Object> m5406b = this.f5113b.m5522U().m5406b();
        hashMap.put("platform", String.valueOf(m5406b.get("platform")));
        hashMap.put("os", String.valueOf(m5406b.get("os")));
        return hashMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractC1378u<JSONObject> abstractC1378u = new AbstractC1378u<JSONObject>(C1447c.m5327a(this.f5113b).mo5185b("POST").mo5192a(C1106b.m6460c(this.f5113b)).mo5181c(C1106b.m6459d(this.f5113b)).mo5191a(m6346a()).mo5190a(m6344a(this.f5113b)).mo5193a((C1447c.C1448a) new JSONObject()).mo5188b(((Long) this.f5113b.m5511a(C1313a.f4694g)).intValue()).mo5190a(m6343b()).mo5196a(), this.f5113b, m5725g()) { // from class: com.applovin.impl.mediation.debugger.b.a.1
            /* renamed from: a */
            public void mo5331a(int i, String str, JSONObject jSONObject) {
                C1128a.this.f4087a.mo5331a(i, str, jSONObject);
            }

            /* renamed from: a */
            public void mo5330a(JSONObject jSONObject, int i) {
                C1128a.this.f4087a.mo5330a(jSONObject, i);
            }
        };
        abstractC1378u.m5627a(C1313a.f4690c);
        abstractC1378u.m5623b(C1313a.f4691d);
        this.f5113b.m5525R().m5654a(abstractC1378u);
    }
}
