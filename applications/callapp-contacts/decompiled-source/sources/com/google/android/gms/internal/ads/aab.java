package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aab.class */
final class aab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzbbq f22995a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aab(zzbbq zzbbqVar) {
        this.f22995a = zzbbqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        aakVar = this.f22995a.f28604a;
        if (aakVar != null) {
            aakVar2 = this.f22995a.f28604a;
            aakVar2.e();
        }
    }
}
