package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aog.class */
final class aog implements dbi<anp> {

    /* renamed from: a */
    private final /* synthetic */ dbi f42520a;

    /* renamed from: b */
    private final /* synthetic */ aoa f42521b;

    public aog(aoa aoaVar, dbi dbiVar) {
        this.f42521b = aoaVar;
        this.f42520a = dbiVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(anp anpVar) {
        C13091zd.f50122e.execute(new Runnable(this.f42521b) { // from class: com.google.android.gms.internal.ads.aoe

            /* renamed from: a */
            private final aoa f42516a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f42516a = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f42516a.f42509d = false;
            }
        });
        this.f42520a.mo13892a((dbi) anpVar);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        C13091zd.f50122e.execute(new Runnable(this.f42521b) { // from class: com.google.android.gms.internal.ads.aoe

            /* renamed from: a */
            private final aoa f42516a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f42516a = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f42516a.f42509d = false;
            }
        });
        this.f42520a.mo13891a(th);
    }
}
