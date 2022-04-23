package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aad.class */
final class aad implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzbbq f22998a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aad(zzbbq zzbbqVar) {
        this.f22998a = zzbbqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        aakVar = this.f22998a.f28604a;
        if (aakVar != null) {
            aakVar2 = this.f22998a.f28604a;
            aakVar2.a();
        }
    }
}
