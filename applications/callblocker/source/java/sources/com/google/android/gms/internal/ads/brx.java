package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/brx.class */
public final class brx<AdT> implements bmv<AdT> {

    /* renamed from: a */
    private final AbstractC3535u f12136a;

    /* renamed from: b */
    private final crs f12137b;

    /* renamed from: c */
    private final ckz f12138c;

    /* renamed from: d */
    private final bry<AdT> f12139d;

    public brx(ckz ckzVar, crs crsVar, AbstractC3535u abstractC3535u, bry<AdT> bryVar) {
        this.f12138c = ckzVar;
        this.f12137b = crsVar;
        this.f12136a = abstractC3535u;
        this.f12139d = bryVar;
    }

    /* renamed from: a */
    public final /* synthetic */ void m11689a(BinderC3454r binderC3454r) {
        this.f12136a.mo6717a(binderC3454r);
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return (this.f12136a == null || cgrVar.f12994p == null || cgrVar.f12994p.f13012a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<AdT> mo11688b(chd chdVar, cgr cgrVar) {
        C3658yo c3658yo = new C3658yo();
        bsf bsfVar = new bsf();
        bsfVar.m11682a(new brz(this, c3658yo, chdVar, cgrVar, bsfVar));
        return this.f12138c.m11163a((ckz) ckw.CUSTOM_RENDER_SYN).m11157a(new ckj(this, new BinderC3454r(bsfVar, cgrVar.f12994p.f13013b, cgrVar.f12994p.f13012a)) { // from class: com.google.android.gms.internal.ads.brw

            /* renamed from: a */
            private final brx f12134a;

            /* renamed from: b */
            private final BinderC3454r f12135b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12134a = this;
                this.f12135b = binderC3454r;
            }

            @Override // com.google.android.gms.internal.ads.ckj
            /* renamed from: a */
            public final void mo11166a() {
                this.f12134a.m11689a(this.f12135b);
            }
        }, this.f12137b).m11145a((ckr<?>) ckw.CUSTOM_RENDER_ACK).m11148a((crt) c3658yo).m11153a();
    }
}
