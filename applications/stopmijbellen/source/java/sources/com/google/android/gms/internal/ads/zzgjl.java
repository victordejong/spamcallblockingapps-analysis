package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgjl.class */
final class zzgjl extends zzgjn {
    private final InputStream zze;
    private int zzh;
    private int zzj;
    private int zzl = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    private final byte[] zzf = new byte[4096];
    private int zzg = 0;
    private int zzi = 0;
    private int zzk = 0;

    public /* synthetic */ zzgjl(InputStream inputStream, int i, zzgjk zzgjkVar) {
        super(null);
        zzgkv.zzf(inputStream, "input");
        this.zze = inputStream;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
        r7 = r7 - r0;
        r0.add(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<byte[]> zzI(int r7) throws java.io.IOException {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
        L8:
            r0 = r7
            if (r0 <= 0) goto L60
            r0 = r7
            r1 = 4096(0x1000, float:5.74E-42)
            int r0 = java.lang.Math.min(r0, r1)
            r9 = r0
            r0 = r9
            byte[] r0 = new byte[r0]
            r10 = r0
            r0 = 0
            r11 = r0
        L1c:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L52
            r0 = r6
            java.io.InputStream r0 = r0.zze
            r1 = r10
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            int r0 = r0.read(r1, r2, r3)
            r12 = r0
            r0 = r12
            r1 = -1
            if (r0 == r1) goto L4e
            r0 = r6
            r1 = r6
            int r1 = r1.zzk
            r2 = r12
            int r1 = r1 + r2
            r0.zzk = r1
            r0 = r11
            r1 = r12
            int r0 = r0 + r1
            r11 = r0
            goto L1c
        L4e:
            com.google.android.gms.internal.ads.zzgkx r0 = com.google.android.gms.internal.ads.zzgkx.zzj()
            throw r0
        L52:
            r0 = r7
            r1 = r9
            int r0 = r0 - r1
            r7 = r0
            r0 = r8
            r1 = r10
            boolean r0 = r0.add(r1)
            goto L8
        L60:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgjl.zzI(int):java.util.List");
    }

    private final void zzJ() {
        int i = this.zzg + this.zzh;
        this.zzg = i;
        int i2 = this.zzk + i;
        int i3 = this.zzl;
        if (i2 <= i3) {
            this.zzh = 0;
            return;
        }
        int i4 = i2 - i3;
        this.zzh = i4;
        this.zzg = i - i4;
    }

    private final void zzK(int i) throws IOException {
        if (!zzL(i)) {
            if (i <= (Api.BaseClientBuilder.API_PRIORITY_OTHER - this.zzk) - this.zzi) {
                throw zzgkx.zzj();
            }
            throw zzgkx.zzi();
        }
    }

    private final boolean zzL(int i) throws IOException {
        int i2 = this.zzi;
        int i3 = this.zzg;
        if (i2 + i <= i3) {
            StringBuilder sb = new StringBuilder(77);
            sb.append("refillBuffer() called when ");
            sb.append(i);
            sb.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb.toString());
        }
        int i4 = this.zzk;
        if (i > (Api.BaseClientBuilder.API_PRIORITY_OTHER - i4) - i2 || i4 + i2 + i > this.zzl) {
            return false;
        }
        int i5 = i3;
        if (i2 > 0) {
            if (i3 > i2) {
                byte[] bArr = this.zzf;
                System.arraycopy(bArr, i2, bArr, 0, i3 - i2);
            }
            i4 = this.zzk + i2;
            this.zzk = i4;
            i5 = this.zzg - i2;
            this.zzg = i5;
            this.zzi = 0;
        }
        try {
            int read = this.zze.read(this.zzf, i5, Math.min(4096 - i5, (Api.BaseClientBuilder.API_PRIORITY_OTHER - i4) - i5));
            if (read == 0 || read < -1 || read > 4096) {
                String valueOf = String.valueOf(this.zze.getClass());
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 91);
                sb2.append(valueOf);
                sb2.append("#read(byte[]) returned invalid result: ");
                sb2.append(read);
                sb2.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb2.toString());
            } else if (read <= 0) {
                return false;
            } else {
                this.zzg += read;
                zzJ();
                if (this.zzg < i) {
                    return zzL(i);
                }
                return true;
            }
        } catch (zzgkx e) {
            e.zzk();
            throw e;
        }
    }

    private final byte[] zzM(int i, boolean z) throws IOException {
        byte[] zzN = zzN(i);
        if (zzN != null) {
            return zzN;
        }
        int i2 = this.zzi;
        int i3 = this.zzg;
        int i4 = i3 - i2;
        this.zzk += i3;
        this.zzi = 0;
        this.zzg = 0;
        List<byte[]> zzI = zzI(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.zzf, i2, bArr, 0, i4);
        Iterator<byte[]> it2 = zzI.iterator();
        int i5 = i4;
        while (true) {
            int i6 = i5;
            if (!it2.hasNext()) {
                return bArr;
            }
            byte[] next = it2.next();
            int length = next.length;
            System.arraycopy(next, 0, bArr, i6, length);
            i5 = i6 + length;
        }
    }

    private final byte[] zzN(int i) throws IOException {
        if (i == 0) {
            return zzgkv.zzd;
        }
        if (i < 0) {
            throw zzgkx.zzf();
        }
        int i2 = this.zzk;
        int i3 = this.zzi;
        int i4 = i2 + i3 + i;
        if ((-2147483647) + i4 > 0) {
            throw zzgkx.zzi();
        }
        int i5 = this.zzl;
        if (i4 > i5) {
            zzB((i5 - i2) - i3);
            throw zzgkx.zzj();
        }
        int i6 = this.zzg - i3;
        int i7 = i - i6;
        if (i7 >= 4096) {
            try {
                if (i7 > this.zze.available()) {
                    return null;
                }
            } catch (zzgkx e) {
                e.zzk();
                throw e;
            }
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.zzf, this.zzi, bArr, 0, i6);
        this.zzk += this.zzg;
        this.zzi = 0;
        this.zzg = 0;
        while (i6 < i) {
            try {
                int read = this.zze.read(bArr, i6, i - i6);
                if (read == -1) {
                    throw zzgkx.zzj();
                }
                this.zzk += read;
                i6 += read;
            } catch (zzgkx e2) {
                e2.zzk();
                throw e2;
            }
        }
        return bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final void zzA(int i) {
        this.zzl = i;
        zzJ();
    }

    /* JADX WARN: Finally extract failed */
    public final void zzB(int i) throws IOException {
        int i2 = this.zzg;
        int i3 = this.zzi;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.zzi = i3 + i;
        } else if (i < 0) {
            throw zzgkx.zzf();
        } else {
            int i5 = this.zzk;
            int i6 = i5 + i3;
            int i7 = this.zzl;
            if (i6 + i > i7) {
                zzB((i7 - i5) - i3);
                throw zzgkx.zzj();
            }
            this.zzk = i6;
            this.zzg = 0;
            this.zzi = 0;
            while (i4 < i) {
                try {
                    long j = i - i4;
                    try {
                        long skip = this.zze.skip(j);
                        int i8 = (skip > 0L ? 1 : (skip == 0L ? 0 : -1));
                        if (i8 < 0 || skip > j) {
                            String valueOf = String.valueOf(this.zze.getClass());
                            StringBuilder sb = new StringBuilder(valueOf.length() + 92);
                            sb.append(valueOf);
                            sb.append("#skip returned invalid result: ");
                            sb.append(skip);
                            sb.append("\nThe InputStream implementation is buggy.");
                            throw new IllegalStateException(sb.toString());
                        } else if (i8 == 0) {
                            break;
                        } else {
                            i4 += (int) skip;
                        }
                    } catch (zzgkx e) {
                        e.zzk();
                        throw e;
                    }
                } catch (Throwable th) {
                    this.zzk += i4;
                    zzJ();
                    throw th;
                }
            }
            this.zzk += i4;
            zzJ();
            if (i4 >= i) {
                return;
            }
            int i9 = this.zzg;
            int i10 = i9 - this.zzi;
            this.zzi = i9;
            zzK(1);
            while (true) {
                int i11 = i - i10;
                int i12 = this.zzg;
                if (i11 <= i12) {
                    this.zzi = i11;
                    return;
                }
                i10 += i12;
                this.zzi = i12;
                zzK(1);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final boolean zzC() throws IOException {
        return this.zzi == this.zzg && !zzL(1);
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
            if (this.zzg - this.zzi < 10) {
                for (int i3 = 0; i3 < 10; i3++) {
                    if (zza() >= 0) {
                        return true;
                    }
                }
                throw zzgkx.zze();
            }
            for (int i4 = 0; i4 < 10; i4++) {
                byte[] bArr = this.zzf;
                int i5 = this.zzi;
                this.zzi = i5 + 1;
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
        if (this.zzi == this.zzg) {
            zzK(1);
        }
        byte[] bArr = this.zzf;
        int i = this.zzi;
        this.zzi = i + 1;
        return bArr[i];
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
        return this.zzk + this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final int zze(int i) throws zzgkx {
        if (i >= 0) {
            int i2 = this.zzk + this.zzi + i;
            int i3 = this.zzl;
            if (i2 > i3) {
                throw zzgkx.zzj();
            }
            this.zzl = i2;
            zzJ();
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
        int i = this.zzi;
        int i2 = i;
        if (this.zzg - i < 4) {
            zzK(4);
            i2 = this.zzi;
        }
        byte[] bArr = this.zzf;
        this.zzi = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public final int zzj() throws IOException {
        int i;
        int i2 = this.zzi;
        int i3 = this.zzg;
        if (i3 != i2) {
            byte[] bArr = this.zzf;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.zzi = i4;
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
                this.zzi = i5;
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
        int i = this.zzi;
        int i2 = i;
        if (this.zzg - i < 8) {
            zzK(8);
            i2 = this.zzi;
        }
        byte[] bArr = this.zzf;
        this.zzi = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
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
        int i2 = this.zzi;
        int i3 = this.zzg;
        if (i3 != i2) {
            byte[] bArr = this.zzf;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.zzi = i4;
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
                    this.zzi = i5;
                    return c;
                }
                i = i6 ^ (-128);
                c = i;
                this.zzi = i5;
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
        zzgjf zzgjfVar;
        int zzj = zzj();
        int i = this.zzg;
        int i2 = this.zzi;
        if (zzj <= i - i2 && zzj > 0) {
            zzgjf zzw = zzgjf.zzw(this.zzf, i2, zzj);
            this.zzi += zzj;
            return zzw;
        } else if (zzj == 0) {
            return zzgjf.zzb;
        } else {
            byte[] zzN = zzN(zzj);
            if (zzN != null) {
                zzgjfVar = zzgjf.zzv(zzN);
            } else {
                int i3 = this.zzi;
                int i4 = this.zzg;
                int i5 = i4 - i3;
                this.zzk += i4;
                this.zzi = 0;
                this.zzg = 0;
                List<byte[]> zzI = zzI(zzj - i5);
                byte[] bArr = new byte[zzj];
                System.arraycopy(this.zzf, i3, bArr, 0, i5);
                for (byte[] bArr2 : zzI) {
                    int length = bArr2.length;
                    System.arraycopy(bArr2, 0, bArr, i5, length);
                    i5 += length;
                }
                zzgjfVar = zzgjf.zzz(bArr);
            }
            return zzgjfVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final String zzx() throws IOException {
        int zzj = zzj();
        if (zzj > 0) {
            int i = this.zzg;
            int i2 = this.zzi;
            if (zzj <= i - i2) {
                String str = new String(this.zzf, i2, zzj, zzgkv.zzb);
                this.zzi += zzj;
                return str;
            }
        }
        if (zzj == 0) {
            return "";
        }
        if (zzj > this.zzg) {
            return new String(zzM(zzj, false), zzgkv.zzb);
        }
        zzK(zzj);
        String str2 = new String(this.zzf, this.zzi, zzj, zzgkv.zzb);
        this.zzi += zzj;
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final String zzy() throws IOException {
        byte[] bArr;
        int zzj = zzj();
        int i = this.zzi;
        int i2 = this.zzg;
        if (zzj <= i2 - i && zzj > 0) {
            bArr = this.zzf;
            this.zzi = i + zzj;
        } else if (zzj == 0) {
            return "";
        } else {
            if (zzj <= i2) {
                zzK(zzj);
                bArr = this.zzf;
                this.zzi = zzj;
            } else {
                bArr = zzM(zzj, false);
            }
            i = 0;
        }
        return zzgnu.zzh(bArr, i, zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzgjn
    public final void zzz(int i) throws zzgkx {
        if (this.zzj == i) {
            return;
        }
        throw zzgkx.zzb();
    }
}
