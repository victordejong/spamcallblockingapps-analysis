package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyq.class */
public final class zzdyq implements Runnable {
    private final /* synthetic */ zzdwy zzhzu;
    private final /* synthetic */ zzdyo zzhzv;

    public zzdyq(zzdyo zzdyoVar, zzdwy zzdwyVar) {
        this.zzhzv = zzdyoVar;
        this.zzhzu = zzdwyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzhzv.zza(this.zzhzu);
    }
}
