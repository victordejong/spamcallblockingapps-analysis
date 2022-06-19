package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.C5593a0;
import com.google.android.gms.ads.internal.util.C5748x0;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vx1.class */
public final class vx1 implements xw1<xw0, ok2, my1> {

    /* renamed from: a */
    private final Context f31397a;

    /* renamed from: b */
    private final vx0 f31398b;

    /* renamed from: c */
    private final Executor f31399c;

    public vx1(Context context, vx0 vx0Var, Executor executor) {
        this.f31397a = context;
        this.f31398b = vx0Var;
        this.f31399c = executor;
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: a */
    public final void mo8657a(rj2 rj2Var, ej2 ej2Var, tw1<ok2, my1> tw1Var) {
        zzbdl zzbdlVar;
        zzbdl zzbdlVar2 = rj2Var.f28998a.f27577a.f32078e;
        if (zzbdlVar2.f33695q) {
            zzbdlVar = new zzbdl(this.f31397a, C5593a0.m18305b(zzbdlVar2.f33686h, zzbdlVar2.f33683e));
        } else {
            zzbdlVar = (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25449B5)).booleanValue() || !ej2Var.f22226d0) ? bk2.m16326b(this.f31397a, ej2Var.f22249u) : new zzbdl(this.f31397a, C5593a0.m18304c(zzbdlVar2.f33686h, zzbdlVar2.f33683e));
        }
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25449B5)).booleanValue() || !ej2Var.f22226d0) {
            tw1Var.f30386b.m12624j(this.f31397a, zzbdlVar, rj2Var.f28998a.f27577a.f32077d, ej2Var.f22250v.toString(), C5748x0.m17913l(ej2Var.f22247s), tw1Var.f30387c);
        } else {
            tw1Var.f30386b.m12629e(this.f31397a, zzbdlVar, rj2Var.f28998a.f27577a.f32077d, ej2Var.f22250v.toString(), C5748x0.m17913l(ej2Var.f22247s), tw1Var.f30387c);
        }
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ xw0 mo8656b(rj2 rj2Var, ej2 ej2Var, tw1<ok2, my1> tw1Var) {
        View view;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25449B5)).booleanValue() || !ej2Var.f22226d0) {
            view = tw1Var.f30386b.m12630d();
        } else {
            b80 m12628f = tw1Var.f30386b.m12628f();
            if (m12628f == null) {
                ei0.m15467c("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new zzfaw(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
            try {
                View view2 = (View) BinderC6255b.m16745J0(m12628f.mo8498a());
                boolean mo8497d = m12628f.mo8497d();
                if (view2 == null) {
                    throw new zzfaw(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                }
                view = view2;
                if (mo8497d) {
                    try {
                        view = (View) k03.m13995i(k03.m14003a(null), new uz2(this, view2, ej2Var) { // from class: com.google.android.gms.internal.ads.ux1

                            /* renamed from: a */
                            private final vx1 f31010a;

                            /* renamed from: b */
                            private final View f31011b;

                            /* renamed from: c */
                            private final ej2 f31012c;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f31010a = this;
                                this.f31011b = view2;
                                this.f31012c = ej2Var;
                            }

                            @Override // com.google.android.gms.internal.ads.uz2
                            /* renamed from: a */
                            public final r03 mo8403a(Object obj) {
                                return this.f31010a.m9838c(this.f31011b, this.f31012c, obj);
                            }
                        }, qi0.f28499e).get();
                    } catch (InterruptedException | ExecutionException e) {
                        throw new zzfaw(e);
                    }
                }
            } catch (RemoteException e2) {
                throw new zzfaw(e2);
            }
        }
        yw0 mo9840d = this.f31398b.mo9840d(new mz0(rj2Var, ej2Var, tw1Var.f30385a), new ex0(view, null, tx1.m10476a(tw1Var.f30386b), ej2Var.f22249u.get(0)));
        mo9840d.mo8673j().m13619S0(view);
        mo9840d.mo8213a().m13341D0(new ju0(tw1Var.f30386b), this.f31399c);
        tw1Var.f30387c.m13060F6(mo9840d.mo8659f());
        return mo9840d.mo8675h();
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m9838c(View view, ej2 ej2Var, Object obj) {
        return k03.m14003a(zzcwv.m7876a(this.f31397a, view, ej2Var));
    }
}
