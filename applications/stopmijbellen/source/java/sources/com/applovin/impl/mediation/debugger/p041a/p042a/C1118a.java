package com.applovin.impl.mediation.debugger.p041a.p042a;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.debugger.p041a.p043b.C1123b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.debugger.a.a.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/a/a/a.class */
public class C1118a implements Comparable<C1118a> {

    /* renamed from: a */
    private final String f4022a;

    /* renamed from: b */
    private final String f4023b;

    /* renamed from: c */
    private final MaxAdFormat f4024c;

    /* renamed from: d */
    private final C1120c f4025d;

    /* renamed from: e */
    private final List<C1120c> f4026e;

    public C1118a(JSONObject jSONObject, Map<String, C1123b> map, C1408l c1408l) {
        this.f4022a = JsonUtils.getString(jSONObject, AppMeasurementSdk.ConditionalUserProperty.NAME, "");
        this.f4023b = JsonUtils.getString(jSONObject, "display_name", "");
        this.f4024c = MaxAdFormat.formatFromString(JsonUtils.getString(jSONObject, "format", null));
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "waterfalls", new JSONArray());
        this.f4026e = new ArrayList(jSONArray.length());
        int i = 0;
        C1120c c1120c = null;
        while (true) {
            C1120c c1120c2 = c1120c;
            if (i >= jSONArray.length()) {
                this.f4025d = c1120c2;
                return;
            }
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            C1120c c1120c3 = c1120c2;
            if (jSONObject2 != null) {
                C1120c c1120c4 = new C1120c(jSONObject2, map, c1408l);
                this.f4026e.add(c1120c4);
                c1120c3 = c1120c2;
                if (c1120c2 == null) {
                    c1120c3 = c1120c2;
                    if (c1120c4.m6393c()) {
                        c1120c3 = c1120c4;
                    }
                }
            }
            i++;
            c1120c = c1120c3;
        }
    }

    /* renamed from: g */
    private C1120c m6403g() {
        return !this.f4026e.isEmpty() ? this.f4026e.get(0) : null;
    }

    /* renamed from: a */
    public int compareTo(C1118a c1118a) {
        return this.f4023b.compareToIgnoreCase(c1118a.f4023b);
    }

    /* renamed from: a */
    public String m6410a() {
        return this.f4022a;
    }

    /* renamed from: b */
    public String m6408b() {
        return this.f4023b;
    }

    /* renamed from: c */
    public String m6407c() {
        MaxAdFormat maxAdFormat = this.f4024c;
        return maxAdFormat != null ? maxAdFormat.getDisplayName() : "Unknown";
    }

    /* renamed from: d */
    public MaxAdFormat m6406d() {
        return this.f4024c;
    }

    /* renamed from: e */
    public C1120c m6405e() {
        C1120c c1120c = this.f4025d;
        if (c1120c == null) {
            c1120c = m6403g();
        }
        return c1120c;
    }

    /* renamed from: f */
    public String m6404f() {
        StringBuilder m8752j = C0082b.m8752j("\n---------- ");
        m8752j.append(this.f4023b);
        m8752j.append(" ----------");
        m8752j.append("\nIdentifier - ");
        m8752j.append(this.f4022a);
        m8752j.append("\nFormat     - ");
        m8752j.append(m6407c());
        return m8752j.toString();
    }
}
