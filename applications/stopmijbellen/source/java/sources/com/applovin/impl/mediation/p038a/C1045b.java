package com.applovin.impl.mediation.p038a;

import android.view.View;
import com.applovin.impl.mediation.C1191g;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAdFormat;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.a.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/b.class */
public class C1045b extends AbstractC1048e {
    private C1045b(C1045b c1045b, C1191g c1191g) {
        super(c1045b.m6646V(), c1045b.m6655M(), c1045b.m6656L(), c1191g, c1045b.f3806b);
    }

    public C1045b(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, C1408l c1408l) {
        super(map, jSONObject, jSONObject2, null, c1408l);
    }

    /* renamed from: A */
    public boolean m6695A() {
        return m6628b("proe", (Boolean) this.f3806b.m5511a(C1313a.f4674I)).booleanValue();
    }

    /* renamed from: B */
    public long m6694B() {
        return Utils.parseColor(m6627b("bg_color", (String) null));
    }

    @Override // com.applovin.impl.mediation.p038a.AbstractC1044a
    /* renamed from: a */
    public AbstractC1044a mo6669a(C1191g c1191g) {
        return new C1045b(this, c1191g);
    }

    /* renamed from: u */
    public int m6693u() {
        int m6630b = m6630b("ad_view_width", -2);
        if (m6630b == -2) {
            MaxAdFormat format = getFormat();
            if (!format.isAdViewAd()) {
                throw new IllegalStateException("Invalid ad format");
            }
            return format.getSize().getWidth();
        }
        return m6630b;
    }

    /* renamed from: v */
    public int m6692v() {
        int m6630b = m6630b("ad_view_height", -2);
        if (m6630b == -2) {
            MaxAdFormat format = getFormat();
            if (!format.isAdViewAd()) {
                throw new IllegalStateException("Invalid ad format");
            }
            return format.getSize().getHeight();
        }
        return m6630b;
    }

    /* renamed from: w */
    public View m6691w() {
        C1191g c1191g;
        if (!m6712e() || (c1191g = ((AbstractC1044a) this).f3797a) == null) {
            return null;
        }
        return c1191g.m6165a();
    }

    /* renamed from: x */
    public long m6690x() {
        return m6629b("viewability_imp_delay_ms", ((Long) this.f3806b.m5511a(C1314b.f4780bI)).longValue());
    }

    /* renamed from: y */
    public boolean m6689y() {
        return m6688z() >= 0;
    }

    /* renamed from: z */
    public long m6688z() {
        long m6629b = m6629b("ad_refresh_ms", -1L);
        return m6629b >= 0 ? m6629b : m6638a("ad_refresh_ms", ((Long) this.f3806b.m5511a(C1313a.f4700m)).longValue());
    }
}
