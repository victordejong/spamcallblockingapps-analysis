package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cad.class */
public final class cad implements cal<azi> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ caa f25478a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cad(caa caaVar) {
        this.f25478a = caaVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final void a() {
        synchronized (this.f25478a) {
            this.f25478a.g = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final /* synthetic */ void a(azi aziVar) {
        azi aziVar2;
        azi aziVar3 = aziVar;
        synchronized (this.f25478a) {
            this.f25478a.g = aziVar3;
            aziVar2 = this.f25478a.g;
            aziVar2.h();
        }
    }
}
