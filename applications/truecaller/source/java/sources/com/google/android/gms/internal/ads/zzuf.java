package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzuf.class */
public final class zzuf {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzamn zza = new zzamn(0);
    private long zzf = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private final zzamf zzb = new zzamf();

    public zzuf(int i) {
    }

    private final int zze(zznv zznvVar) {
        zzamf zzamfVar = this.zzb;
        byte[] bArr = zzamq.zzf;
        int length = bArr.length;
        zzamfVar.zzb(bArr, 0);
        this.zzc = true;
        zznvVar.zzl();
        return 0;
    }

    public final boolean zza() {
        return this.zzc;
    }

    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    public final int zzb(zznv zznvVar, zzoq zzoqVar, int i) throws IOException {
        int i2;
        char c;
        int i3;
        char c2;
        if (i <= 0) {
            zze(zznvVar);
            return 0;
        } else if (this.zze) {
            if (this.zzg == -9223372036854775807L) {
                zze(zznvVar);
                return 0;
            } else if (this.zzd) {
                long j = this.zzf;
                if (j == -9223372036854775807L) {
                    zze(zznvVar);
                    return 0;
                }
                long zze = this.zza.zze(this.zzg) - this.zza.zze(j);
                this.zzh = zze;
                if (zze < 0) {
                    this.zzh = -9223372036854775807L;
                }
                zze(zznvVar);
                return 0;
            } else {
                int min = (int) Math.min(112800L, zznvVar.zzo());
                if (zznvVar.zzn() != 0) {
                    zzoqVar.zza = 0L;
                    i2 = 1;
                } else {
                    this.zzb.zza(min);
                    zznvVar.zzl();
                    ((zznp) zznvVar).zzh(this.zzb.zzi(), 0, min, false);
                    zzamf zzamfVar = this.zzb;
                    int zzg = zzamfVar.zzg();
                    int zze2 = zzamfVar.zze();
                    while (true) {
                        c = 1;
                        if (zzg >= zze2) {
                            break;
                        }
                        if (zzamfVar.zzi()[zzg] == 71) {
                            c = zzup.zzb(zzamfVar, zzg, i);
                            if (c != -9223372036854775807L) {
                                break;
                            }
                        }
                        zzg++;
                    }
                    this.zzf = c;
                    this.zzd = true;
                    i2 = 0;
                }
                return i2;
            }
        } else {
            long zzo = zznvVar.zzo();
            int min2 = (int) Math.min(112800L, zzo);
            long j2 = zzo - min2;
            if (zznvVar.zzn() != j2) {
                zzoqVar.zza = j2;
                i3 = 1;
            } else {
                this.zzb.zza(min2);
                zznvVar.zzl();
                ((zznp) zznvVar).zzh(this.zzb.zzi(), 0, min2, false);
                zzamf zzamfVar2 = this.zzb;
                int zzg2 = zzamfVar2.zzg();
                int zze3 = zzamfVar2.zze();
                int i4 = zze3 - 188;
                while (true) {
                    c2 = 1;
                    if (i4 < zzg2) {
                        break;
                    }
                    byte[] zzi = zzamfVar2.zzi();
                    int i5 = -4;
                    int i6 = 0;
                    while (true) {
                        if (i5 > 4) {
                            break;
                        }
                        int i7 = (i5 * 188) + i4;
                        if (i7 < zzg2 || i7 >= zze3 || zzi[i7] != 71) {
                            i6 = 0;
                        } else {
                            int i8 = i6 + 1;
                            i6 = i8;
                            if (i8 == 5) {
                                c2 = zzup.zzb(zzamfVar2, i4, i);
                                if (c2 != -9223372036854775807L) {
                                    break;
                                }
                            }
                        }
                        i5++;
                    }
                    i4--;
                }
                this.zzg = c2;
                this.zze = true;
                i3 = 0;
            }
            return i3;
        }
    }

    public final long zzc() {
        return this.zzh;
    }

    public final zzamn zzd() {
        return this.zza;
    }
}
