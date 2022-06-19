package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgey.class */
public final class zzgey extends zzgfc {
    private final byte[] zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private final int zzi;
    private int zzj;
    private int zzk = Integer.MAX_VALUE;

    public /* synthetic */ zzgey(byte[] bArr, int i, int i2, boolean z, zzgfa zzgfaVar) {
        super(null);
        this.zze = bArr;
        this.zzf = i2 + i;
        this.zzh = i;
        this.zzi = i;
    }

    private final void zzI() {
        int i = this.zzf + this.zzg;
        this.zzf = i;
        int i2 = i - this.zzi;
        int i3 = this.zzk;
        if (i2 <= i3) {
            this.zzg = 0;
            return;
        }
        int i4 = i2 - i3;
        this.zzg = i4;
        this.zzf = i - i4;
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final void zzA(int i) {
        this.zzk = i;
        zzI();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final boolean zzB() throws IOException {
        return this.zzh == this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzC() {
        return this.zzh - this.zzi;
    }

    public final byte zzD() throws IOException {
        int i = this.zzh;
        if (i != this.zzf) {
            byte[] bArr = this.zze;
            this.zzh = i + 1;
            return bArr[i];
        }
        throw zzggm.zzd();
    }

    public final void zzE(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.zzf;
            int i3 = this.zzh;
            if (i <= i2 - i3) {
                this.zzh = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzggm.zze();
        }
        throw zzggm.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zza() throws IOException {
        if (zzB()) {
            this.zzj = 0;
            return 0;
        }
        int zzu = zzu();
        this.zzj = zzu;
        if ((zzu >>> 3) == 0) {
            throw zzggm.zzg();
        }
        return zzu;
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final void zzb(int i) throws zzggm {
        if (this.zzj == i) {
            return;
        }
        throw zzggm.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final boolean zzc(int i) throws IOException {
        int zza;
        int i2 = i & 7;
        if (i2 == 0) {
            if (this.zzf - this.zzh < 10) {
                for (int i3 = 0; i3 < 10; i3++) {
                    if (zzD() >= 0) {
                        return true;
                    }
                }
                throw zzggm.zzf();
            }
            for (int i4 = 0; i4 < 10; i4++) {
                byte[] bArr = this.zze;
                int i5 = this.zzh;
                this.zzh = i5 + 1;
                if (bArr[i5] >= 0) {
                    return true;
                }
            }
            throw zzggm.zzf();
        } else if (i2 == 1) {
            zzE(8);
            return true;
        } else if (i2 == 2) {
            zzE(zzu());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzggm.zzi();
            }
            zzE(4);
            return true;
        } else {
            do {
                zza = zza();
                if (zza == 0) {
                    break;
                }
            } while (zzc(zza));
            zzb(((i >>> 3) << 3) | 4);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final double zzd() throws IOException {
        return Double.longBitsToDouble(zzy());
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final float zze() throws IOException {
        return Float.intBitsToFloat(zzx());
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final long zzf() throws IOException {
        return zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final long zzg() throws IOException {
        return zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzh() throws IOException {
        return zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final long zzi() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzj() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final boolean zzk() throws IOException {
        return zzv() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final String zzl() throws IOException {
        int zzu = zzu();
        if (zzu > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (zzu <= i - i2) {
                String str = new String(this.zze, i2, zzu, zzggk.zza);
                this.zzh += zzu;
                return str;
            }
        }
        if (zzu == 0) {
            return "";
        }
        if (zzu >= 0) {
            throw zzggm.zzd();
        }
        throw zzggm.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final String zzm() throws IOException {
        int zzu = zzu();
        if (zzu > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (zzu <= i - i2) {
                String zzj = zzgjd.zzj(this.zze, i2, zzu);
                this.zzh += zzu;
                return zzj;
            }
        }
        if (zzu == 0) {
            return "";
        }
        if (zzu > 0) {
            throw zzggm.zzd();
        }
        throw zzggm.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final zzgex zzn() throws IOException {
        int zzu = zzu();
        if (zzu > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (zzu <= i - i2) {
                zzgex zzs = zzgex.zzs(this.zze, i2, zzu);
                this.zzh += zzu;
                return zzs;
            }
        }
        if (zzu != 0) {
            if (zzu > 0) {
                int i3 = this.zzf;
                int i4 = this.zzh;
                if (zzu <= i3 - i4) {
                    int i5 = zzu + i4;
                    this.zzh = i5;
                    return zzgex.zzu(Arrays.copyOfRange(this.zze, i4, i5));
                }
            }
            if (zzu > 0) {
                throw zzggm.zzd();
            }
            throw zzggm.zze();
        }
        return zzgex.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzo() throws IOException {
        return zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzp() throws IOException {
        return zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzq() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final long zzr() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzs() throws IOException {
        return zzgfc.zzG(zzu());
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final long zzt() throws IOException {
        return zzgfc.zzH(zzv());
    }

    public final int zzu() throws IOException {
        int i;
        int i2 = this.zzh;
        int i3 = this.zzf;
        if (i3 != i2) {
            byte[] bArr = this.zze;
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
        return (int) zzw();
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    public final long zzv() throws IOException {
        char c;
        char c2;
        char c3;
        int i;
        int i2 = this.zzh;
        int i3 = this.zzf;
        if (i3 != i2) {
            byte[] bArr = this.zze;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.zzh = i4;
                return b;
            } else if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 >= 0) {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        c = i8 ^ 16256;
                        i5 = i7;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            int i10 = i5 + 1;
                            char c4 = (bArr[i5] << 28) ^ i9;
                            if (c4 >= 0) {
                                c3 = 16256;
                                i5 = i10;
                            } else {
                                int i11 = i10 + 1;
                                char c5 = c4 ^ (bArr[i10] << 35);
                                if (c5 < 0) {
                                    c2 = 16256;
                                    i5 = i11;
                                } else {
                                    i5 = i11 + 1;
                                    c4 = c5 ^ (bArr[i11] << 42);
                                    if (c4 >= 0) {
                                        c3 = 16256;
                                    } else {
                                        int i12 = i5 + 1;
                                        c5 = c4 ^ (bArr[i5] << 49);
                                        if (c5 < 0) {
                                            c2 = 16256;
                                            i5 = i12;
                                        } else {
                                            int i13 = i12 + 1;
                                            ?? r0 = (c5 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                            c = r0;
                                            i5 = i13;
                                            if (r0 < 0) {
                                                i5 = i13 + 1;
                                                if (bArr[i13] >= 0) {
                                                    c = r0;
                                                }
                                            }
                                        }
                                    }
                                }
                                c = c2 ^ c5;
                            }
                            c = c4 ^ c3;
                        }
                    }
                    this.zzh = i5;
                    return c;
                }
                i = i6 ^ (-128);
                c = i;
                this.zzh = i5;
                return c;
            }
        }
        return zzw();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    public final long zzw() throws IOException {
        byte zzD;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (zzD & Byte.MAX_VALUE) << i;
            if ((zzD() & 128) == 0) {
                return c;
            }
        }
        throw zzggm.zzf();
    }

    public final int zzx() throws IOException {
        int i = this.zzh;
        if (this.zzf - i >= 4) {
            byte[] bArr = this.zze;
            this.zzh = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzggm.zzd();
    }

    public final long zzy() throws IOException {
        int i = this.zzh;
        if (this.zzf - i >= 8) {
            byte[] bArr = this.zze;
            this.zzh = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzggm.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzz(int i) throws zzggm {
        if (i >= 0) {
            int i2 = (this.zzh - this.zzi) + i;
            if (i2 < 0) {
                throw zzggm.zzk();
            }
            int i3 = this.zzk;
            if (i2 > i3) {
                throw zzggm.zzd();
            }
            this.zzk = i2;
            zzI();
            return i3;
        }
        throw zzggm.zze();
    }
}
