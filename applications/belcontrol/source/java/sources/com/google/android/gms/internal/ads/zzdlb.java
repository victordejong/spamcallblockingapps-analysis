package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdlb.class */
public final /* synthetic */ class zzdlb implements Runnable {
    private final zzdkz zzhhw;

    public zzdlb(zzdkz zzdkzVar) {
        this.zzhhw = zzdkzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdkx.zza(this.zzhhw.zzhhy).onAdLoaded();
    }
}
