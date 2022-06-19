package com.applovin.impl.mediation.debugger.p041a.p042a;

import com.applovin.impl.mediation.debugger.p041a.p043b.C1123b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.debugger.a.a.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/a/a/b.class */
public class C1119b {

    /* renamed from: a */
    private final C1123b f4027a;

    /* renamed from: b */
    private final String f4028b;

    /* renamed from: c */
    private final String f4029c;

    /* renamed from: d */
    private final C1121d f4030d;

    /* renamed from: e */
    private final List<C1121d> f4031e;

    public C1119b(JSONObject jSONObject, C1123b c1123b, C1408l c1408l) {
        this.f4027a = c1123b;
        this.f4028b = JsonUtils.getString(jSONObject, AppMeasurementSdk.ConditionalUserProperty.NAME, "");
        this.f4029c = JsonUtils.getString(jSONObject, "display_name", "");
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "bidder_placement", (JSONObject) null);
        if (jSONObject2 != null) {
            this.f4030d = new C1121d(jSONObject2, c1408l);
        } else {
            this.f4030d = null;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "placements", new JSONArray());
        this.f4031e = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject3 != null) {
                this.f4031e.add(new C1121d(jSONObject3, c1408l));
            }
        }
    }

    /* renamed from: a */
    public C1123b m6402a() {
        return this.f4027a;
    }

    /* renamed from: b */
    public String m6401b() {
        return this.f4028b;
    }

    /* renamed from: c */
    public String m6400c() {
        return this.f4029c;
    }

    /* renamed from: d */
    public C1121d m6399d() {
        return this.f4030d;
    }

    /* renamed from: e */
    public boolean m6398e() {
        return this.f4030d != null;
    }

    /* renamed from: f */
    public List<C1121d> m6397f() {
        return this.f4031e;
    }
}
