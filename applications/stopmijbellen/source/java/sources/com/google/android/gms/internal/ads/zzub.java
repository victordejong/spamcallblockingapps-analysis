package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzub.class */
final class zzub implements Runnable {
    private final zzua zza;

    public zzub(zzua zzuaVar) {
        this.zza = zzuaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzI();
    }
}
