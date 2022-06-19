package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzst.class */
public final class zzst implements zznu {
    public static final zzoa zza = zzss.zza;
    private final zzsu zzb = new zzsu(null);
    private final zzamf zzc = new zzamf(16384);
    private boolean zzd;

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zza(zznv zznvVar) throws IOException {
        int i;
        int i2;
        int i3;
        zzamf zzamfVar = new zzamf(10);
        int i4 = 0;
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
            i4 += zzA + 10;
            zznpVar.zzj(zzA, false);
        }
        zznvVar.zzl();
        zznp zznpVar2 = (zznp) zznvVar;
        zznpVar2.zzj(i4, false);
        int i5 = 0;
        int i6 = i4;
        while (true) {
            zznpVar2.zzh(zzamfVar.zzi(), 0, 7, false);
            zzamfVar.zzh(0);
            int zzo = zzamfVar.zzo();
            if (zzo == 44096 || zzo == 44097) {
                int i7 = i5 + 1;
                if (i7 >= 4) {
                    return true;
                }
                byte[] zzi2 = zzamfVar.zzi();
                int i8 = zznd.zza;
                if (zzi2.length < 7) {
                    i = -1;
                } else {
                    int i9 = ((zzi2[2] & 255) << 8) | (zzi2[3] & 255);
                    if (i9 == 65535) {
                        i3 = 7;
                        i2 = ((zzi2[4] & 255) << 16) | ((zzi2[5] & 255) << 8) | (zzi2[6] & 255);
                    } else {
                        i3 = 4;
                        i2 = i9;
                    }
                    int i10 = i3;
                    if (zzo == 44097) {
                        i10 = i3 + 2;
                    }
                    i = i2 + i10;
                }
                if (i == -1) {
                    return false;
                }
                zznpVar2.zzj(i - 7, false);
                i5 = i7;
            } else {
                zznvVar.zzl();
                i6++;
                if (i6 - i4 >= 8192) {
                    return false;
                }
                zznpVar2.zzj(i6, false);
                i5 = 0;
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
        int zzg = zznvVar.zzg(this.zzc.zzi(), 0, 16384);
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
