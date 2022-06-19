package com.applovin.impl.mediation.p038a;

import com.applovin.impl.mediation.C1191g;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.mediation.MaxAdFormat;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.a.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/e.class */
public abstract class AbstractC1048e extends AbstractC1044a {
    public AbstractC1048e(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, C1191g c1191g, C1408l c1408l) {
        super(map, jSONObject, jSONObject2, c1191g, c1408l);
    }

    /* renamed from: C */
    public int m6662C() {
        MaxAdFormat format = getFormat();
        C1314b<Integer> c1314b = format == MaxAdFormat.BANNER ? C1314b.f4781bJ : format == MaxAdFormat.MREC ? C1314b.f4783bL : format == MaxAdFormat.LEADER ? C1314b.f4785bN : format == MaxAdFormat.NATIVE ? C1314b.f4787bP : null;
        if (c1314b != null) {
            return m6630b("viewability_min_width", ((Integer) this.f3806b.m5511a(c1314b)).intValue());
        }
        return 0;
    }

    /* renamed from: D */
    public int m6661D() {
        MaxAdFormat format = getFormat();
        C1314b<Integer> c1314b = format == MaxAdFormat.BANNER ? C1314b.f4782bK : format == MaxAdFormat.MREC ? C1314b.f4784bM : format == MaxAdFormat.LEADER ? C1314b.f4786bO : format == MaxAdFormat.NATIVE ? C1314b.f4788bQ : null;
        if (c1314b != null) {
            return m6630b("viewability_min_height", ((Integer) this.f3806b.m5511a(c1314b)).intValue());
        }
        return 0;
    }

    /* renamed from: E */
    public float m6660E() {
        return m6640a("viewability_min_alpha", ((Float) this.f3806b.m5511a(C1314b.f4789bR)).floatValue() / 100.0f);
    }

    /* renamed from: F */
    public int m6659F() {
        return m6630b("viewability_min_pixels", -1);
    }

    /* renamed from: G */
    public boolean m6658G() {
        return m6659F() >= 0;
    }

    /* renamed from: H */
    public long m6657H() {
        return m6629b("viewability_timer_min_visible_ms", ((Long) this.f3806b.m5511a(C1314b.f4790bS)).longValue());
    }
}
