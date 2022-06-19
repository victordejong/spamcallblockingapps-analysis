package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgez.class */
public final class zzgez extends zzgfc {
    private final Iterable<ByteBuffer> zze;
    private final Iterator<ByteBuffer> zzf;
    private ByteBuffer zzg;
    private int zzh;
    private int zzi;
    private int zzk;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzj = Integer.MAX_VALUE;
    private int zzl = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzgez(Iterable iterable, Iterable<ByteBuffer> iterable2, int i, boolean z) {
        super(null);
        this.zzh = iterable2;
        this.zze = iterable;
        this.zzf = iterable.iterator();
        if (iterable2 != 0) {
            zzJ();
            return;
        }
        this.zzg = zzggk.zzd;
        this.zzm = 0L;
        this.zzn = 0L;
        this.zzo = 0L;
    }

    private final void zzI() throws zzggm {
        if (this.zzf.hasNext()) {
            zzJ();
            return;
        }
        throw zzggm.zzd();
    }

    private final void zzJ() {
        ByteBuffer next = this.zzf.next();
        this.zzg = next;
        this.zzl += (int) (this.zzm - this.zzn);
        long position = next.position();
        this.zzm = position;
        this.zzn = position;
        this.zzo = this.zzg.limit();
        long zzs = zzgiy.zzs(this.zzg);
        this.zzm += zzs;
        this.zzn += zzs;
        this.zzo += zzs;
    }

    private final void zzK() {
        int i = this.zzh + this.zzi;
        this.zzh = i;
        int i2 = this.zzj;
        if (i <= i2) {
            this.zzi = 0;
            return;
        }
        int i3 = i - i2;
        this.zzi = i3;
        this.zzh = i - i3;
    }

    private final void zzL(byte[] bArr, int i, int i2) throws IOException {
        if (i2 > zzM()) {
            if (i2 > 0) {
                throw zzggm.zzd();
            }
            return;
        }
        int i3 = i2;
        while (i3 > 0) {
            if (this.zzo - this.zzm == 0) {
                zzI();
            }
            int min = Math.min(i3, (int) (this.zzo - this.zzm));
            long j = min;
            zzgiy.zzq(this.zzm, bArr, i2 - i3, j);
            i3 -= min;
            this.zzm += j;
        }
    }

    private final int zzM() {
        return (int) (((this.zzh - this.zzl) - this.zzm) + this.zzn);
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final void zzA(int i) {
        this.zzj = i;
        zzK();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final boolean zzB() throws IOException {
        return (((long) this.zzl) + this.zzm) - this.zzn == ((long) this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzC() {
        return (int) ((this.zzl + this.zzm) - this.zzn);
    }

    public final byte zzD() throws IOException {
        if (this.zzo - this.zzm == 0) {
            zzI();
        }
        long j = this.zzm;
        this.zzm = 1 + j;
        return zzgiy.zzr(j);
    }

    public final void zzE(int i) throws IOException {
        if (i < 0 || i > ((this.zzh - this.zzl) - this.zzm) + this.zzn) {
            if (i >= 0) {
                throw zzggm.zzd();
            }
            throw zzggm.zze();
        }
        while (i > 0) {
            if (this.zzo - this.zzm == 0) {
                zzI();
            }
            int min = Math.min(i, (int) (this.zzo - this.zzm));
            i -= min;
            this.zzm += min;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zza() throws IOException {
        if (zzB()) {
            this.zzk = 0;
            return 0;
        }
        int zzu = zzu();
        this.zzk = zzu;
        if ((zzu >>> 3) == 0) {
            throw zzggm.zzg();
        }
        return zzu;
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final void zzb(int i) throws zzggm {
        if (this.zzk == i) {
            return;
        }
        throw zzggm.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final boolean zzc(int i) throws IOException {
        int zza;
        int i2 = i & 7;
        if (i2 == 0) {
            for (int i3 = 0; i3 < 10; i3++) {
                if (zzD() >= 0) {
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
            long j = zzu;
            long j2 = this.zzo;
            long j3 = this.zzm;
            if (j <= j2 - j3) {
                byte[] bArr = new byte[zzu];
                zzgiy.zzq(j3, bArr, 0L, j);
                String str = new String(bArr, zzggk.zza);
                this.zzm += j;
                return str;
            }
        }
        if (zzu > 0 && zzu <= zzM()) {
            byte[] bArr2 = new byte[zzu];
            zzL(bArr2, 0, zzu);
            return new String(bArr2, zzggk.zza);
        } else if (zzu == 0) {
            return "";
        } else {
            if (zzu >= 0) {
                throw zzggm.zzd();
            }
            throw zzggm.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final String zzm() throws IOException {
        int zzu = zzu();
        if (zzu > 0) {
            long j = zzu;
            long j2 = this.zzo;
            long j3 = this.zzm;
            if (j <= j2 - j3) {
                String zzi = zzgjd.zzi(this.zzg, (int) (j3 - this.zzn), zzu);
                this.zzm += j;
                return zzi;
            }
        }
        if (zzu >= 0 && zzu <= zzM()) {
            byte[] bArr = new byte[zzu];
            zzL(bArr, 0, zzu);
            return zzgjd.zzj(bArr, 0, zzu);
        } else if (zzu == 0) {
            return "";
        } else {
            if (zzu > 0) {
                throw zzggm.zzd();
            }
            throw zzggm.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final zzgex zzn() throws IOException {
        int zzu = zzu();
        if (zzu > 0) {
            long j = zzu;
            long j2 = this.zzo;
            long j3 = this.zzm;
            if (j <= j2 - j3) {
                byte[] bArr = new byte[zzu];
                zzgiy.zzq(j3, bArr, 0L, j);
                this.zzm += j;
                return zzgex.zzu(bArr);
            }
        }
        if (zzu > 0 && zzu <= zzM()) {
            byte[] bArr2 = new byte[zzu];
            zzL(bArr2, 0, zzu);
            return zzgex.zzu(bArr2);
        } else if (zzu == 0) {
            return zzgex.zzb;
        } else {
            if (zzu >= 0) {
                throw zzggm.zzd();
            }
            throw zzggm.zze();
        }
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

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    public final int zzu() throws IOException {
        int i;
        long j = this.zzm;
        if (this.zzo != j) {
            long j2 = j + 1;
            byte zzr = zzgiy.zzr(j);
            if (zzr >= 0) {
                this.zzm++;
                return zzr;
            } else if (this.zzo - this.zzm >= 10) {
                char c = j2 + 1;
                int zzr2 = zzr ^ (zzgiy.zzr(j2) << 7);
                if (zzr2 < 0) {
                    i = zzr2 ^ (-128);
                } else {
                    ?? r0 = c + 1;
                    int zzr3 = zzr2 ^ (zzgiy.zzr(c) << 14);
                    if (zzr3 >= 0) {
                        i = zzr3 ^ 16256;
                        c = r0;
                    } else {
                        c = r0 + 1;
                        int zzr4 = zzr3 ^ (zzgiy.zzr(r0) << 21);
                        if (zzr4 < 0) {
                            i = zzr4 ^ (-2080896);
                        } else {
                            ?? r02 = c + 1;
                            byte zzr5 = zzgiy.zzr(c);
                            int i2 = (zzr4 ^ (zzr5 << 28)) ^ 266354560;
                            i = i2;
                            c = r02;
                            if (zzr5 < 0) {
                                ?? r03 = r02 + 1;
                                i = i2;
                                c = r03;
                                if (zzgiy.zzr(r02) < 0) {
                                    ?? r04 = r03 + 1;
                                    i = i2;
                                    c = r04;
                                    if (zzgiy.zzr(r03) < 0) {
                                        ?? r05 = r04 + 1;
                                        i = i2;
                                        c = r05;
                                        if (zzgiy.zzr(r04) < 0) {
                                            ?? r06 = r05 + 1;
                                            i = i2;
                                            c = r06;
                                            if (zzgiy.zzr(r05) < 0) {
                                                c = r06 + 1;
                                                if (zzgiy.zzr(r06) >= 0) {
                                                    i = i2;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.zzm = c;
                return i;
            }
        }
        return (int) zzw();
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    public final long zzv() throws IOException {
        char c;
        char c2;
        char c3;
        char zzr;
        char c4;
        char c5;
        int i;
        long j = this.zzm;
        if (this.zzo != j) {
            long j2 = j + 1;
            byte zzr2 = zzgiy.zzr(j);
            if (zzr2 >= 0) {
                this.zzm++;
                return zzr2;
            } else if (this.zzo - this.zzm >= 10) {
                ?? r0 = j2 + 1;
                int zzr3 = zzr2 ^ (zzgiy.zzr(j2) << 7);
                if (zzr3 >= 0) {
                    c = r0 + 1;
                    int zzr4 = zzr3 ^ (zzgiy.zzr(r0) << 14);
                    if (zzr4 >= 0) {
                        c2 = zzr4 ^ 16256;
                    } else {
                        ?? r02 = c + 1;
                        int zzr5 = zzr4 ^ (zzgiy.zzr(c) << 21);
                        if (zzr5 < 0) {
                            i = zzr5 ^ (-2080896);
                            c = r02;
                        } else {
                            c = r02 + 1;
                            char zzr6 = zzr5 ^ (zzgiy.zzr(r02) << 28);
                            if (zzr6 >= 0) {
                                c5 = 16256;
                            } else {
                                ?? r03 = c + 1;
                                ?? zzr7 = zzr6 ^ (zzgiy.zzr(c) << 35);
                                if (zzr7 < 0) {
                                    c4 = 16256;
                                    c3 = r03;
                                    zzr = zzr7;
                                } else {
                                    c = r03 + 1;
                                    ?? zzr8 = zzr7 ^ (zzgiy.zzr(r03) << 42);
                                    if (zzr8 >= 0) {
                                        zzr6 = zzr8;
                                        c5 = 16256;
                                    } else {
                                        c3 = c + 1;
                                        zzr = zzr8 ^ (zzgiy.zzr(c) << 49);
                                        if (zzr < 0) {
                                            c4 = 16256;
                                        } else {
                                            ?? r04 = c3 + 1;
                                            ?? zzr9 = (zzr ^ (zzgiy.zzr(c3) << 56)) ^ 71499008037633920L;
                                            c2 = zzr9;
                                            c = r04;
                                            if (zzr9 < 0) {
                                                if (zzgiy.zzr(r04) >= 0) {
                                                    c = 1 + r04;
                                                    c2 = zzr9;
                                                }
                                            }
                                        }
                                    }
                                }
                                ?? r05 = zzr ^ c4;
                                c = c3;
                                c2 = r05;
                            }
                            c2 = zzr6 ^ c5;
                        }
                    }
                    this.zzm = c;
                    return c2;
                }
                i = zzr3 ^ (-128);
                c = r0;
                c2 = i;
                this.zzm = c;
                return c2;
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
        int zzD;
        byte zzD2;
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 >= 4) {
            this.zzm = 4 + j2;
            zzD = (zzgiy.zzr(j2) & 255) | ((zzgiy.zzr(1 + j2) & 255) << 8) | ((zzgiy.zzr(2 + j2) & 255) << 16);
            zzD2 = zzgiy.zzr(j2 + 3);
        } else {
            zzD = (zzD() & 255) | ((zzD() & 255) << 8) | ((zzD() & 255) << 16);
            zzD2 = zzD();
        }
        return zzD | ((zzD2 & 255) << 24);
    }

    public final long zzy() throws IOException {
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 < 8) {
            return ((zzD() & 255) << 56) | (zzD() & 255) | ((zzD() & 255) << 8) | ((zzD() & 255) << 16) | ((zzD() & 255) << 24) | ((zzD() & 255) << 32) | ((zzD() & 255) << 40) | ((zzD() & 255) << 48);
        }
        this.zzm = 8 + j2;
        return ((zzgiy.zzr(j2 + 7) & 255) << 56) | (zzgiy.zzr(j2) & 255) | ((zzgiy.zzr(1 + j2) & 255) << 8) | ((zzgiy.zzr(2 + j2) & 255) << 16) | ((zzgiy.zzr(3 + j2) & 255) << 24) | ((zzgiy.zzr(4 + j2) & 255) << 32) | ((zzgiy.zzr(5 + j2) & 255) << 40) | ((zzgiy.zzr(6 + j2) & 255) << 48);
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzz(int i) throws zzggm {
        if (i >= 0) {
            int zzC = zzC() + i;
            int i2 = this.zzj;
            if (zzC > i2) {
                throw zzggm.zzd();
            }
            this.zzj = zzC;
            zzK();
            return i2;
        }
        throw zzggm.zze();
    }
}
