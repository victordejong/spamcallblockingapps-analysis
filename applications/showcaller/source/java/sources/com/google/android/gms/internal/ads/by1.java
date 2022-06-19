package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/by1.class */
public final class by1 implements xw1<xw0, r90, my1> {

    /* renamed from: a */
    private final Context f21029a;

    /* renamed from: b */
    private final vx0 f21030b;

    /* renamed from: c */
    private View f21031c;

    /* renamed from: d */
    private b80 f21032d;

    public by1(Context context, vx0 vx0Var) {
        this.f21029a = context;
        this.f21030b = vx0Var;
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: a */
    public final void mo8657a(rj2 rj2Var, ej2 ej2Var, tw1<r90, my1> tw1Var) {
        try {
            tw1Var.f30386b.mo11650B0(ej2Var.f22214V);
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25449B5)).booleanValue() || !ej2Var.f22226d0) {
                tw1Var.f30386b.mo11640x3(ej2Var.f22209Q, ej2Var.f22250v.toString(), rj2Var.f28998a.f27577a.f32077d, BinderC6255b.m16744m2(this.f21029a), new zx1(this, tw1Var, null), tw1Var.f30387c, rj2Var.f28998a.f27577a.f32078e);
            } else {
                tw1Var.f30386b.mo11646b3(ej2Var.f22209Q, ej2Var.f22250v.toString(), rj2Var.f28998a.f27577a.f32077d, BinderC6255b.m16744m2(this.f21029a), new zx1(this, tw1Var, null), tw1Var.f30387c, rj2Var.f28998a.f27577a.f32078e);
            }
        } catch (RemoteException e) {
            throw new zzfaw(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.xw1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ xw0 mo8656b(rj2 rj2Var, ej2 ej2Var, tw1<r90, my1> tw1Var) {
        View view;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25449B5)).booleanValue() || !ej2Var.f22226d0) {
            view = this.f21031c;
        } else {
            try {
                View view2 = (View) BinderC6255b.m16745J0(this.f21032d.mo8498a());
                boolean mo8497d = this.f21032d.mo8497d();
                if (view2 == null) {
                    throw new zzfaw(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
                view = view2;
                if (mo8497d) {
                    try {
                        view = (View) k03.m13995i(k03.m14003a(null), new uz2(this, view2, ej2Var) { // from class: com.google.android.gms.internal.ads.yx1

                            /* renamed from: a */
                            private final by1 f32693a;

                            /* renamed from: b */
                            private final View f32694b;

                            /* renamed from: c */
                            private final ej2 f32695c;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f32693a = this;
                                this.f32694b = view2;
                                this.f32695c = ej2Var;
                            }

                            @Override // com.google.android.gms.internal.ads.uz2
                            /* renamed from: a */
                            public final r03 mo8403a(Object obj) {
                                return this.f32693a.m16171e(this.f32694b, this.f32695c, obj);
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
        yw0 mo9840d = this.f21030b.mo9840d(new mz0(rj2Var, ej2Var, tw1Var.f30385a), new ex0(view, null, new vy0(tw1Var) { // from class: com.google.android.gms.internal.ads.xx1

            /* renamed from: a */
            private final tw1 f32345a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32345a = tw1Var;
            }

            @Override // com.google.android.gms.internal.ads.vy0
            public final AbstractC6640ju zza() {
                try {
                    return ((r90) this.f32345a.f30386b).mo11644f();
                } catch (RemoteException e3) {
                    throw new zzfaw(e3);
                }
            }
        }, ej2Var.f22249u.get(0)));
        mo9840d.mo8673j().m13619S0(view);
        tw1Var.f30387c.m13060F6(mo9840d.mo8658g());
        return mo9840d.mo8675h();
    }

    /* renamed from: e */
    public final /* synthetic */ r03 m16171e(View view, ej2 ej2Var, Object obj) {
        return k03.m14003a(zzcwv.m7876a(this.f21029a, view, ej2Var));
    }
}
