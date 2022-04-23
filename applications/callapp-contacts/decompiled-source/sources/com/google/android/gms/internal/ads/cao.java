package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cao.class */
final class cao implements dbi<anp> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ can f25495a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ cal f25496b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ bbe f25497c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cao(can canVar, cal calVar, bbe bbeVar) {
        this.f25495a = canVar;
        this.f25496b = calVar;
        this.f25497c = bbeVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(anp anpVar) {
        anp anpVar2 = anpVar;
        synchronized (this.f25495a) {
            anpVar2.m.f23890a.a(this.f25495a.f25492b.f25487b);
            this.f25496b.a(anpVar2);
            this.f25495a.f25491a.b().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cas

                /* renamed from: a  reason: collision with root package name */
                private final cao f25505a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25505a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f25505a.f25495a.f25492b.f25487b.a();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        final zzvh a2 = this.f25497c.a().a(th);
        this.f25497c.b().a(a2);
        this.f25495a.f25491a.b().execute(new Runnable(this, a2) { // from class: com.google.android.gms.internal.ads.car

            /* renamed from: a  reason: collision with root package name */
            private final cao f25503a;

            /* renamed from: b  reason: collision with root package name */
            private final zzvh f25504b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25503a = this;
                this.f25504b = a2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                cao caoVar = this.f25503a;
                caoVar.f25495a.f25492b.f25488c.a(this.f25504b);
            }
        });
        cqb.a(a2.errorCode, th, "NativeAdLoader.onFailure");
        this.f25496b.a();
    }
}
