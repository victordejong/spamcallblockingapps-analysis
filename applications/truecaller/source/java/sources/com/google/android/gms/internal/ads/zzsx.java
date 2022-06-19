package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsx.class */
public final class zzsx implements zztb {
    private static final byte[] zza = {73, 68, 51};
    private final boolean zzb;
    private final String zze;
    private String zzf;
    private zzox zzg;
    private zzox zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private boolean zzl;
    private boolean zzm;
    private int zzp;
    private boolean zzq;
    private int zzs;
    private zzox zzu;
    private long zzv;
    private final zzame zzc = new zzame(new byte[7], 7);
    private final zzamf zzd = new zzamf(Arrays.copyOf(zza, 10));
    private int zzn = -1;
    private int zzo = -1;
    private long zzr = -9223372036854775807L;
    private long zzt = -9223372036854775807L;

    public zzsx(boolean z, String str) {
        zzi();
        this.zzb = z;
        this.zze = str;
    }

    public static boolean zzf(int i) {
        return (i & 65526) == 65520;
    }

    private final void zzg() {
        this.zzm = false;
        zzi();
    }

    private final boolean zzh(zzamf zzamfVar, byte[] bArr, int i) {
        int min = Math.min(zzamfVar.zzd(), i - this.zzj);
        zzamfVar.zzm(bArr, this.zzj, min);
        int i2 = this.zzj + min;
        this.zzj = i2;
        return i2 == i;
    }

    private final void zzi() {
        this.zzi = 0;
        this.zzj = 0;
        this.zzk = 256;
    }

    private final void zzj(zzox zzoxVar, long j, int i, int i2) {
        this.zzi = 4;
        this.zzj = i;
        this.zzu = zzoxVar;
        this.zzv = j;
        this.zzs = i2;
    }

    private final void zzk() {
        this.zzi = 3;
        this.zzj = 0;
    }

    private static final boolean zzl(byte b, byte b2) {
        return zzf((b2 & 255) | 65280);
    }

    private static final boolean zzm(zzamf zzamfVar, byte[] bArr, int i) {
        if (zzamfVar.zzd() < i) {
            return false;
        }
        zzamfVar.zzm(bArr, 0, i);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zza() {
        this.zzt = -9223372036854775807L;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzb(zznx zznxVar, zzun zzunVar) {
        zzunVar.zza();
        this.zzf = zzunVar.zzc();
        zzox zzB = zznxVar.zzB(zzunVar.zzb(), 1);
        this.zzg = zzB;
        this.zzu = zzB;
        if (!this.zzb) {
            this.zzh = new zznt();
            return;
        }
        zzunVar.zza();
        zzox zzB2 = zznxVar.zzB(zzunVar.zzb(), 5);
        this.zzh = zzB2;
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzD(zzunVar.zzc());
        zzaftVar.zzN("application/id3");
        zzB2.zzs(zzaftVar.zzah());
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzc(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzt = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzd(zzamf zzamfVar) throws zzaha {
        int i;
        int i2;
        int i3;
        Objects.requireNonNull(this.zzg);
        int i4 = zzamq.zza;
        while (zzamfVar.zzd() > 0) {
            int i5 = this.zzi;
            int i6 = 2;
            if (i5 == 0) {
                byte[] zzi = zzamfVar.zzi();
                int zzg = zzamfVar.zzg();
                int zze = zzamfVar.zze();
                while (true) {
                    if (zzg >= zze) {
                        zzamfVar.zzh(zzg);
                        break;
                    }
                    i = zzg + 1;
                    i2 = zzi[zzg] & 255;
                    if (this.zzk == 512 && zzl((byte) -1, (byte) i2)) {
                        if (this.zzm) {
                            break;
                        }
                        int i7 = i - 2;
                        zzamfVar.zzh(i7 + 1);
                        if (zzm(zzamfVar, this.zzc.zza, 1)) {
                            this.zzc.zzd(4);
                            int zzh = this.zzc.zzh(1);
                            int i8 = this.zzn;
                            if (i8 == -1 || zzh == i8) {
                                if (this.zzo != -1) {
                                    if (!zzm(zzamfVar, this.zzc.zza, 1)) {
                                        break;
                                    }
                                    this.zzc.zzd(i6);
                                    if (this.zzc.zzh(4) == this.zzo) {
                                        zzamfVar.zzh(i7 + 2);
                                    }
                                }
                                if (!zzm(zzamfVar, this.zzc.zza, 4)) {
                                    break;
                                }
                                this.zzc.zzd(14);
                                int zzh2 = this.zzc.zzh(13);
                                if (zzh2 >= 7) {
                                    byte[] zzi2 = zzamfVar.zzi();
                                    int zze2 = zzamfVar.zze();
                                    int i9 = i7 + zzh2;
                                    if (i9 >= zze2) {
                                        break;
                                    } else if ((r0 = zzi2[i9]) == -1) {
                                    }
                                }
                            }
                        }
                    }
                    int i10 = this.zzk;
                    int i11 = i10 | i2;
                    if (i11 == 329) {
                        i3 = 768;
                    } else if (i11 == 511) {
                        i3 = 512;
                    } else if (i11 == 836) {
                        i3 = 1024;
                    } else if (i11 == 1075) {
                        this.zzi = 2;
                        this.zzj = 3;
                        this.zzs = 0;
                        this.zzd.zzh(0);
                        zzamfVar.zzh(i);
                        break;
                    } else if (i10 != 256) {
                        this.zzk = 256;
                        zzg = i - 1;
                        i6 = 2;
                    } else {
                        i6 = 2;
                        zzg = i;
                    }
                    this.zzk = i3;
                    i6 = 2;
                    zzg = i;
                }
                this.zzp = (i2 & 8) >> 3;
                this.zzl = 1 == ((i2 & 1) ^ 1);
                if (!this.zzm) {
                    this.zzi = 1;
                    this.zzj = 0;
                } else {
                    zzk();
                }
                zzamfVar.zzh(i);
            } else if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 3) {
                        int min = Math.min(zzamfVar.zzd(), this.zzs - this.zzj);
                        this.zzu.zzy(zzamfVar, min);
                        int i12 = this.zzj + min;
                        this.zzj = i12;
                        int i13 = this.zzs;
                        if (i12 == i13) {
                            long j = this.zzt;
                            if (j != -9223372036854775807L) {
                                this.zzu.zzv(j, 1, i13, 0, null);
                                this.zzt += this.zzv;
                            }
                            zzi();
                        }
                    } else {
                        if (zzh(zzamfVar, this.zzc.zza, true != this.zzl ? 5 : 7)) {
                            this.zzc.zzd(0);
                            if (!this.zzq) {
                                this.zzc.zzh(2);
                                this.zzc.zzf(5);
                                int zzh3 = this.zzc.zzh(3);
                                int i14 = this.zzo;
                                byte[] bArr = {(byte) (((i14 >> 1) & 7) | 16), (byte) (((zzh3 << 3) & 120) | ((i14 << 7) & 128))};
                                zzmv zza2 = zzmx.zza(bArr);
                                zzaft zzaftVar = new zzaft();
                                zzaftVar.zzD(this.zzf);
                                zzaftVar.zzN("audio/mp4a-latm");
                                zzaftVar.zzK(zza2.zzc);
                                zzaftVar.zzaa(zza2.zzb);
                                zzaftVar.zzab(zza2.zza);
                                zzaftVar.zzP(Collections.singletonList(bArr));
                                zzaftVar.zzG(this.zze);
                                zzafv zzah = zzaftVar.zzah();
                                this.zzr = 1024000000 / zzah.zzz;
                                this.zzg.zzs(zzah);
                                this.zzq = true;
                            } else {
                                this.zzc.zzf(10);
                            }
                            this.zzc.zzf(4);
                            int zzh4 = this.zzc.zzh(13) - 7;
                            int i15 = zzh4;
                            if (this.zzl) {
                                i15 = zzh4 - 2;
                            }
                            zzj(this.zzg, this.zzr, 0, i15);
                        }
                    }
                } else if (zzh(zzamfVar, this.zzd.zzi(), 10)) {
                    this.zzh.zzy(this.zzd, 10);
                    this.zzd.zzh(6);
                    zzj(this.zzh, 0L, 10, 10 + this.zzd.zzA());
                }
            } else if (zzamfVar.zzd() != 0) {
                this.zzc.zza[0] = zzamfVar.zzi()[zzamfVar.zzg()];
                this.zzc.zzd(2);
                int zzh5 = this.zzc.zzh(4);
                int i16 = this.zzo;
                if (i16 == -1 || zzh5 == i16) {
                    if (!this.zzm) {
                        this.zzm = true;
                        this.zzn = this.zzp;
                        this.zzo = zzh5;
                    }
                    zzk();
                } else {
                    zzg();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zze() {
    }
}
