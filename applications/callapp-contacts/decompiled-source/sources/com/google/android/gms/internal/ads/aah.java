package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aah.class */
final class aah implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzbbq f23006a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aah(zzbbq zzbbqVar) {
        this.f23006a = zzbbqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        aakVar = this.f23006a.f28604a;
        if (aakVar != null) {
            aakVar2 = this.f23006a.f28604a;
            aakVar2.d();
        }
    }
}
