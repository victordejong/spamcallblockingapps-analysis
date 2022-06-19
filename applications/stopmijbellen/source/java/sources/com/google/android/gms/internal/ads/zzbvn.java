package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvn.class */
public final class zzbvn extends zzcjy<zzbvu> {
    private final Object zza = new Object();
    private final zzbvs zzb;
    private boolean zzc;

    public zzbvn(zzbvs zzbvsVar) {
        this.zzb = zzbvsVar;
    }

    public final void zzb() {
        synchronized (this.zza) {
            if (this.zzc) {
                return;
            }
            this.zzc = true;
            zzi(new zzbvk(this), new zzcju());
            zzi(new zzbvl(this), new zzbvm(this));
        }
    }
}
