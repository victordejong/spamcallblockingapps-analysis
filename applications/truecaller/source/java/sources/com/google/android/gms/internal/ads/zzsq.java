package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsq.class */
public final class zzsq implements zznu {
    public static final zzoa zza = zzsp.zza;
    private final zzsr zzb = new zzsr(null);
    private final zzamf zzc = new zzamf(2786);
    private boolean zzd;

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zza(zznv zznvVar) throws IOException {
        zzamf zzamfVar = new zzamf(10);
        int i = 0;
        while (true) {
            byte[] zzi = zzamfVar.zzi();
            zznp zznpVar = (zznp) zznvVar;
            zznpVar.zzh(zzi, 0, 10, false);
            zzamfVar.zzh(0);
            if (zzamfVar.zzr() != 4801587) {
                break;
            }
            zzamfVar.zzk(3);
            int zzA = zzamfVar.zzA();
            i += zzA + 10;
            zznpVar.zzj(zzA, false);
        }
        zznvVar.zzl();
        zznp zznpVar2 = (zznp) zznvVar;
        zznpVar2.zzj(i, false);
        int i2 = 0;
        int i3 = i;
        while (true) {
            zznpVar2.zzh(zzamfVar.zzi(), 0, 6, false);
            zzamfVar.zzh(0);
            if (zzamfVar.zzo() != 2935) {
                zznvVar.zzl();
                i3++;
                if (i3 - i >= 8192) {
                    return false;
                }
                zznpVar2.zzj(i3, false);
                i2 = 0;
            } else {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                int zzd = zzna.zzd(zzamfVar.zzi());
                if (zzd == -1) {
                    return false;
                }
                zznpVar2.zzj(zzd - 6, false);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzb(zznx zznxVar) {
        this.zzb.zzb(zznxVar, new zzun(Integer.MIN_VALUE, 0, 1));
        zznxVar.zzC();
        zznxVar.zzD(new zzos(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final int zzc(zznv zznvVar, zzoq zzoqVar) throws IOException {
        int zzg = zznvVar.zzg(this.zzc.zzi(), 0, 2786);
        if (zzg == -1) {
            return -1;
        }
        this.zzc.zzh(0);
        this.zzc.zzf(zzg);
        if (!this.zzd) {
            this.zzb.zzc(0L, 4);
            this.zzd = true;
        }
        this.zzb.zzd(this.zzc);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzd(long j, long j2) {
        this.zzd = false;
        this.zzb.zza();
    }
}
