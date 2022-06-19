package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ka */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ka.class */
public final class C3266ka<I, O> implements cqt<I, O> {

    /* renamed from: a */
    private final AbstractC3246jh<O> f16838a;

    /* renamed from: b */
    private final AbstractC3245jg<I> f16839b;

    /* renamed from: c */
    private final String f16840c;

    /* renamed from: d */
    private final crt<AbstractC3241jc> f16841d;

    public C3266ka(crt<AbstractC3241jc> crtVar, String str, AbstractC3245jg<I> abstractC3245jg, AbstractC3246jh<O> abstractC3246jh) {
        this.f16841d = crtVar;
        this.f16840c = str;
        this.f16839b = abstractC3245jg;
        this.f16838a = abstractC3246jh;
    }

    @Override // com.google.android.gms.internal.ads.cqt
    /* renamed from: a */
    public final crt<O> mo7012a(I i) {
        return crg.m10782a(this.f16841d, new cqt(this, i) { // from class: com.google.android.gms.internal.ads.jz

            /* renamed from: a */
            private final C3266ka f16836a;

            /* renamed from: b */
            private final Object f16837b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16836a = this;
                this.f16837b = i;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f16836a.m7697a(this.f16837b, (AbstractC3241jc) obj);
            }
        }, C3650yg.f17647f);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m7697a(Object obj, AbstractC3241jc abstractC3241jc) {
        C3658yo c3658yo = new C3658yo();
        C2341q.m14744c();
        String m7011a = C3567ve.m7011a();
        C3115em.f16634o.m7836a(m7011a, new C3268kc(this, c3658yo));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", m7011a);
        jSONObject.put("args", this.f16839b.mo7728a(obj));
        abstractC3241jc.mo7736a(this.f16840c, jSONObject);
        return c3658yo;
    }
}
