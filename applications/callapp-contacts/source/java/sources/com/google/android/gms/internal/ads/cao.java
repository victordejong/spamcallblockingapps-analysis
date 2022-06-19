package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cao.class */
public final class cao implements dbi<anp> {

    /* renamed from: a */
    final /* synthetic */ can f45211a;

    /* renamed from: b */
    private final /* synthetic */ cal f45212b;

    /* renamed from: c */
    private final /* synthetic */ bbe f45213c;

    public cao(can canVar, cal calVar, bbe bbeVar) {
        this.f45211a = canVar;
        this.f45212b = calVar;
        this.f45213c = bbeVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(anp anpVar) {
        anp anpVar2 = anpVar;
        synchronized (this.f45211a) {
            anpVar2.f42491m.f43178a.m18384a(this.f45211a.f45207b.f45202b);
            this.f45212b.mo17372a(anpVar2);
            this.f45211a.f45206a.mo18734b().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cas

                /* renamed from: a */
                private final cao f45413a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f45413a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f45413a.f45211a.f45207b.f45202b.mo17408a();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        zzvh m18505a = this.f45213c.mo18254a().m18505a(th);
        this.f45213c.mo18251b().mo17319a(m18505a);
        this.f45211a.f45206a.mo18734b().execute(new Runnable(this, m18505a) { // from class: com.google.android.gms.internal.ads.car

            /* renamed from: a */
            private final cao f45411a;

            /* renamed from: b */
            private final zzvh f45412b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45411a = this;
                this.f45412b = m18505a;
            }

            @Override // java.lang.Runnable
            public final void run() {
                cao caoVar = this.f45411a;
                caoVar.f45211a.f45207b.f45203c.mo17319a(this.f45412b);
            }
        });
        cqb.m17342a(m18505a.errorCode, th, "NativeAdLoader.onFailure");
        this.f45212b.mo17373a();
    }
}
