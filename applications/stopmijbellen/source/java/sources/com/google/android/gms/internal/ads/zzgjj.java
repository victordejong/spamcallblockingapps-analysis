package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgjj.class */
final class zzgjj extends zzgjn {
    private final Iterable<ByteBuffer> zze;
    private final Iterator<ByteBuffer> zzf;
    private ByteBuffer zzg;
    private int zzh;
    private int zzi;
    private int zzk;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzj = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    private int zzl = 0;

    public /* synthetic */ zzgjj(Iterable iterable, int i, boolean z, zzgji zzgjiVar) {
        super(null);
        this.zzh = i;
        this.zze = iterable;
        this.zzf = iterable.iterator();
        if (i != 0) {
            zzM();
            return;
        }
        this.zzg = zzgkv.zze;
        this.zzm = 0L;
        this.zzn = 0L;
        this.zzo = 0L;
    }

    private final int zzI() {
        return (int) (((this.zzh - this.zzl) - this.zzm) + this.zzn);
    }

    private final void zzJ() throws zzgkx {
        if (this.zzf.hasNext()) {
            zzM();
            return;
        }
        throw zzgkx.zzj();
    }

    private final void zzK(byte[] bArr, int i, int i2) throws IOException {
        if (i2 > zzI()) {
            if (i2 > 0) {
                throw zzgkx.zzj();
            }
            return;
        }
        int i3 = i2;
        while (i3 > 0) {
            if (this.zzo - this.zzm == 0) {
                zzJ();
            }
            int min = Math.min(i3, (int) (this.zzo - this.zzm));
            long j = min;
            zzgnp.zzo(this.zzm, bArr, i2 - i3, j);
            i3 -= min;
            this.zzm += j;
        }
    }

    private final void zzL() {
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

    private final void zzM() {
        ByteBuffer next = this.zzf.next();
        this.zzg = next;
        this.zzl += (int) (this.zzm - this.zzn);
        long position = next.position();
        this.zzm = position;
        this.zzn = position;
        this.zzo = this.zzg.limit();
        long zze = zzgnp.zze(this.zzg);
        this.zzm += zze;
        this.zzn += zze;
        this.zzo += zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final void zzA(int i) {
        this.zzj = i;
        zzL();
    }

    public final void zzB(int i) throws IOException {
        if (i < 0 || i > ((this.zzh - this.zzl) - this.zzm) + this.zzn) {
            if (i >= 0) {
                throw zzgkx.zzj();
            }
            throw zzgkx.zzf();
        }
        while (i > 0) {
            if (this.zzo - this.zzm == 0) {
                zzJ();
            }
            int min = Math.min(i, (int) (this.zzo - this.zzm));
            i -= min;
            this.zzm += min;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final boolean zzC() throws IOException {
        return (((long) this.zzl) + this.zzm) - this.zzn == ((long) this.zzh);
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
            for (int i3 = 0; i3 < 10; i3++) {
                if (zza() >= 0) {
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
        if (this.zzo - this.zzm == 0) {
            zzJ();
        }
        long j = this.zzm;
        this.zzm = 1 + j;
        return zzgnp.zza(j);
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
        return (int) ((this.zzl + this.zzm) - this.zzn);
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final int zze(int i) throws zzgkx {
        if (i >= 0) {
            int zzd = i + zzd();
            int i2 = this.zzj;
            if (zzd > i2) {
                throw zzgkx.zzj();
            }
            this.zzj = zzd;
            zzL();
            return i2;
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
        int zza;
        byte zza2;
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 >= 4) {
            this.zzm = 4 + j2;
            zza = (zzgnp.zza(j2) & 255) | ((zzgnp.zza(1 + j2) & 255) << 8) | ((zzgnp.zza(2 + j2) & 255) << 16);
            zza2 = zzgnp.zza(j2 + 3);
        } else {
            zza = (zza() & 255) | ((zza() & 255) << 8) | ((zza() & 255) << 16);
            zza2 = zza();
        }
        return zza | ((zza2 & 255) << 24);
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
    public final int zzj() throws IOException {
        int i;
        char c;
        long j = this.zzm;
        if (this.zzo != j) {
            long j2 = j + 1;
            byte zza = zzgnp.zza(j);
            if (zza >= 0) {
                this.zzm++;
                return zza;
            } else if (this.zzo - this.zzm >= 10) {
                ?? r0 = j2 + 1;
                int zza2 = zza ^ (zzgnp.zza(j2) << 7);
                if (zza2 < 0) {
                    i = zza2 ^ (-128);
                    c = r0;
                } else {
                    c = r0 + 1;
                    int zza3 = zza2 ^ (zzgnp.zza(r0) << 14);
                    if (zza3 >= 0) {
                        i = zza3 ^ 16256;
                    } else {
                        ?? r02 = c + 1;
                        int zza4 = zza3 ^ (zzgnp.zza(c) << 21);
                        if (zza4 < 0) {
                            i = zza4 ^ (-2080896);
                            c = r02;
                        } else {
                            ?? r03 = r02 + 1;
                            byte zza5 = zzgnp.zza(r02);
                            int i2 = (zza4 ^ (zza5 << 28)) ^ 266354560;
                            i = i2;
                            c = r03;
                            if (zza5 < 0) {
                                ?? r04 = r03 + 1;
                                i = i2;
                                c = r04;
                                if (zzgnp.zza(r03) < 0) {
                                    ?? r05 = r04 + 1;
                                    i = i2;
                                    c = r05;
                                    if (zzgnp.zza(r04) < 0) {
                                        ?? r06 = r05 + 1;
                                        i = i2;
                                        c = r06;
                                        if (zzgnp.zza(r05) < 0) {
                                            ?? r07 = r06 + 1;
                                            i = i2;
                                            c = r07;
                                            if (zzgnp.zza(r06) < 0) {
                                                c = r07 + 1;
                                                if (zzgnp.zza(r07) >= 0) {
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
            this.zzk = 0;
            return 0;
        }
        int zzj = zzj();
        this.zzk = zzj;
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

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    public final long zzq() throws IOException {
        char zza;
        byte zza2;
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 >= 8) {
            this.zzm = 8 + j2;
            zza = (zzgnp.zza(j2) & 255) | ((zzgnp.zza(1 + j2) & 255) << 8) | ((zzgnp.zza(2 + j2) & 255) << 16) | ((zzgnp.zza(3 + j2) & 255) << 24) | ((zzgnp.zza(4 + j2) & 255) << 32) | ((zzgnp.zza(5 + j2) & 255) << 40) | ((zzgnp.zza(6 + j2) & 255) << 48);
            zza2 = zzgnp.zza(j2 + 7);
        } else {
            zza = (zza() & 255) | ((zza() & 255) << 8) | ((zza() & 255) << 16) | ((zza() & 255) << 24) | ((zza() & 255) << 32) | ((zza() & 255) << 40) | ((zza() & 255) << 48);
            zza2 = zza();
        }
        return zza | ((zza2 & 255) << 56);
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
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    public final long zzr() throws IOException {
        char c;
        char c2;
        char zza;
        char c3;
        char c4;
        int i;
        long j = this.zzm;
        if (this.zzo != j) {
            long j2 = j + 1;
            byte zza2 = zzgnp.zza(j);
            if (zza2 >= 0) {
                this.zzm++;
                return zza2;
            } else if (this.zzo - this.zzm >= 10) {
                ?? r0 = j2 + 1;
                int zza3 = zza2 ^ (zzgnp.zza(j2) << 7);
                if (zza3 >= 0) {
                    c = r0 + 1;
                    int zza4 = zza3 ^ (zzgnp.zza(r0) << 14);
                    if (zza4 >= 0) {
                        c2 = zza4 ^ 16256;
                    } else {
                        ?? r02 = c + 1;
                        int zza5 = zza4 ^ (zzgnp.zza(c) << 21);
                        if (zza5 < 0) {
                            i = zza5 ^ (-2080896);
                            c = r02;
                        } else {
                            c = r02 + 1;
                            char zza6 = zza5 ^ (zzgnp.zza(r02) << 28);
                            if (zza6 >= 0) {
                                c4 = 16256;
                            } else {
                                char c5 = c + 1;
                                ?? zza7 = zza6 ^ (zzgnp.zza(c) << 35);
                                if (zza7 < 0) {
                                    c3 = 16256;
                                    zza = zza7;
                                } else {
                                    c = c5 + 1;
                                    zza6 = zza7 ^ (zzgnp.zza(c5) << 42);
                                    if (zza6 >= 0) {
                                        c4 = 16256;
                                    } else {
                                        c5 = c + 1;
                                        zza = zza6 ^ (zzgnp.zza(c) << 49);
                                        if (zza < 0) {
                                            c3 = 16256;
                                        } else {
                                            ?? r03 = c5 + 1;
                                            ?? zza8 = (zza ^ (zzgnp.zza(c5) << 56)) ^ 71499008037633920L;
                                            c2 = zza8;
                                            c = r03;
                                            if (zza8 < 0) {
                                                if (zzgnp.zza(r03) >= 0) {
                                                    c = 1 + r03;
                                                    c2 = zza8;
                                                }
                                            }
                                        }
                                    }
                                }
                                ?? r04 = zza ^ c3;
                                c = c5;
                                c2 = r04;
                            }
                            c2 = zza6 ^ c4;
                        }
                    }
                    this.zzm = c;
                    return c2;
                }
                i = zza3 ^ (-128);
                c = r0;
                c2 = i;
                this.zzm = c;
                return c2;
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
            long j = zzj;
            long j2 = this.zzo;
            long j3 = this.zzm;
            if (j <= j2 - j3) {
                byte[] bArr = new byte[zzj];
                zzgnp.zzo(j3, bArr, 0L, j);
                this.zzm += j;
                return zzgjf.zzz(bArr);
            }
        }
        if (zzj > 0 && zzj <= zzI()) {
            byte[] bArr2 = new byte[zzj];
            zzK(bArr2, 0, zzj);
            return zzgjf.zzz(bArr2);
        } else if (zzj == 0) {
            return zzgjf.zzb;
        } else {
            if (zzj >= 0) {
                throw zzgkx.zzj();
            }
            throw zzgkx.zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final String zzx() throws IOException {
        int zzj = zzj();
        if (zzj > 0) {
            long j = zzj;
            long j2 = this.zzo;
            long j3 = this.zzm;
            if (j <= j2 - j3) {
                byte[] bArr = new byte[zzj];
                zzgnp.zzo(j3, bArr, 0L, j);
                String str = new String(bArr, zzgkv.zzb);
                this.zzm += j;
                return str;
            }
        }
        if (zzj > 0 && zzj <= zzI()) {
            byte[] bArr2 = new byte[zzj];
            zzK(bArr2, 0, zzj);
            return new String(bArr2, zzgkv.zzb);
        } else if (zzj == 0) {
            return "";
        } else {
            if (zzj >= 0) {
                throw zzgkx.zzj();
            }
            throw zzgkx.zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final String zzy() throws IOException {
        int zzj = zzj();
        if (zzj > 0) {
            long j = zzj;
            long j2 = this.zzo;
            long j3 = this.zzm;
            if (j <= j2 - j3) {
                String zzg = zzgnu.zzg(this.zzg, (int) (j3 - this.zzn), zzj);
                this.zzm += j;
                return zzg;
            }
        }
        if (zzj >= 0 && zzj <= zzI()) {
            byte[] bArr = new byte[zzj];
            zzK(bArr, 0, zzj);
            return zzgnu.zzh(bArr, 0, zzj);
        } else if (zzj == 0) {
            return "";
        } else {
            if (zzj > 0) {
                throw zzgkx.zzj();
            }
            throw zzgkx.zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final void zzz(int i) throws zzgkx {
        if (this.zzk == i) {
            return;
        }
        throw zzgkx.zzb();
    }
}
