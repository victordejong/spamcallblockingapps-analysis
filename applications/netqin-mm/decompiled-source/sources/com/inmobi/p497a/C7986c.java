package com.inmobi.p497a;

import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.p513e.C8376f;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.a.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/c.class */
public class C7986c {

    /* renamed from: e */
    public static final String f31184e = "c";

    /* renamed from: c */
    public String f31187c;

    /* renamed from: f */
    public C8384d f31189f;

    /* renamed from: a */
    public boolean f31185a = true;

    /* renamed from: d */
    public int f31188d = 0;

    /* renamed from: b */
    public List<C7987d> f31186b = new ArrayList();

    public C7986c(C8384d dVar) {
        this.f31189f = dVar;
        m6781a();
        if (this.f31185a) {
            try {
                C8366b.m5794a().m5792a(new C8376f("signals", "InvalidCarbGetResponse"));
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                sb.append(e.getMessage());
                sb.append(")");
            }
        }
    }

    /* renamed from: a */
    private void m6781a() {
        if (!this.f31189f.m5733a()) {
            try {
                JSONObject jSONObject = new JSONObject(this.f31189f.m5731b());
                if (jSONObject.getBoolean("success")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    this.f31187c = jSONObject2.getString("req_id");
                    JSONArray jSONArray = jSONObject2.getJSONArray("p_apps");
                    int i = 0;
                    while (i < jSONArray.length()) {
                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                        String optString = jSONObject3.optString("bid", null);
                        String optString2 = jSONObject3.optString("inm_id", null);
                        if (!(optString == null || optString2 == null || optString2.trim().length() <= 0)) {
                            this.f31186b.add(new C7987d(optString, optString2));
                        }
                        i++;
                        this.f31188d = i;
                    }
                } else {
                    new StringBuilder("Error response for Carb list received. Error code:").append(jSONObject.optInt("errorCode"));
                }
                this.f31185a = false;
            } catch (JSONException e) {
            }
        } else {
            new StringBuilder("Error response for Carb list received. Error code:").append(this.f31189f.f32624b.f32582a);
        }
    }
}
