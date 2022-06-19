package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l02.class */
public final class l02 implements xw1<fk1, ok2, my1> {

    /* renamed from: a */
    private final Context f25910a;

    /* renamed from: b */
    private final Executor f25911b;

    /* renamed from: c */
    private final kk1 f25912c;

    public l02(Context context, Executor executor, kk1 kk1Var) {
        this.f25910a = context;
        this.f25911b = executor;
        this.f25912c = kk1Var;
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: a */
    public final void mo8657a(rj2 rj2Var, ej2 ej2Var, tw1<ok2, my1> tw1Var) {
        try {
            xj2 xj2Var = rj2Var.f28998a.f27577a;
            if (xj2Var.f32088o.f27162a == 3) {
                tw1Var.f30386b.m12636A(this.f25910a, xj2Var.f32077d, ej2Var.f22250v.toString(), tw1Var.f30387c);
            } else {
                tw1Var.f30386b.m12609y(this.f25910a, xj2Var.f32077d, ej2Var.f22250v.toString(), tw1Var.f30387c);
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(tw1Var.f30385a);
            ei0.m15463g(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ fk1 mo8656b(rj2 rj2Var, ej2 ej2Var, tw1<ok2, my1> tw1Var) {
        gk1 mo13871b = this.f25912c.mo13871b(new mz0(rj2Var, ej2Var, tw1Var.f30385a), new hk1(new qc1(tw1Var) { // from class: com.google.android.gms.internal.ads.k02

            /* renamed from: a */
            private final tw1 f25048a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25048a = tw1Var;
            }

            @Override // com.google.android.gms.internal.ads.qc1
            /* renamed from: a */
            public final void mo9015a(boolean z, Context context, l31 l31Var) {
                tw1 tw1Var2 = this.f25048a;
                try {
                    ((ok2) tw1Var2.f30386b).m12612v(z);
                    ((ok2) tw1Var2.f30386b).m12608z(context);
                } catch (zzfaw e) {
                    throw new zzdkm(e.getCause());
                }
            }
        }));
        mo13871b.mo8213a().m13341D0(new ju0(tw1Var.f30386b), this.f25911b);
        tw1Var.f30387c.m13060F6(mo13871b.mo8204m());
        return mo13871b.mo8209h();
    }
}
