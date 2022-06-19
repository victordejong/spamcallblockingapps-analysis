package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fh2.class */
public final class fh2 implements f03<lb1> {

    /* renamed from: a */
    final /* synthetic */ p42 f22900a;

    /* renamed from: b */
    final /* synthetic */ jc1 f22901b;

    /* renamed from: c */
    final /* synthetic */ gh2 f22902c;

    public fh2(gh2 gh2Var, p42 p42Var, jc1 jc1Var) {
        this.f22902c = gh2Var;
        this.f22900a = p42Var;
        this.f22901b = jc1Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        Executor executor;
        Executor executor2;
        zzbcz m16455h = this.f22901b.mo10543b().m16455h(th);
        synchronized (this.f22902c) {
            this.f22902c.f23356h = null;
            this.f22901b.mo10544a().mo9146O(m16455h);
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25569Q5)).booleanValue()) {
                executor = this.f22902c.f23350b;
                executor.execute(new Runnable(this, m16455h) { // from class: com.google.android.gms.internal.ads.dh2

                    /* renamed from: d */
                    private final fh2 f21631d;

                    /* renamed from: e */
                    private final zzbcz f21632e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f21631d = this;
                        this.f21632e = m16455h;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        a42 a42Var;
                        fh2 fh2Var = this.f21631d;
                        zzbcz zzbczVar = this.f21632e;
                        a42Var = fh2Var.f22902c.f23352d;
                        a42Var.mo9146O(zzbczVar);
                    }
                });
                executor2 = this.f22902c.f23350b;
                executor2.execute(new Runnable(this, m16455h) { // from class: com.google.android.gms.internal.ads.eh2

                    /* renamed from: d */
                    private final fh2 f22178d;

                    /* renamed from: e */
                    private final zzbcz f22179e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f22178d = this;
                        this.f22179e = m16455h;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        hi2 hi2Var;
                        fh2 fh2Var = this.f22178d;
                        zzbcz zzbczVar = this.f22179e;
                        hi2Var = fh2Var.f22902c.f23353e;
                        hi2Var.mo9146O(zzbczVar);
                    }
                });
            }
            nk2.m12892a(m16455h.f33653d, th, "InterstitialAdLoader.onFailure");
            this.f22900a.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(lb1 lb1Var) {
        Executor executor;
        Executor executor2;
        a42 a42Var;
        hi2 hi2Var;
        lb1 lb1Var2 = lb1Var;
        synchronized (this.f22902c) {
            this.f22902c.f23356h = null;
            AbstractC6381cw<Boolean> abstractC6381cw = C6679kw.f25569Q5;
            if (((Boolean) C7192yr.m8714c().m14263c(abstractC6381cw)).booleanValue()) {
                i71 m9016f = lb1Var2.m9016f();
                a42Var = this.f22902c.f23352d;
                m9016f.m14474a(a42Var);
                hi2Var = this.f22902c.f23353e;
                m9016f.m14471d(hi2Var);
            }
            this.f22900a.mo8353b(lb1Var2);
            if (((Boolean) C7192yr.m8714c().m14263c(abstractC6381cw)).booleanValue()) {
                executor = this.f22902c.f23350b;
                executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bh2

                    /* renamed from: d */
                    private final fh2 f20453d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f20453d = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        a42 a42Var2;
                        a42Var2 = this.f20453d.f22902c.f23352d;
                        a42Var2.mo10505d();
                    }
                });
                executor2 = this.f22902c.f23350b;
                executor2.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ch2

                    /* renamed from: d */
                    private final fh2 f21255d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f21255d = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        hi2 hi2Var2;
                        hi2Var2 = this.f21255d.f22902c.f23353e;
                        hi2Var2.mo10505d();
                    }
                });
            }
        }
    }
}
