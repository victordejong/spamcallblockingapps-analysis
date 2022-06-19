package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2305g;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.AbstractC2333t;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.C2327n;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bqt.class */
public final class bqt implements awx {

    /* renamed from: a */
    private final Context f11850a;

    /* renamed from: b */
    private final bee f11851b;

    /* renamed from: c */
    private final chh f11852c;

    /* renamed from: d */
    private final C3647yd f11853d;

    /* renamed from: e */
    private final cgr f11854e;

    /* renamed from: f */
    private final crt<bdt> f11855f;

    /* renamed from: g */
    private final act f11856g;

    /* JADX INFO: Access modifiers changed from: private */
    public bqt(Context context, bee beeVar, chh chhVar, C3647yd c3647yd, cgr cgrVar, crt<bdt> crtVar, act actVar) {
        this.f11850a = context;
        this.f11851b = beeVar;
        this.f11852c = chhVar;
        this.f11853d = c3647yd;
        this.f11854e = cgrVar;
        this.f11855f = crtVar;
        this.f11856g = actVar;
    }

    @Override // com.google.android.gms.internal.ads.awx
    /* renamed from: a */
    public final void mo11680a(boolean z, Context context) {
        act m12038a;
        bdt bdtVar = (bdt) crg.m10773b(this.f11855f);
        try {
            cgr cgrVar = this.f11854e;
            if (!this.f11856g.mo13488L()) {
                m12038a = this.f11856g;
            } else {
                if (!((Boolean) dyx.m8158e().m7876a(edi.f16377aj)).booleanValue()) {
                    m12038a = this.f11856g;
                } else {
                    m12038a = this.f11851b.m12038a(this.f11852c.f13041e);
                    C3142fl.m7827a(m12038a, bdtVar.mo12057k());
                    bev bevVar = new bev();
                    bevVar.m12018a(this.f11850a, m12038a.getView());
                    bdtVar.mo12056l().m12031a(m12038a, true);
                    m12038a.mo13426v().mo13528a(new aee(bevVar, m12038a) { // from class: com.google.android.gms.internal.ads.bqw

                        /* renamed from: a */
                        private final bev f11858a;

                        /* renamed from: b */
                        private final act f11859b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f11858a = bevVar;
                            this.f11859b = m12038a;
                        }

                        @Override // com.google.android.gms.internal.ads.aee
                        /* renamed from: a */
                        public final void mo11712a(boolean z2) {
                            bev bevVar2 = this.f11858a;
                            act actVar = this.f11859b;
                            bevVar2.m12019a();
                            actVar.mo13432p();
                            actVar.mo13426v().mo13508g();
                        }
                    });
                    aef mo13426v = m12038a.mo13426v();
                    m12038a.getClass();
                    mo13426v.mo13527a(bqv.m11713a(m12038a));
                    m12038a.mo13461a(cgrVar.f12994p.f13013b, cgrVar.f12994p.f13012a, (String) null);
                }
            }
            m12038a.mo13452b(true);
            C2341q.m14744c();
            C2305g c2305g = new C2305g(false, C3567ve.m6946m(this.f11850a), false, 0.0f, -1, z, this.f11854e.f12960F, this.f11854e.f12961G);
            C2341q.m14745b();
            C2327n.m14751a(context, new AdOverlayInfoParcel((dxs) null, bdtVar.mo12058j(), (AbstractC2333t) null, m12038a, this.f11854e.f12962H, this.f11853d, this.f11854e.f13003y, c2305g, this.f11854e.f12994p.f13013b, this.f11854e.f12994p.f13012a), true);
        } catch (zzbew e) {
            C3645yb.m6748c("", e);
        }
    }
}
