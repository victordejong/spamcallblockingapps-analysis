package com.applovin.impl.mediation.debugger.p041a.p042a;

import com.applovin.impl.mediation.debugger.p041a.p043b.C1123b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.debugger.a.a.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/a/a/c.class */
public class C1120c {

    /* renamed from: a */
    private final String f4032a;

    /* renamed from: b */
    private final boolean f4033b;

    /* renamed from: c */
    private final List<C1119b> f4034c;

    /* renamed from: d */
    private final List<C1119b> f4035d;

    public C1120c(JSONObject jSONObject, Map<String, C1123b> map, C1408l c1408l) {
        this.f4032a = JsonUtils.getString(jSONObject, AppMeasurementSdk.ConditionalUserProperty.NAME, "");
        this.f4033b = JsonUtils.getBoolean(jSONObject, "default", Boolean.FALSE).booleanValue();
        this.f4034c = m6395a("bidders", jSONObject, map, c1408l);
        this.f4035d = m6395a("waterfall", jSONObject, map, c1408l);
    }

    /* renamed from: a */
    private List<C1119b> m6395a(String str, JSONObject jSONObject, Map<String, C1123b> map, C1408l c1408l) {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, str, new JSONArray());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                String string = JsonUtils.getString(jSONObject2, "adapter_class", "");
                C1123b c1123b = map.get(string);
                if (c1123b == null) {
                    c1408l.m5542A().m5111e("AdUnitWaterfall", "Failed to retrieve network info for adapter class: " + string);
                } else {
                    arrayList.add(new C1119b(jSONObject2, c1123b, c1408l));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public List<C1119b> m6396a() {
        return this.f4034c;
    }

    /* renamed from: b */
    public List<C1119b> m6394b() {
        return this.f4035d;
    }

    /* renamed from: c */
    public boolean m6393c() {
        return this.f4033b;
    }
}
