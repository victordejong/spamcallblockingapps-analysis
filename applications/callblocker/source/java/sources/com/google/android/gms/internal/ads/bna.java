package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bna.class */
public final class bna implements bmv<ake> {

    /* renamed from: a */
    private final ajy f11576a;

    /* renamed from: b */
    private final Context f11577b;

    /* renamed from: c */
    private final bee f11578c;

    /* renamed from: d */
    private final chh f11579d;

    /* renamed from: e */
    private final Executor f11580e;

    public bna(ajy ajyVar, Context context, Executor executor, bee beeVar, chh chhVar) {
        this.f11577b = context;
        this.f11576a = ajyVar;
        this.f11580e = executor;
        this.f11578c = beeVar;
        this.f11579d = chhVar;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11758a(chd chdVar, cgr cgrVar, Object obj) {
        dyd m11312a = chk.m11312a(this.f11577b, cgrVar.f12996r);
        act m12038a = this.f11578c.m12038a(m11312a);
        ajs mo13044a = this.f11576a.mo13044a(new amy(chdVar, cgrVar, null), new ajr(m12038a.getView(), m12038a, chk.m11311a(m11312a), cgrVar.f12972R, cgrVar.f12976V, cgrVar.f12960F));
        mo13044a.mo13051i().m12031a(m12038a, false);
        mo13044a.mo12941d().m12773a(new aqi(m12038a) { // from class: com.google.android.gms.internal.ads.bnc

            /* renamed from: a */
            private final act f11582a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11582a = m12038a;
            }

            @Override // com.google.android.gms.internal.ads.aqi
            /* renamed from: b */
            public final void mo11652b() {
                act actVar = this.f11582a;
                if (actVar.mo13426v() != null) {
                    actVar.mo13426v().mo13508g();
                }
            }
        }, C3650yg.f17647f);
        mo13044a.mo13051i();
        return crg.m10783a(beh.m12032a(m12038a, cgrVar.f12994p.f13013b, cgrVar.f12994p.f13012a), new coe(mo13044a) { // from class: com.google.android.gms.internal.ads.bnb

            /* renamed from: a */
            private final ajs f11581a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11581a = mo13044a;
            }

            @Override // com.google.android.gms.internal.ads.coe
            /* renamed from: a */
            public final Object mo7184a(Object obj2) {
                return this.f11581a.mo13052h();
            }
        }, C3650yg.f17647f);
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return (cgrVar.f12994p == null || cgrVar.f12994p.f13012a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<ake> mo11688b(chd chdVar, cgr cgrVar) {
        return crg.m10782a(crg.m10778a((Object) null), new cqt(this, chdVar, cgrVar) { // from class: com.google.android.gms.internal.ads.bmz

            /* renamed from: a */
            private final bna f11573a;

            /* renamed from: b */
            private final chd f11574b;

            /* renamed from: c */
            private final cgr f11575c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11573a = this;
                this.f11574b = chdVar;
                this.f11575c = cgrVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11573a.m11758a(this.f11574b, this.f11575c, obj);
            }
        }, this.f11580e);
    }
}
