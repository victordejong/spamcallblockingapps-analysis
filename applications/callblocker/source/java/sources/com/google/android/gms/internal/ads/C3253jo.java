package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.jo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jo.class */
public final class C3253jo<I, O> implements AbstractC3244jf<I, O> {

    /* renamed from: a */
    private final AbstractC3246jh<O> f16811a;

    /* renamed from: b */
    private final AbstractC3245jg<I> f16812b;

    /* renamed from: c */
    private final C3215id f16813c;

    /* renamed from: d */
    private final String f16814d;

    public C3253jo(C3215id c3215id, String str, AbstractC3245jg<I> abstractC3245jg, AbstractC3246jh<O> abstractC3246jh) {
        this.f16813c = c3215id;
        this.f16814d = str;
        this.f16812b = abstractC3245jg;
        this.f16811a = abstractC3246jh;
    }

    /* renamed from: a */
    public final void m7724a(C3228iq c3228iq, AbstractC3241jc abstractC3241jc, I i, C3658yo<O> c3658yo) {
        try {
            C2341q.m14744c();
            String m7011a = C3567ve.m7011a();
            C3115em.f16634o.m7836a(m7011a, new C3258jt(this, c3228iq, c3658yo));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", m7011a);
            jSONObject.put("args", this.f16812b.mo7728a(i));
            abstractC3241jc.mo7736a(this.f16814d, jSONObject);
        } catch (Exception e) {
            try {
                c3658yo.m6733a(e);
                C3556uu.m6748c("Unable to invokeJavascript", e);
            } finally {
                c3228iq.m7751a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cqt
    /* renamed from: a */
    public final crt<O> mo7012a(I i) {
        return mo7721b(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3244jf
    /* renamed from: b */
    public final crt<O> mo7721b(I i) {
        C3658yo c3658yo = new C3658yo();
        C3228iq m7758b = this.f16813c.m7758b((ctl) null);
        m7758b.m6726a(new C3256jr(this, m7758b, i, c3658yo), new C3255jq(this, c3658yo, m7758b));
        return c3658yo;
    }
}
