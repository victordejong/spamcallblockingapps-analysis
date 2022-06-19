package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyr.class */
public final class zzdyr implements Runnable {
    private final /* synthetic */ zzdyo zzhzv;
    private final /* synthetic */ zzdzw zzhzw;
    private final /* synthetic */ int zzhzx;

    public zzdyr(zzdyo zzdyoVar, zzdzw zzdzwVar, int i) {
        this.zzhzv = zzdyoVar;
        this.zzhzw = zzdzwVar;
        this.zzhzx = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.zzhzw.isCancelled()) {
                this.zzhzv.zzhzr = null;
                this.zzhzv.cancel(false);
            } else {
                this.zzhzv.zza(this.zzhzx, this.zzhzw);
            }
        } finally {
            this.zzhzv.zza((zzdwy) null);
        }
    }
}
