package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aaf.class */
final class aaf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzbbq f23002a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aaf(zzbbq zzbbqVar) {
        this.f23002a = zzbbqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        aak aakVar3;
        aakVar = this.f23002a.f28604a;
        if (aakVar != null) {
            aakVar2 = this.f23002a.f28604a;
            aakVar2.d();
            aakVar3 = this.f23002a.f28604a;
            aakVar3.f();
        }
    }
}
