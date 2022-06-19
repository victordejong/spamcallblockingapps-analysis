package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i12.class */
public final class i12 implements xw1<fk1, ok2, ny1> {

    /* renamed from: a */
    private final Context f24120a;

    /* renamed from: b */
    private final Executor f24121b;

    /* renamed from: c */
    private final kk1 f24122c;

    public i12(Context context, Executor executor, kk1 kk1Var) {
        this.f24120a = context;
        this.f24121b = executor;
        this.f24122c = kk1Var;
    }

    /* renamed from: e */
    public static final void m14512e(rj2 rj2Var, ej2 ej2Var, tw1<ok2, ny1> tw1Var) {
        try {
            tw1Var.f30386b.m12619o(rj2Var.f28998a.f27577a.f32077d, ej2Var.f22250v.toString());
        } catch (Exception e) {
            String valueOf = String.valueOf(tw1Var.f30385a);
            ei0.m15463g(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: a */
    public final void mo8657a(rj2 rj2Var, ej2 ej2Var, tw1<ok2, ny1> tw1Var) {
        if (tw1Var.f30386b.m12617q()) {
            m14512e(rj2Var, ej2Var, tw1Var);
            return;
        }
        tw1Var.f30387c.m12786G6(new g12(this, rj2Var, ej2Var, tw1Var));
        tw1Var.f30386b.m12620n(this.f24120a, rj2Var.f28998a.f27577a.f32077d, null, tw1Var.f30387c, ej2Var.f22250v.toString());
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ fk1 mo8656b(rj2 rj2Var, ej2 ej2Var, tw1<ok2, ny1> tw1Var) {
        gk1 mo13871b = this.f24122c.mo13871b(new mz0(rj2Var, ej2Var, tw1Var.f30385a), new hk1(new qc1(tw1Var) { // from class: com.google.android.gms.internal.ads.e12

            /* renamed from: a */
            private final tw1 f21970a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21970a = tw1Var;
            }

            @Override // com.google.android.gms.internal.ads.qc1
            /* renamed from: a */
            public final void mo9015a(boolean z, Context context, l31 l31Var) {
                tw1 tw1Var2 = this.f21970a;
                try {
                    ((ok2) tw1Var2.f30386b).m12612v(z);
                    ((ok2) tw1Var2.f30386b).m12618p();
                } catch (zzfaw e) {
                    ei0.m15463g("Cannot show rewarded video.", e);
                    throw new zzdkm(e.getCause());
                }
            }
        }));
        mo13871b.mo8213a().m13341D0(new ju0(tw1Var.f30386b), this.f24121b);
        g41 mo8212b = mo13871b.mo8212b();
        w21 mo8211c = mo13871b.mo8211c();
        tw1Var.f30387c.m12787F6(new h12(this, mo13871b.mo8208i(), mo8211c, mo8212b, mo13871b.mo8206k()));
        return mo13871b.mo8209h();
    }
}
