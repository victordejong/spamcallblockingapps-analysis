package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbes.class */
final class zzbes implements Runnable {
    private final /* synthetic */ zzbeq zzetv;

    public zzbes(zzbeq zzbeqVar) {
        this.zzetv = zzbeqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbeb zzbebVar;
        zzbebVar = this.zzetv.zzesi;
        zzbebVar.destroy();
    }
}
