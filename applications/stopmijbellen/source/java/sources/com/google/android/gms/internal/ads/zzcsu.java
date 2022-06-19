package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsu.class */
public final class zzcsu {
    private zzcqp zza;
    private zzcuk zzb;
    private zzfii zzc;
    private zzcuw zzd;
    private zzfez zze;

    private zzcsu() {
    }

    public /* synthetic */ zzcsu(zzcst zzcstVar) {
    }

    public final zzcqm zza() {
        zzgpz.zzc(this.zza, zzcqp.class);
        zzgpz.zzc(this.zzb, zzcuk.class);
        if (this.zzc == null) {
            this.zzc = new zzfii();
        }
        if (this.zzd == null) {
            this.zzd = new zzcuw();
        }
        if (this.zze == null) {
            this.zze = new zzfez();
        }
        return new zzcui(this.zza, this.zzb, this.zzc, this.zzd, this.zze, null);
    }

    public final zzcsu zzb(zzcqp zzcqpVar) {
        this.zza = zzcqpVar;
        return this;
    }

    public final zzcsu zzc(zzcuk zzcukVar) {
        this.zzb = zzcukVar;
        return this;
    }
}
