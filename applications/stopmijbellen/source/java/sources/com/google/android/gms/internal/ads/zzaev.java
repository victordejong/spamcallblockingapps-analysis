package com.google.android.gms.internal.ads;

import android.util.Log;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaev.class */
final class zzaev {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzfk zza = new zzfk(0);
    private long zzf = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private final zzfd zzb = new zzfd();

    public zzaev(int i) {
    }

    private final int zze(zzwq zzwqVar) {
        zzfd zzfdVar = this.zzb;
        byte[] bArr = zzfn.zzf;
        int length = bArr.length;
        zzfdVar.zzD(bArr, 0);
        this.zzc = true;
        zzwqVar.zzj();
        return 0;
    }

    /* JADX WARN: Type inference failed for: r0v132, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    public final int zza(zzwq zzwqVar, zzxm zzxmVar, int i) throws IOException {
        int i2;
        char c;
        int i3;
        char c2;
        if (i <= 0) {
            zze(zzwqVar);
            return 0;
        } else if (!this.zze) {
            long zzc = zzwqVar.zzc();
            int min = (int) Math.min(112800L, zzc);
            long j = zzc - min;
            if (zzwqVar.zze() != j) {
                zzxmVar.zza = j;
                i3 = 1;
            } else {
                this.zzb.zzC(min);
                zzwqVar.zzj();
                ((zzwk) zzwqVar).zzm(this.zzb.zzH(), 0, min, false);
                zzfd zzfdVar = this.zzb;
                int zzc2 = zzfdVar.zzc();
                int zzd = zzfdVar.zzd();
                int i4 = zzd - 188;
                while (true) {
                    c2 = 1;
                    if (i4 < zzc2) {
                        break;
                    }
                    byte[] zzH = zzfdVar.zzH();
                    int i5 = -4;
                    int i6 = 0;
                    while (true) {
                        if (i5 > 4) {
                            break;
                        }
                        int i7 = (i5 * 188) + i4;
                        if (i7 < zzc2 || i7 >= zzd || zzH[i7] != 71) {
                            i6 = 0;
                        } else {
                            int i8 = i6 + 1;
                            i6 = i8;
                            if (i8 == 5) {
                                c2 = zzaff.zzb(zzfdVar, i4, i);
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
        } else if (this.zzg == -9223372036854775807L) {
            zze(zzwqVar);
            return 0;
        } else if (this.zzd) {
            long j2 = this.zzf;
            if (j2 == -9223372036854775807L) {
                zze(zzwqVar);
                return 0;
            }
            long zzb = this.zza.zzb(this.zzg) - this.zza.zzb(j2);
            this.zzh = zzb;
            if (zzb < 0) {
                StringBuilder sb = new StringBuilder(65);
                sb.append("Invalid duration: ");
                sb.append(zzb);
                sb.append(". Using TIME_UNSET instead.");
                Log.w("TsDurationReader", sb.toString());
                this.zzh = -9223372036854775807L;
            }
            zze(zzwqVar);
            return 0;
        } else {
            int min2 = (int) Math.min(112800L, zzwqVar.zzc());
            if (zzwqVar.zze() != 0) {
                zzxmVar.zza = 0L;
                i2 = 1;
            } else {
                this.zzb.zzC(min2);
                zzwqVar.zzj();
                ((zzwk) zzwqVar).zzm(this.zzb.zzH(), 0, min2, false);
                zzfd zzfdVar2 = this.zzb;
                int zzc3 = zzfdVar2.zzc();
                int zzd2 = zzfdVar2.zzd();
                while (true) {
                    c = 1;
                    if (zzc3 >= zzd2) {
                        break;
                    }
                    if (zzfdVar2.zzH()[zzc3] == 71) {
                        c = zzaff.zzb(zzfdVar2, zzc3, i);
                        if (c != -9223372036854775807L) {
                            break;
                        }
                    }
                    zzc3++;
                }
                this.zzf = c;
                this.zzd = true;
                i2 = 0;
            }
            return i2;
        }
    }

    public final long zzb() {
        return this.zzh;
    }

    public final zzfk zzc() {
        return this.zza;
    }

    public final boolean zzd() {
        return this.zzc;
    }
}
