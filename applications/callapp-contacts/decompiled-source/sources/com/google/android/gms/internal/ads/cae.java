package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cae.class */
final class cae implements cal<anp> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ caf f25479a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cae(caf cafVar) {
        this.f25479a = cafVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final void a() {
        synchronized (this.f25479a) {
            this.f25479a.f25481b = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final /* synthetic */ void a(anp anpVar) {
        anp anpVar2 = anpVar;
        synchronized (this.f25479a) {
            this.f25479a.f25481b = false;
            this.f25479a.f25480a = anpVar2.l;
            anpVar2.h();
        }
    }
}
