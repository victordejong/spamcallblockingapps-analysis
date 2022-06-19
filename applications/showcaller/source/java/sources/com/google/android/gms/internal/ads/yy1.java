package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.C5748x0;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yy1.class */
public final class yy1 implements xw1<lb1, ok2, my1> {

    /* renamed from: a */
    private final Context f32710a;

    /* renamed from: b */
    private final jc1 f32711b;

    /* renamed from: c */
    private final zzcgz f32712c;

    /* renamed from: d */
    private final Executor f32713d;

    public yy1(Context context, zzcgz zzcgzVar, jc1 jc1Var, Executor executor) {
        this.f32710a = context;
        this.f32712c = zzcgzVar;
        this.f32711b = jc1Var;
        this.f32713d = executor;
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: a */
    public final void mo8657a(rj2 rj2Var, ej2 ej2Var, tw1<ok2, my1> tw1Var) {
        tw1Var.f30386b.m12623k(this.f32710a, rj2Var.f28998a.f27577a.f32077d, ej2Var.f22250v.toString(), C5748x0.m17913l(ej2Var.f22247s), tw1Var.f30387c);
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ lb1 mo8656b(rj2 rj2Var, ej2 ej2Var, tw1<ok2, my1> tw1Var) {
        mb1 mo10542c = this.f32711b.mo10542c(new mz0(rj2Var, ej2Var, tw1Var.f30385a), new pb1(new qc1(this, tw1Var) { // from class: com.google.android.gms.internal.ads.xy1

            /* renamed from: a */
            private final yy1 f32356a;

            /* renamed from: b */
            private final tw1 f32357b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32356a = this;
                this.f32357b = tw1Var;
            }

            @Override // com.google.android.gms.internal.ads.qc1
            /* renamed from: a */
            public final void mo9015a(boolean z, Context context, l31 l31Var) {
                this.f32356a.m8655c(this.f32357b, z, context, l31Var);
            }
        }, null));
        mo10542c.mo8213a().m13341D0(new ju0(tw1Var.f30386b), this.f32713d);
        tw1Var.f30387c.m13060F6(mo10542c.mo8659f());
        return mo10542c.mo11322h();
    }

    /* renamed from: c */
    public final /* synthetic */ void m8655c(tw1 tw1Var, boolean z, Context context, l31 l31Var) {
        try {
            ((ok2) tw1Var.f30386b).m12612v(z);
            if (this.f32712c.f33856f < ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25807u0)).intValue()) {
                ((ok2) tw1Var.f30386b).m12627g();
            } else {
                ((ok2) tw1Var.f30386b).m12626h(context);
            }
        } catch (zzfaw e) {
            ei0.m15465e("Cannot show interstitial.");
            throw new zzdkm(e.getCause());
        }
    }
}
