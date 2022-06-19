package com.applovin.impl.sdk.p057e;

import android.text.TextUtils;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1420n;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdk;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/b.class */
public class C1335b extends AbstractRunnableC1331a {
    public C1335b(C1408l c1408l) {
        super("TaskApiSubmitData", c1408l);
    }

    /* renamed from: a */
    public void m5716a(JSONObject jSONObject) {
        try {
            JSONObject m5057a = C1493h.m5057a(jSONObject);
            this.f5113b.m5533J().m5825a(C1314b.f4715X, m5057a.getString("device_id"));
            this.f5113b.m5533J().m5825a(C1314b.f4717Z, m5057a.getString("device_token"));
            this.f5113b.m5533J().m5825a(C1314b.f4745aa, Long.valueOf(m5057a.getLong("publisher_id")));
            C1493h.m5052d(m5057a, this.f5113b);
            C1493h.m5050e(m5057a, this.f5113b);
            String string = JsonUtils.getString(m5057a, "latest_version", "");
            if (!TextUtils.isEmpty(string)) {
                String str = AppLovinSdk.VERSION;
                if (!str.equals(string)) {
                    String str2 = "Current SDK version (" + str + ") is outdated. Please integrate the latest version of the AppLovin SDK (" + string + "). Doing so will improve your CPMs and ensure you have access to the latest revenue earning features.";
                    String str3 = str2;
                    if (JsonUtils.valueExists(m5057a, "sdk_update_message")) {
                        str3 = JsonUtils.getString(m5057a, "sdk_update_message", str2);
                    }
                    C1479t.m5108h("AppLovinSdk", str3);
                }
            }
            this.f5113b.m5524S().m5739b();
        } catch (Throwable th) {
            m5732a("Unable to parse API response", th);
        }
    }

    /* renamed from: b */
    private void m5715b(JSONObject jSONObject) throws JSONException {
        C1420n m5522U = this.f5113b.m5522U();
        Map<String, Object> m5400d = m5522U.m5400d();
        Utils.renameKeyInObjectMap("platform", "type", m5400d);
        Utils.renameKeyInObjectMap("api_level", "sdk_version", m5400d);
        jSONObject.put("device_info", new JSONObject(m5400d));
        Map<String, Object> m5395h = m5522U.m5395h();
        Utils.renameKeyInObjectMap("sdk_version", "applovin_sdk_version", m5395h);
        Utils.renameKeyInObjectMap("ia", "installed_at", m5395h);
        jSONObject.put("app_info", new JSONObject(m5395h));
    }

    /* renamed from: c */
    private void m5714c(JSONObject jSONObject) {
        AbstractC1378u<JSONObject> abstractC1378u = new AbstractC1378u<JSONObject>(C1447c.m5327a(this.f5113b).mo5192a(C1493h.m5059a("2.0/device", this.f5113b)).mo5181c(C1493h.m5054b("2.0/device", this.f5113b)).mo5191a(C1493h.m5051e(this.f5113b)).mo5185b("POST").mo5190a(jSONObject).mo5175d(((Boolean) this.f5113b.m5511a(C1314b.f4970ew)).booleanValue()).mo5193a((C1447c.C1448a) new JSONObject()).mo5195a(((Integer) this.f5113b.m5511a(C1314b.f4846cW)).intValue()).mo5196a(), this.f5113b) { // from class: com.applovin.impl.sdk.e.b.1
            /* renamed from: a */
            public void mo5331a(int i, String str, JSONObject jSONObject2) {
                C1493h.m5064a(i, this.f5113b);
            }

            /* renamed from: a */
            public void mo5330a(JSONObject jSONObject2, int i) {
                C1335b.this.m5716a(jSONObject2);
            }
        };
        abstractC1378u.m5627a(C1314b.f4739aU);
        abstractC1378u.m5623b(C1314b.f4740aV);
        this.f5113b.m5525R().m5654a(abstractC1378u);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            m5731b("Submitting user data...");
            JSONObject jSONObject = new JSONObject();
            m5715b(jSONObject);
            m5714c(jSONObject);
        } catch (JSONException e) {
            m5732a("Unable to build JSON message with collected data", e);
        }
    }
}
