package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cka.class */
public final class cka implements dbi<AppOpenAd> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ cju f25966a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ cal f25967b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ ckc f25968c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cka(cju cjuVar, cal calVar, ckc ckcVar) {
        this.f25966a = cjuVar;
        this.f25967b = calVar;
        this.f25968c = ckcVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(Object obj) {
        anp anpVar = (anp) obj;
        synchronized (this.f25966a) {
            this.f25966a.e = null;
            if (((Boolean) ekb.e().a(aq.eM)).booleanValue()) {
                anpVar.m.f23890a.f23927a.f23893d = this.f25966a.f25957c;
            }
            this.f25967b.a(anpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        akz akzVar = (akz) this.f25966a.f25958d.a();
        final zzvh a2 = akzVar == null ? cqh.a(th, (bso) null) : akzVar.c().a(th);
        synchronized (this.f25966a) {
            this.f25966a.e = null;
            if (akzVar != null) {
                akzVar.b().a(a2);
                if (((Boolean) ekb.e().a(aq.eM)).booleanValue()) {
                    this.f25966a.f25955a.execute(new Runnable(this, a2) { // from class: com.google.android.gms.internal.ads.cjz

                        /* renamed from: a  reason: collision with root package name */
                        private final cka f25962a;

                        /* renamed from: b  reason: collision with root package name */
                        private final zzvh f25963b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f25962a = this;
                            this.f25963b = a2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            cka ckaVar = this.f25962a;
                            ckaVar.f25966a.f25957c.a(this.f25963b);
                        }
                    });
                }
            } else {
                this.f25966a.f25957c.a(a2);
                ((akz) this.f25966a.a(this.f25968c).b()).c().f23677c.G_();
            }
            cqb.a(a2.errorCode, th, "AppOpenAdLoader.onFailure");
            this.f25967b.a();
        }
    }
}
