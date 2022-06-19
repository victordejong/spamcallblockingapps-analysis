package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oi2.class */
public final class oi2 implements f03<fk1> {

    /* renamed from: a */
    final /* synthetic */ p42 f27561a;

    /* renamed from: b */
    final /* synthetic */ qi2 f27562b;

    /* renamed from: c */
    final /* synthetic */ ri2 f27563c;

    public oi2(ri2 ri2Var, p42 p42Var, qi2 qi2Var) {
        this.f27563c = ri2Var;
        this.f27561a = p42Var;
        this.f27562b = qi2Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        sg2 sg2Var;
        hi2 hi2Var;
        jk1 m11454h;
        Executor executor;
        sg2Var = this.f27563c.f28969e;
        kk1 kk1Var = (kk1) sg2Var.mo9223e();
        zzbcz m10999b = kk1Var == null ? sk2.m10999b(th, null) : kk1Var.mo8231o().m16455h(th);
        synchronized (this.f27563c) {
            if (kk1Var != null) {
                kk1Var.mo13872a().mo9146O(m10999b);
                executor = this.f27563c.f28966b;
                executor.execute(new Runnable(this, m10999b) { // from class: com.google.android.gms.internal.ads.ni2

                    /* renamed from: d */
                    private final oi2 f27156d;

                    /* renamed from: e */
                    private final zzbcz f27157e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f27156d = this;
                        this.f27157e = m10999b;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        hi2 hi2Var2;
                        oi2 oi2Var = this.f27156d;
                        zzbcz zzbczVar2 = this.f27157e;
                        hi2Var2 = oi2Var.f27563c.f28968d;
                        hi2Var2.mo9146O(zzbczVar2);
                    }
                });
            } else {
                hi2Var = this.f27563c.f28968d;
                hi2Var.mo9146O(m10999b);
                m11454h = this.f27563c.m11454h(this.f27562b);
                m11454h.zza().mo8231o().m16458e().mo12848l();
            }
            nk2.m12892a(m10999b.f33653d, th, "RewardedAdLoader.onFailure");
            this.f27561a.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(fk1 fk1Var) {
        hi2 hi2Var;
        Executor executor;
        hi2 hi2Var2;
        hi2 hi2Var3;
        fk1 fk1Var2 = fk1Var;
        synchronized (this.f27563c) {
            i71 m9016f = fk1Var2.m9016f();
            hi2Var = this.f27563c.f28968d;
            m9016f.m14471d(hi2Var);
            this.f27561a.mo8353b(fk1Var2);
            executor = this.f27563c.f28966b;
            hi2Var2 = this.f27563c.f28968d;
            hi2Var2.getClass();
            executor.execute(mi2.m13183a(hi2Var2));
            hi2Var3 = this.f27563c.f28968d;
            hi2Var3.mo10653r();
        }
    }
}
