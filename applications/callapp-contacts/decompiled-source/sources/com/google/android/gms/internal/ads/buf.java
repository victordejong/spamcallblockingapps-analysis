package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/buf.class */
final class buf implements dbi<alq> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ bua f25120a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public buf(bua buaVar) {
        this.f25120a = buaVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(alq alqVar) {
        alqVar.h();
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        zzvh a2 = this.f25120a.f25102a.b().a(th);
        this.f25120a.f25105d.a(a2);
        cqb.a(a2.errorCode, th, "DelayedBannerAd.onFailure");
    }
}
