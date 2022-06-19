package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzei.class */
public final class zzei extends zzeg {
    private final byte[] zzd;
    private final boolean zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;

    /* JADX INFO: Access modifiers changed from: private */
    public zzei(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzk = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzd = bArr;
        this.zzf = i2 + i;
        this.zzh = i;
        this.zzi = this.zzh;
        this.zze = z;
    }

    private final byte zzaa() {
        int i = this.zzh;
        if (i != this.zzf) {
            byte[] bArr = this.zzd;
            this.zzh = i + 1;
            return bArr[i];
        }
        throw zzfo.zza();
    }

    private final void zzf(int i) {
        if (i >= 0) {
            int i2 = this.zzf;
            int i3 = this.zzh;
            if (i <= i2 - i3) {
                this.zzh = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzfo.zzb();
        }
        throw zzfo.zza();
    }

    private final int zzv() {
        int i;
        int i2 = this.zzh;
        int i3 = this.zzf;
        if (i3 != i2) {
            byte[] bArr = this.zzd;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.zzh = i4;
                return b;
            } else if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        i5 = i7;
                        i = i8 ^ 16256;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            int i10 = i5 + 1;
                            byte b2 = bArr[i5];
                            int i11 = (i9 ^ (b2 << 28)) ^ 266354560;
                            i = i11;
                            i5 = i10;
                            if (b2 < 0) {
                                int i12 = i10 + 1;
                                i = i11;
                                i5 = i12;
                                if (bArr[i10] < 0) {
                                    int i13 = i12 + 1;
                                    i = i11;
                                    i5 = i13;
                                    if (bArr[i12] < 0) {
                                        int i14 = i13 + 1;
                                        i = i11;
                                        i5 = i14;
                                        if (bArr[i13] < 0) {
                                            int i15 = i14 + 1;
                                            i = i11;
                                            i5 = i15;
                                            if (bArr[i14] < 0) {
                                                i5 = i15 + 1;
                                                if (bArr[i15] >= 0) {
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.zzh = i5;
                return i;
            }
        }
        return (int) zzs();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0156, code lost:
        if (r0[r0] >= 0) goto L39;
     */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long zzw() {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzei.zzw():long");
    }

    private final int zzx() {
        int i = this.zzh;
        if (this.zzf - i >= 4) {
            byte[] bArr = this.zzd;
            this.zzh = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzfo.zza();
    }

    private final long zzy() {
        int i = this.zzh;
        if (this.zzf - i >= 8) {
            byte[] bArr = this.zzd;
            this.zzh = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzfo.zza();
    }

    private final void zzz() {
        this.zzf += this.zzg;
        int i = this.zzf;
        int i2 = i - this.zzi;
        int i3 = this.zzk;
        if (i2 <= i3) {
            this.zzg = 0;
            return;
        }
        this.zzg = i2 - i3;
        this.zzf = i - this.zzg;
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zza() {
        if (zzt()) {
            this.zzj = 0;
            return 0;
        }
        this.zzj = zzv();
        int i = this.zzj;
        if ((i >>> 3) == 0) {
            throw zzfo.zzd();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final void zza(int i) {
        if (this.zzj == i) {
            return;
        }
        throw zzfo.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final double zzb() {
        return Double.longBitsToDouble(zzy());
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final boolean zzb(int i) {
        int zza;
        int i2 = i & 7;
        if (i2 == 0) {
            if (this.zzf - this.zzh < 10) {
                for (int i3 = 0; i3 < 10; i3++) {
                    if (zzaa() >= 0) {
                        return true;
                    }
                }
                throw zzfo.zzc();
            }
            for (int i4 = 0; i4 < 10; i4++) {
                byte[] bArr = this.zzd;
                int i5 = this.zzh;
                this.zzh = i5 + 1;
                if (bArr[i5] >= 0) {
                    return true;
                }
            }
            throw zzfo.zzc();
        } else if (i2 == 1) {
            zzf(8);
            return true;
        } else if (i2 == 2) {
            zzf(zzv());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzfo.zzf();
            }
            zzf(4);
            return true;
        } else {
            do {
                zza = zza();
                if (zza == 0) {
                    break;
                }
            } while (zzb(zza));
            zza(((i >>> 3) << 3) | 4);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final float zzc() {
        return Float.intBitsToFloat(zzx());
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzc(int i) {
        if (i >= 0) {
            int zzu = i + zzu();
            int i2 = this.zzk;
            if (zzu > i2) {
                throw zzfo.zza();
            }
            this.zzk = zzu;
            zzz();
            return i2;
        }
        throw zzfo.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzd() {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final void zzd(int i) {
        this.zzk = i;
        zzz();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zze() {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzf() {
        return zzv();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzg() {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzh() {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final boolean zzi() {
        return zzw() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final String zzj() {
        int zzv = zzv();
        if (zzv > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (zzv <= i - i2) {
                String str = new String(this.zzd, i2, zzv, zzff.zza);
                this.zzh += zzv;
                return str;
            }
        }
        if (zzv == 0) {
            return "";
        }
        if (zzv >= 0) {
            throw zzfo.zza();
        }
        throw zzfo.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final String zzk() {
        int zzv = zzv();
        if (zzv > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (zzv <= i - i2) {
                String zzb = zzie.zzb(this.zzd, i2, zzv);
                this.zzh += zzv;
                return zzb;
            }
        }
        if (zzv == 0) {
            return "";
        }
        if (zzv > 0) {
            throw zzfo.zza();
        }
        throw zzfo.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final zzdu zzl() {
        byte[] bArr;
        int zzv = zzv();
        if (zzv > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (zzv <= i - i2) {
                zzdu zza = zzdu.zza(this.zzd, i2, zzv);
                this.zzh += zzv;
                return zza;
            }
        }
        if (zzv == 0) {
            return zzdu.zza;
        }
        if (zzv > 0) {
            int i3 = this.zzf;
            int i4 = this.zzh;
            if (zzv <= i3 - i4) {
                this.zzh = zzv + i4;
                bArr = Arrays.copyOfRange(this.zzd, i4, this.zzh);
                return zzdu.zza(bArr);
            }
        }
        if (zzv > 0) {
            throw zzfo.zza();
        }
        if (zzv != 0) {
            throw zzfo.zzb();
        }
        bArr = zzff.zzb;
        return zzdu.zza(bArr);
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzm() {
        return zzv();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzn() {
        return zzv();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzo() {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzp() {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzq() {
        return zze(zzv());
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzr() {
        return zza(zzw());
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzs() {
        byte zzaa;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (zzaa & Byte.MAX_VALUE) << i;
            if ((zzaa() & 128) == 0) {
                return c;
            }
        }
        throw zzfo.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final boolean zzt() {
        return this.zzh == this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzu() {
        return this.zzh - this.zzi;
    }
}
