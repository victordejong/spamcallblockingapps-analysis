package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdky.class */
public final /* synthetic */ class zzdky implements Runnable {
    private final zzdkz zzhhw;

    public zzdky(zzdkz zzdkzVar) {
        this.zzhhw = zzdkzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdkx.zzb(this.zzhhw.zzhhy).onAdLoaded();
    }
}
