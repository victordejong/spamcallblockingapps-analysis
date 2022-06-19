package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ee2.class */
public final class ee2 implements f03 {

    /* renamed from: a */
    final /* synthetic */ p42 f22117a;

    /* renamed from: b */
    final /* synthetic */ fe2 f22118b;

    /* renamed from: c */
    final /* synthetic */ he2 f22119c;

    public ee2(he2 he2Var, p42 p42Var, fe2 fe2Var) {
        this.f22119c = he2Var;
        this.f22117a = p42Var;
        this.f22118b = fe2Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        sg2 sg2Var;
        xe2 xe2Var;
        f21 m14688k;
        Executor executor;
        sg2Var = this.f22119c.f23877e;
        ew0 ew0Var = (ew0) sg2Var.mo9223e();
        zzbcz m10999b = ew0Var == null ? sk2.m10999b(th, null) : ew0Var.mo8231o().m16455h(th);
        synchronized (this.f22119c) {
            this.f22119c.f23880h = null;
            if (ew0Var != null) {
                ew0Var.mo8227s().mo9146O(m10999b);
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25561P5)).booleanValue()) {
                    executor = this.f22119c.f23874b;
                    executor.execute(new Runnable(this, m10999b) { // from class: com.google.android.gms.internal.ads.de2

                        /* renamed from: d */
                        private final ee2 f21594d;

                        /* renamed from: e */
                        private final zzbcz f21595e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f21594d = this;
                            this.f21595e = m10999b;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            xe2 xe2Var2;
                            ee2 ee2Var = this.f21594d;
                            zzbcz zzbczVar2 = this.f21595e;
                            xe2Var2 = ee2Var.f22119c.f23876d;
                            xe2Var2.mo9146O(zzbczVar2);
                        }
                    });
                }
            } else {
                xe2Var = this.f22119c.f23876d;
                xe2Var.mo9146O(m10999b);
                m14688k = this.f22119c.m14688k(this.f22118b);
                ((ew0) m14688k.mo8739d()).mo8231o().m16458e().mo12848l();
            }
            nk2.m12892a(m10999b.f33653d, th, "AppOpenAdLoader.onFailure");
            this.f22117a.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(Object obj) {
        xe2 xe2Var;
        xy0 xy0Var = (xy0) obj;
        synchronized (this.f22119c) {
            this.f22119c.f23880h = null;
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25561P5)).booleanValue()) {
                i71 m9016f = xy0Var.m9016f();
                xe2Var = this.f22119c.f23876d;
                m9016f.m14472c(xe2Var);
            }
            this.f22117a.mo8353b(xy0Var);
        }
    }
}
