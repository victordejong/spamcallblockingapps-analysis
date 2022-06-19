package com.google.android.gms.internal.ads;

import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztw.class */
public final class zztw {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzamn zza = new zzamn(0);
    private long zzf = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private final zzamf zzb = new zzamf();

    public static long zze(zzamf zzamfVar) {
        int zzg = zzamfVar.zzg();
        if (zzamfVar.zzd() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        zzamfVar.zzm(bArr, 0, 9);
        zzamfVar.zzh(zzg);
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4 || (bArr[4] & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return -9223372036854775807L;
        }
        long j = bArr[0];
        byte b = bArr[1];
        long j2 = bArr[2];
        return ((bArr[3] & 255) << 5) | ((j & 3) << 28) | (((56 & j) >> 3) << 30) | ((b & 255) << 20) | (((j2 & 248) >> 3) << 15) | ((j2 & 3) << 13) | ((bArr[4] & 248) >> 3);
    }

    private final int zzf(zznv zznvVar) {
        zzamf zzamfVar = this.zzb;
        byte[] bArr = zzamq.zzf;
        int length = bArr.length;
        zzamfVar.zzb(bArr, 0);
        this.zzc = true;
        zznvVar.zzl();
        return 0;
    }

    private static final int zzg(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public final boolean zza() {
        return this.zzc;
    }

    public final zzamn zzb() {
        return this.zza;
    }

    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    public final int zzc(zznv zznvVar, zzoq zzoqVar) throws IOException {
        int i;
        char c;
        char c2;
        int i2 = 1;
        if (!this.zze) {
            long zzo = zznvVar.zzo();
            int min = (int) Math.min((long) DefaultRefreshIntervals.ACTIVE_CONV_MIN_FETCH_INTERVAL, zzo);
            long j = zzo - min;
            if (zznvVar.zzn() != j) {
                zzoqVar.zza = j;
            } else {
                this.zzb.zza(min);
                zznvVar.zzl();
                ((zznp) zznvVar).zzh(this.zzb.zzi(), 0, min, false);
                zzamf zzamfVar = this.zzb;
                int zzg = zzamfVar.zzg();
                int zze = zzamfVar.zze() - 4;
                while (true) {
                    c2 = 1;
                    if (zze < zzg) {
                        break;
                    }
                    if (zzg(zzamfVar.zzi(), zze) == 442) {
                        zzamfVar.zzh(zze + 4);
                        c2 = zze(zzamfVar);
                        if (c2 != -9223372036854775807L) {
                            break;
                        }
                    }
                    zze--;
                }
                this.zzg = c2;
                this.zze = true;
                i2 = 0;
            }
            return i2;
        } else if (this.zzg == -9223372036854775807L) {
            zzf(zznvVar);
            return 0;
        } else if (this.zzd) {
            long j2 = this.zzf;
            if (j2 == -9223372036854775807L) {
                zzf(zznvVar);
                return 0;
            }
            long zze2 = this.zza.zze(this.zzg) - this.zza.zze(j2);
            this.zzh = zze2;
            if (zze2 < 0) {
                this.zzh = -9223372036854775807L;
            }
            zzf(zznvVar);
            return 0;
        } else {
            int min2 = (int) Math.min((long) DefaultRefreshIntervals.ACTIVE_CONV_MIN_FETCH_INTERVAL, zznvVar.zzo());
            if (zznvVar.zzn() != 0) {
                zzoqVar.zza = 0L;
                i = 1;
            } else {
                this.zzb.zza(min2);
                zznvVar.zzl();
                ((zznp) zznvVar).zzh(this.zzb.zzi(), 0, min2, false);
                zzamf zzamfVar2 = this.zzb;
                int zzg2 = zzamfVar2.zzg();
                int zze3 = zzamfVar2.zze();
                while (true) {
                    c = 1;
                    if (zzg2 >= zze3 - 3) {
                        break;
                    }
                    if (zzg(zzamfVar2.zzi(), zzg2) == 442) {
                        zzamfVar2.zzh(zzg2 + 4);
                        c = zze(zzamfVar2);
                        if (c != -9223372036854775807L) {
                            break;
                        }
                    }
                    zzg2++;
                }
                this.zzf = c;
                this.zzd = true;
                i = 0;
            }
            return i;
        }
    }

    public final long zzd() {
        return this.zzh;
    }
}
