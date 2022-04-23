package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cog.class */
public final class cog implements dbi<bhu> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ coa f26147a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ cal f26148b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ coh f26149c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cog(coa coaVar, cal calVar, coh cohVar) {
        this.f26147a = coaVar;
        this.f26148b = calVar;
        this.f26149c = cohVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(bhu bhuVar) {
        bhu bhuVar2 = bhuVar;
        synchronized (this.f26147a) {
            bhuVar2.m.f23890a.a(this.f26147a.f26139b);
            this.f26148b.a(bhuVar2);
            Executor executor = this.f26147a.f26138a;
            cnc cncVar = this.f26147a.f26139b;
            cncVar.getClass();
            executor.execute(cof.a(cncVar));
            this.f26147a.f26139b.onAdMetadataChanged();
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        bhx a2 = this.f26147a.f26140c.a();
        final zzvh a3 = a2 == null ? cqh.a(th, (bso) null) : a2.c().a(th);
        synchronized (this.f26147a) {
            if (a2 != null) {
                a2.b().a(a3);
                this.f26147a.f26138a.execute(new Runnable(this, a3) { // from class: com.google.android.gms.internal.ads.coi

                    /* renamed from: a  reason: collision with root package name */
                    private final cog f26152a;

                    /* renamed from: b  reason: collision with root package name */
                    private final zzvh f26153b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26152a = this;
                        this.f26153b = a3;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        cog cogVar = this.f26152a;
                        cogVar.f26147a.f26139b.a(this.f26153b);
                    }
                });
            } else {
                this.f26147a.f26139b.a(a3);
                this.f26147a.a(this.f26149c).a().c().f23677c.G_();
            }
            cqb.a(a3.errorCode, th, "RewardedAdLoader.onFailure");
            this.f26148b.a();
        }
    }
}
