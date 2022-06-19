package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bro.class */
public final class bro implements bmv<akk> {

    /* renamed from: a */
    private final Context f12106a;

    /* renamed from: b */
    private final alh f12107b;

    /* renamed from: c */
    private final AbstractC3535u f12108c;

    /* renamed from: d */
    private final crs f12109d;

    /* renamed from: e */
    private final ckz f12110e;

    public bro(Context context, alh alhVar, ckz ckzVar, crs crsVar, AbstractC3535u abstractC3535u) {
        this.f12106a = context;
        this.f12107b = alhVar;
        this.f12110e = ckzVar;
        this.f12109d = crsVar;
        this.f12108c = abstractC3535u;
    }

    /* renamed from: a */
    public final /* synthetic */ void m11695a(BinderC3454r binderC3454r) {
        this.f12108c.mo6717a(binderC3454r);
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return (this.f12108c == null || cgrVar.f12994p == null || cgrVar.f12994p.f13012a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<akk> mo11688b(chd chdVar, cgr cgrVar) {
        akj mo12971a = this.f12107b.mo12971a(new amy(chdVar, cgrVar, null), new brt(this, new View(this.f12106a), null, brr.f12122a, cgrVar.f12996r.get(0)));
        return this.f12110e.m11163a((ckz) ckw.CUSTOM_RENDER_SYN).m11157a(new ckj(this, new BinderC3454r(mo12971a.mo13020k(), cgrVar.f12994p.f13013b, cgrVar.f12994p.f13012a)) { // from class: com.google.android.gms.internal.ads.brq

            /* renamed from: a */
            private final bro f12120a;

            /* renamed from: b */
            private final BinderC3454r f12121b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12120a = this;
                this.f12121b = binderC3454r;
            }

            @Override // com.google.android.gms.internal.ads.ckj
            /* renamed from: a */
            public final void mo11166a() {
                this.f12120a.m11695a(this.f12121b);
            }
        }, this.f12109d).m11145a((ckr<?>) ckw.CUSTOM_RENDER_ACK).m11148a((crt) crg.m10778a(mo12971a.mo13023h())).m11153a();
    }
}
