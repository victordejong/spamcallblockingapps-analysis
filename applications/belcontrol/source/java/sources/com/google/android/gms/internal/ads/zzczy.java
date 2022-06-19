package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczy.class */
public final /* synthetic */ class zzczy implements Runnable {
    private final zzczo zzgzl;
    private final zzcgk[] zzgzu;

    public zzczy(zzczo zzczoVar, zzcgk[] zzcgkVarArr) {
        this.zzgzl = zzczoVar;
        this.zzgzu = zzcgkVarArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgzl.zza(this.zzgzu);
    }
}
