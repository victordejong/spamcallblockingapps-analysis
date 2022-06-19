package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadn.class */
public final class zzadn implements zzadr {
    private static final byte[] zza = {73, 68, 51};
    private final boolean zzb;
    private final String zze;
    private String zzf;
    private zzxt zzg;
    private zzxt zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private boolean zzl;
    private boolean zzm;
    private int zzp;
    private boolean zzq;
    private int zzs;
    private zzxt zzu;
    private long zzv;
    private final zzfc zzc = new zzfc(new byte[7], 7);
    private final zzfd zzd = new zzfd(Arrays.copyOf(zza, 10));
    private int zzn = -1;
    private int zzo = -1;
    private long zzr = -9223372036854775807L;
    private long zzt = -9223372036854775807L;

    public zzadn(boolean z, String str) {
        zzh();
        this.zzb = z;
        this.zze = str;
    }

    public static boolean zzf(int i) {
        return (i & 65526) == 65520;
    }

    private final void zzg() {
        this.zzm = false;
        zzh();
    }

    private final void zzh() {
        this.zzi = 0;
        this.zzj = 0;
        this.zzk = 256;
    }

    private final void zzi() {
        this.zzi = 3;
        this.zzj = 0;
    }

    private final void zzj(zzxt zzxtVar, long j, int i, int i2) {
        this.zzi = 4;
        this.zzj = i;
        this.zzu = zzxtVar;
        this.zzv = j;
        this.zzs = i2;
    }

    private final boolean zzk(zzfd zzfdVar, byte[] bArr, int i) {
        int min = Math.min(zzfdVar.zza(), i - this.zzj);
        zzfdVar.zzB(bArr, this.zzj, min);
        int i2 = this.zzj + min;
        this.zzj = i2;
        return i2 == i;
    }

    private static final boolean zzl(byte b, byte b2) {
        return zzf((b2 & 255) | 65280);
    }

    private static final boolean zzm(zzfd zzfdVar, byte[] bArr, int i) {
        if (zzfdVar.zza() < i) {
            return false;
        }
        zzfdVar.zzB(bArr, 0, i);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zza(zzfd zzfdVar) throws zzbj {
        int i;
        int i2;
        int i3;
        Objects.requireNonNull(this.zzg);
        int i4 = zzfn.zza;
        while (zzfdVar.zza() > 0) {
            int i5 = this.zzi;
            if (i5 == 0) {
                byte[] zzH = zzfdVar.zzH();
                int zzc = zzfdVar.zzc();
                int zzd = zzfdVar.zzd();
                while (true) {
                    if (zzc >= zzd) {
                        zzfdVar.zzF(zzc);
                        break;
                    }
                    i = zzc + 1;
                    i2 = zzH[zzc] & 255;
                    if (this.zzk == 512 && zzl((byte) -1, (byte) i2)) {
                        if (this.zzm) {
                            break;
                        }
                        int i6 = i - 2;
                        zzfdVar.zzF(i6 + 1);
                        if (zzm(zzfdVar, this.zzc.zza, 1)) {
                            this.zzc.zzh(4);
                            int zzc2 = this.zzc.zzc(1);
                            int i7 = this.zzn;
                            if (i7 == -1 || zzc2 == i7) {
                                if (this.zzo != -1) {
                                    if (!zzm(zzfdVar, this.zzc.zza, 1)) {
                                        break;
                                    }
                                    this.zzc.zzh(2);
                                    if (this.zzc.zzc(4) == this.zzo) {
                                        zzfdVar.zzF(i6 + 2);
                                    }
                                }
                                if (!zzm(zzfdVar, this.zzc.zza, 4)) {
                                    break;
                                }
                                this.zzc.zzh(14);
                                int zzc3 = this.zzc.zzc(13);
                                if (zzc3 >= 7) {
                                    byte[] zzH2 = zzfdVar.zzH();
                                    int zzd2 = zzfdVar.zzd();
                                    int i8 = i6 + zzc3;
                                    if (i8 >= zzd2) {
                                        break;
                                    } else if ((r0 = zzH2[i8]) == -1) {
                                    }
                                }
                            }
                        }
                    }
                    int i9 = this.zzk;
                    int i10 = i9 | i2;
                    if (i10 == 329) {
                        i3 = 768;
                    } else if (i10 == 511) {
                        i3 = 512;
                    } else if (i10 == 836) {
                        i3 = 1024;
                    } else if (i10 == 1075) {
                        this.zzi = 2;
                        this.zzj = 3;
                        this.zzs = 0;
                        this.zzd.zzF(0);
                        zzfdVar.zzF(i);
                        break;
                    } else if (i9 != 256) {
                        this.zzk = 256;
                        zzc = i - 1;
                    } else {
                        zzc = i;
                    }
                    this.zzk = i3;
                    zzc = i;
                }
                this.zzp = (i2 & 8) >> 3;
                this.zzl = 1 == ((i2 & 1) ^ 1);
                if (!this.zzm) {
                    this.zzi = 1;
                    this.zzj = 0;
                } else {
                    zzi();
                }
                zzfdVar.zzF(i);
            } else if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 3) {
                        int min = Math.min(zzfdVar.zza(), this.zzs - this.zzj);
                        this.zzu.zzq(zzfdVar, min);
                        int i11 = this.zzj + min;
                        this.zzj = i11;
                        int i12 = this.zzs;
                        if (i11 == i12) {
                            long j = this.zzt;
                            if (j != -9223372036854775807L) {
                                this.zzu.zzs(j, 1, i12, 0, null);
                                this.zzt += this.zzv;
                            }
                            zzh();
                        }
                    } else {
                        if (zzk(zzfdVar, this.zzc.zza, true != this.zzl ? 5 : 7)) {
                            this.zzc.zzh(0);
                            if (!this.zzq) {
                                int zzc4 = this.zzc.zzc(2) + 1;
                                if (zzc4 != 2) {
                                    StringBuilder sb = new StringBuilder(61);
                                    sb.append("Detected audio object type: ");
                                    sb.append(zzc4);
                                    sb.append(", but assuming AAC LC.");
                                    Log.w("AdtsReader", sb.toString());
                                }
                                this.zzc.zzj(5);
                                int zzc5 = this.zzc.zzc(3);
                                int i13 = this.zzo;
                                byte[] bArr = {(byte) (((i13 >> 1) & 7) | 16), (byte) (((zzc5 << 3) & C3681R.styleable.AppCompatTheme_windowFixedHeightMajor) | ((i13 << 7) & 128))};
                                zzvr zza2 = zzvs.zza(bArr);
                                zzz zzzVar = new zzz();
                                zzzVar.zzH(this.zzf);
                                zzzVar.zzS("audio/mp4a-latm");
                                zzzVar.zzx(zza2.zzc);
                                zzzVar.zzw(zza2.zzb);
                                zzzVar.zzT(zza2.zza);
                                zzzVar.zzI(Collections.singletonList(bArr));
                                zzzVar.zzK(this.zze);
                                zzab zzY = zzzVar.zzY();
                                this.zzr = 1024000000 / zzY.zzA;
                                this.zzg.zzk(zzY);
                                this.zzq = true;
                            } else {
                                this.zzc.zzj(10);
                            }
                            this.zzc.zzj(4);
                            int zzc6 = this.zzc.zzc(13) - 7;
                            int i14 = zzc6;
                            if (this.zzl) {
                                i14 = zzc6 - 2;
                            }
                            zzj(this.zzg, this.zzr, 0, i14);
                        }
                    }
                } else if (zzk(zzfdVar, this.zzd.zzH(), 10)) {
                    this.zzh.zzq(this.zzd, 10);
                    this.zzd.zzF(6);
                    zzj(this.zzh, 0L, 10, 10 + this.zzd.zzj());
                }
            } else if (zzfdVar.zza() != 0) {
                this.zzc.zza[0] = zzfdVar.zzH()[zzfdVar.zzc()];
                this.zzc.zzh(2);
                int zzc7 = this.zzc.zzc(4);
                int i15 = this.zzo;
                if (i15 == -1 || zzc7 == i15) {
                    if (!this.zzm) {
                        this.zzm = true;
                        this.zzn = this.zzp;
                        this.zzo = zzc7;
                    }
                    zzi();
                } else {
                    zzg();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        zzafdVar.zzc();
        this.zzf = zzafdVar.zzb();
        zzxt zzv = zzwsVar.zzv(zzafdVar.zza(), 1);
        this.zzg = zzv;
        this.zzu = zzv;
        if (!this.zzb) {
            this.zzh = new zzwo();
            return;
        }
        zzafdVar.zzc();
        zzxt zzv2 = zzwsVar.zzv(zzafdVar.zza(), 5);
        this.zzh = zzv2;
        zzz zzzVar = new zzz();
        zzzVar.zzH(zzafdVar.zzb());
        zzzVar.zzS("application/id3");
        zzv2.zzk(zzzVar.zzY());
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzd(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzt = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zze() {
        this.zzt = -9223372036854775807L;
        zzg();
    }
}
