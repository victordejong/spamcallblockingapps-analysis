package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgjh.class */
public final class zzgjh extends zzgjn {
    private final byte[] zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private final int zzi;
    private int zzj;
    private int zzk = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    public /* synthetic */ zzgjh(byte[] bArr, int i, int i2, boolean z, zzgjg zzgjgVar) {
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

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final void zzA(int i) {
        this.zzk = i;
        zzI();
    }

    public final void zzB(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.zzf;
            int i3 = this.zzh;
            if (i <= i2 - i3) {
                this.zzh = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzgkx.zzf();
        }
        throw zzgkx.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final boolean zzC() throws IOException {
        return this.zzh == this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final boolean zzD() throws IOException {
        return zzr() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final boolean zzE(int i) throws IOException {
        int zzm;
        int i2 = i & 7;
        if (i2 == 0) {
            if (this.zzf - this.zzh < 10) {
                for (int i3 = 0; i3 < 10; i3++) {
                    if (zza() >= 0) {
                        return true;
                    }
                }
                throw zzgkx.zze();
            }
            for (int i4 = 0; i4 < 10; i4++) {
                byte[] bArr = this.zze;
                int i5 = this.zzh;
                this.zzh = i5 + 1;
                if (bArr[i5] >= 0) {
                    return true;
                }
            }
            throw zzgkx.zze();
        } else if (i2 == 1) {
            zzB(8);
            return true;
        } else if (i2 == 2) {
            zzB(zzj());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzgkx.zza();
            }
            zzB(4);
            return true;
        } else {
            do {
                zzm = zzm();
                if (zzm == 0) {
                    break;
                }
            } while (zzE(zzm));
            zzz(((i >>> 3) << 3) | 4);
            return true;
        }
    }

    public final byte zza() throws IOException {
        int i = this.zzh;
        if (i != this.zzf) {
            byte[] bArr = this.zze;
            this.zzh = i + 1;
            return bArr[i];
        }
        throw zzgkx.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final double zzb() throws IOException {
        return Double.longBitsToDouble(zzq());
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final float zzc() throws IOException {
        return Float.intBitsToFloat(zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final int zzd() {
        return this.zzh - this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final int zze(int i) throws zzgkx {
        if (i >= 0) {
            int i2 = (this.zzh - this.zzi) + i;
            if (i2 < 0) {
                throw zzgkx.zzg();
            }
            int i3 = this.zzk;
            if (i2 > i3) {
                throw zzgkx.zzj();
            }
            this.zzk = i2;
            zzI();
            return i3;
        }
        throw zzgkx.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final int zzf() throws IOException {
        return zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final int zzg() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final int zzh() throws IOException {
        return zzj();
    }

    public final int zzi() throws IOException {
        int i = this.zzh;
        if (this.zzf - i >= 4) {
            byte[] bArr = this.zze;
            this.zzh = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzgkx.zzj();
    }

    public final int zzj() throws IOException {
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
        return (int) zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final int zzk() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final int zzl() throws IOException {
        return zzgjn.zzF(zzj());
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final int zzm() throws IOException {
        if (zzC()) {
            this.zzj = 0;
            return 0;
        }
        int zzj = zzj();
        this.zzj = zzj;
        if ((zzj >>> 3) == 0) {
            throw zzgkx.zzc();
        }
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final int zzn() throws IOException {
        return zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final long zzo() throws IOException {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final long zzp() throws IOException {
        return zzr();
    }

    public final long zzq() throws IOException {
        int i = this.zzh;
        if (this.zzf - i >= 8) {
            byte[] bArr = this.zze;
            this.zzh = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzgkx.zzj();
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    public final long zzr() throws IOException {
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
                                i5 = i10 + 1;
                                char c5 = c4 ^ (bArr[i10] << 35);
                                if (c5 < 0) {
                                    c2 = 16256;
                                } else {
                                    int i11 = i5 + 1;
                                    c4 = c5 ^ (bArr[i5] << 42);
                                    if (c4 >= 0) {
                                        c3 = 16256;
                                        i5 = i11;
                                    } else {
                                        i5 = i11 + 1;
                                        c5 = c4 ^ (bArr[i11] << 49);
                                        if (c5 < 0) {
                                            c2 = 16256;
                                        } else {
                                            int i12 = i5 + 1;
                                            ?? r0 = (c5 ^ (bArr[i5] << 56)) ^ 71499008037633920L;
                                            c = r0;
                                            i5 = i12;
                                            if (r0 < 0) {
                                                i5 = i12 + 1;
                                                if (bArr[i12] >= 0) {
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
        return zzs();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    public final long zzs() throws IOException {
        byte zza;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (zza & Byte.MAX_VALUE) << i;
            if ((zza() & 128) == 0) {
                return c;
            }
        }
        throw zzgkx.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final long zzt() throws IOException {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final long zzu() throws IOException {
        return zzgjn.zzG(zzr());
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final long zzv() throws IOException {
        return zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final zzgjf zzw() throws IOException {
        int zzj = zzj();
        if (zzj > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (zzj <= i - i2) {
                zzgjf zzw = zzgjf.zzw(this.zze, i2, zzj);
                this.zzh += zzj;
                return zzw;
            }
        }
        if (zzj != 0) {
            if (zzj > 0) {
                int i3 = this.zzf;
                int i4 = this.zzh;
                if (zzj <= i3 - i4) {
                    int i5 = zzj + i4;
                    this.zzh = i5;
                    return zzgjf.zzz(Arrays.copyOfRange(this.zze, i4, i5));
                }
            }
            if (zzj > 0) {
                throw zzgkx.zzj();
            }
            throw zzgkx.zzf();
        }
        return zzgjf.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final String zzx() throws IOException {
        int zzj = zzj();
        if (zzj > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (zzj <= i - i2) {
                String str = new String(this.zze, i2, zzj, zzgkv.zzb);
                this.zzh += zzj;
                return str;
            }
        }
        if (zzj == 0) {
            return "";
        }
        if (zzj >= 0) {
            throw zzgkx.zzj();
        }
        throw zzgkx.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final String zzy() throws IOException {
        int zzj = zzj();
        if (zzj > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (zzj <= i - i2) {
                String zzh = zzgnu.zzh(this.zze, i2, zzj);
                this.zzh += zzj;
                return zzh;
            }
        }
        if (zzj == 0) {
            return "";
        }
        if (zzj > 0) {
            throw zzgkx.zzj();
        }
        throw zzgkx.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final void zzz(int i) throws zzgkx {
        if (this.zzj == i) {
            return;
        }
        throw zzgkx.zzb();
    }
}
