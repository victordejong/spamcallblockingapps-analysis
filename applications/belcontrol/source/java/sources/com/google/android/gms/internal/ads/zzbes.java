package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbes.class */
public final class zzbes implements Runnable {
    private final /* synthetic */ zzbeq zzetv;

    public zzbes(zzbeq zzbeqVar) {
        this.zzetv = zzbeqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbeq.zza(this.zzetv).destroy();
    }
}
