package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cka.class */
public final class cka implements dbi<AppOpenAd> {

    /* renamed from: a */
    final /* synthetic */ cju f45948a;

    /* renamed from: b */
    private final /* synthetic */ cal f45949b;

    /* renamed from: c */
    private final /* synthetic */ ckc f45950c;

    public cka(cju cjuVar, cal calVar, ckc ckcVar) {
        this.f45948a = cjuVar;
        this.f45949b = calVar;
        this.f45950c = ckcVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(Object obj) {
        anp anpVar = (anp) obj;
        synchronized (this.f45948a) {
            this.f45948a.f45937e = null;
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42862eM)).booleanValue()) {
                anpVar.f42491m.f43178a.f43216a.f43181d = this.f45948a.f45935c;
            }
            this.f45949b.mo17372a(anpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        akz akzVar = (akz) this.f45948a.f45936d.mo17412a();
        zzvh m17321a = akzVar == null ? cqh.m17321a(th, (bso) null) : akzVar.mo17838c().m18505a(th);
        synchronized (this.f45948a) {
            this.f45948a.f45937e = null;
            if (akzVar != null) {
                akzVar.mo18599b().mo17319a(m17321a);
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42862eM)).booleanValue()) {
                    this.f45948a.f45933a.execute(new Runnable(this, m17321a) { // from class: com.google.android.gms.internal.ads.cjz

                        /* renamed from: a */
                        private final cka f45944a;

                        /* renamed from: b */
                        private final zzvh f45945b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f45944a = this;
                            this.f45945b = m17321a;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            cka ckaVar = this.f45944a;
                            ckaVar.f45948a.f45935c.mo17319a(this.f45945b);
                        }
                    });
                }
            } else {
                this.f45948a.f45935c.mo17319a(m17321a);
                ((akz) this.f45948a.m17438a(this.f45950c).mo18453b()).mo17838c().f42537c.mo17796G_();
            }
            cqb.m17342a(m17321a.errorCode, th, "AppOpenAdLoader.onFailure");
            this.f45949b.mo17373a();
        }
    }
}
