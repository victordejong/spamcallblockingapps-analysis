package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aog.class */
final class aog implements dbi<anp> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dbi f23661a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ aoa f23662b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aog(aoa aoaVar, dbi dbiVar) {
        this.f23662b = aoaVar;
        this.f23661a = dbiVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(anp anpVar) {
        zd.e.execute(new Runnable(this.f23662b) { // from class: com.google.android.gms.internal.ads.aoe

            /* renamed from: a  reason: collision with root package name */
            private final aoa f23657a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23657a = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f23657a.f23650d = false;
            }
        });
        this.f23661a.a((dbi) anpVar);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        zd.e.execute(new Runnable(this.f23662b) { // from class: com.google.android.gms.internal.ads.aoe

            /* renamed from: a  reason: collision with root package name */
            private final aoa f23657a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23657a = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f23657a.f23650d = false;
            }
        });
        this.f23661a.a(th);
    }
}
