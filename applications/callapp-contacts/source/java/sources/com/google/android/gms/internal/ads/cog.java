package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cog.class */
public final class cog implements dbi<bhu> {

    /* renamed from: a */
    final /* synthetic */ coa f46177a;

    /* renamed from: b */
    private final /* synthetic */ cal f46178b;

    /* renamed from: c */
    private final /* synthetic */ coh f46179c;

    public cog(coa coaVar, cal calVar, coh cohVar) {
        this.f46177a = coaVar;
        this.f46178b = calVar;
        this.f46179c = cohVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(bhu bhuVar) {
        bhu bhuVar2 = bhuVar;
        synchronized (this.f46177a) {
            bhuVar2.f42491m.f43178a.m18383a(this.f46177a.f46165b);
            this.f46178b.mo17372a(bhuVar2);
            Executor executor = this.f46177a.f46164a;
            cnc cncVar = this.f46177a.f46165b;
            cncVar.getClass();
            executor.execute(cof.m17385a(cncVar));
            this.f46177a.f46165b.onAdMetadataChanged();
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        bhx mo17412a = this.f46177a.f46166c.mo17412a();
        zzvh m17321a = mo17412a == null ? cqh.m17321a(th, (bso) null) : mo17412a.mo17838c().m18505a(th);
        synchronized (this.f46177a) {
            if (mo17412a != null) {
                mo17412a.mo17839b().mo17319a(m17321a);
                this.f46177a.f46164a.execute(new Runnable(this, m17321a) { // from class: com.google.android.gms.internal.ads.coi

                    /* renamed from: a */
                    private final cog f46182a;

                    /* renamed from: b */
                    private final zzvh f46183b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46182a = this;
                        this.f46183b = m17321a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        cog cogVar = this.f46182a;
                        cogVar.f46177a.f46165b.mo17319a(this.f46183b);
                    }
                });
            } else {
                this.f46177a.f46165b.mo17319a(m17321a);
                this.f46177a.m17388a(this.f46179c).mo17837a().mo17838c().f42537c.mo17796G_();
            }
            cqb.m17342a(m17321a.errorCode, th, "RewardedAdLoader.onFailure");
            this.f46178b.mo17373a();
        }
    }
}
