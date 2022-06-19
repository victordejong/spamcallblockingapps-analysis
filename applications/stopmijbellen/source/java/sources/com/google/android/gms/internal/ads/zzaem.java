package com.google.android.gms.internal.ads;

import android.util.Log;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaem.class */
final class zzaem {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzfk zza = new zzfk(0);
    private long zzf = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private final zzfd zzb = new zzfd();

    public static long zzc(zzfd zzfdVar) {
        int zzc = zzfdVar.zzc();
        if (zzfdVar.zza() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        zzfdVar.zzB(bArr, 0, 9);
        zzfdVar.zzF(zzc);
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4 || (bArr[4] & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return -9223372036854775807L;
        }
        long j = bArr[0];
        byte b = bArr[1];
        long j2 = bArr[2];
        return ((bArr[3] & 255) << 5) | ((j & 3) << 28) | (((56 & j) >> 3) << 30) | ((b & 255) << 20) | (((j2 & 248) >> 3) << 15) | ((j2 & 3) << 13) | ((bArr[4] & 248) >> 3);
    }

    private final int zzf(zzwq zzwqVar) {
        zzfd zzfdVar = this.zzb;
        byte[] bArr = zzfn.zzf;
        int length = bArr.length;
        zzfdVar.zzD(bArr, 0);
        this.zzc = true;
        zzwqVar.zzj();
        return 0;
    }

    private static final int zzg(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    public final int zza(zzwq zzwqVar, zzxm zzxmVar) throws IOException {
        int i;
        char c;
        char c2;
        int i2 = 1;
        if (!this.zze) {
            long zzc = zzwqVar.zzc();
            int min = (int) Math.min(20000L, zzc);
            long j = zzc - min;
            if (zzwqVar.zze() != j) {
                zzxmVar.zza = j;
            } else {
                this.zzb.zzC(min);
                zzwqVar.zzj();
                ((zzwk) zzwqVar).zzm(this.zzb.zzH(), 0, min, false);
                zzfd zzfdVar = this.zzb;
                int zzc2 = zzfdVar.zzc();
                int zzd = zzfdVar.zzd() - 4;
                while (true) {
                    c2 = 1;
                    if (zzd < zzc2) {
                        break;
                    }
                    if (zzg(zzfdVar.zzH(), zzd) == 442) {
                        zzfdVar.zzF(zzd + 4);
                        c2 = zzc(zzfdVar);
                        if (c2 != -9223372036854775807L) {
                            break;
                        }
                    }
                    zzd--;
                }
                this.zzg = c2;
                this.zze = true;
                i2 = 0;
            }
            return i2;
        } else if (this.zzg == -9223372036854775807L) {
            zzf(zzwqVar);
            return 0;
        } else if (this.zzd) {
            long j2 = this.zzf;
            if (j2 == -9223372036854775807L) {
                zzf(zzwqVar);
                return 0;
            }
            long zzb = this.zza.zzb(this.zzg) - this.zza.zzb(j2);
            this.zzh = zzb;
            if (zzb < 0) {
                StringBuilder sb = new StringBuilder(65);
                sb.append("Invalid duration: ");
                sb.append(zzb);
                sb.append(". Using TIME_UNSET instead.");
                Log.w("PsDurationReader", sb.toString());
                this.zzh = -9223372036854775807L;
            }
            zzf(zzwqVar);
            return 0;
        } else {
            int min2 = (int) Math.min(20000L, zzwqVar.zzc());
            if (zzwqVar.zze() != 0) {
                zzxmVar.zza = 0L;
                i = 1;
            } else {
                this.zzb.zzC(min2);
                zzwqVar.zzj();
                ((zzwk) zzwqVar).zzm(this.zzb.zzH(), 0, min2, false);
                zzfd zzfdVar2 = this.zzb;
                int zzc3 = zzfdVar2.zzc();
                int zzd2 = zzfdVar2.zzd();
                while (true) {
                    c = 1;
                    if (zzc3 >= zzd2 - 3) {
                        break;
                    }
                    if (zzg(zzfdVar2.zzH(), zzc3) == 442) {
                        zzfdVar2.zzF(zzc3 + 4);
                        c = zzc(zzfdVar2);
                        if (c != -9223372036854775807L) {
                            break;
                        }
                    }
                    zzc3++;
                }
                this.zzf = c;
                this.zzd = true;
                i = 0;
            }
            return i;
        }
    }

    public final long zzb() {
        return this.zzh;
    }

    public final zzfk zzd() {
        return this.zza;
    }

    public final boolean zze() {
        return this.zzc;
    }
}
