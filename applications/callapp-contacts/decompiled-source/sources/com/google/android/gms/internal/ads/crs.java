package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crs.class */
final class crs implements dbi<crj<AdT>> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ crr f26316a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public crs(crr crrVar) {
        this.f26316a = crrVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(Object obj) {
        crj<?> crjVar = (crj) obj;
        synchronized (this.f26316a) {
            this.f26316a.e.a(crjVar);
            if (this.f26316a.f26314c != crw.f26321b) {
                this.f26316a.f26315d.a(this.f26316a.f26312a.b(), crjVar);
            }
            if (this.f26316a.f26314c == crw.f26320a) {
                crr crrVar = this.f26316a;
                crrVar.c(crrVar.f26312a);
            }
            this.f26316a.f26314c = crw.f26320a;
            this.f26316a.f26313b.b((dag) crjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        synchronized (this.f26316a) {
            this.f26316a.f26313b.a(th);
        }
    }
}
