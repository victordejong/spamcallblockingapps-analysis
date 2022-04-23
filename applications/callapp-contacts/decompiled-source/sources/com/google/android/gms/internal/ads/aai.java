package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aai.class */
final class aai implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzbbq f23007a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aai(zzbbq zzbbqVar) {
        this.f23007a = zzbbqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        aakVar = this.f23007a.f28604a;
        if (aakVar != null) {
            aakVar2 = this.f23007a.f28604a;
            aakVar2.c();
        }
    }
}
