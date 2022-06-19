package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgfb.class */
public final class zzgfb extends zzgfc {
    private final InputStream zze;
    private int zzh;
    private int zzj;
    private int zzl = Integer.MAX_VALUE;
    private final byte[] zzf = new byte[4096];
    private int zzg = 0;
    private int zzi = 0;
    private int zzk = 0;

    public /* synthetic */ zzgfb(InputStream inputStream, int i, zzgfa zzgfaVar) {
        super(null);
        zzggk.zzb(inputStream, "input");
        this.zze = inputStream;
    }

    private final void zzI() {
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

    private final void zzJ(int i) throws IOException {
        if (!zzK(i)) {
            if (i <= (Integer.MAX_VALUE - this.zzk) - this.zzi) {
                throw zzggm.zzd();
            }
            throw zzggm.zzj();
        }
    }

    private final boolean zzK(int i) throws IOException {
        int i2 = this.zzi;
        int i3 = this.zzg;
        if (i2 + i > i3) {
            int i4 = this.zzk;
            if (i > (Integer.MAX_VALUE - i4) - i2 || i4 + i2 + i > this.zzl) {
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
                int read = this.zze.read(this.zzf, i5, Math.min(4096 - i5, (Integer.MAX_VALUE - i4) - i5));
                if (read == 0 || read < -1 || read > 4096) {
                    String valueOf = String.valueOf(this.zze.getClass());
                    StringBuilder sb = new StringBuilder(valueOf.length() + 91);
                    sb.append(valueOf);
                    sb.append("#read(byte[]) returned invalid result: ");
                    sb.append(read);
                    sb.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb.toString());
                } else if (read <= 0) {
                    return false;
                } else {
                    this.zzg += read;
                    zzI();
                    if (this.zzg < i) {
                        return zzK(i);
                    }
                    return true;
                }
            } catch (zzggm e) {
                e.zzb();
                throw e;
            }
        }
        throw new IllegalStateException(C22128a.m8686M1(77, "refillBuffer() called when ", i, " bytes were already available in buffer"));
    }

    private final byte[] zzL(int i, boolean z) throws IOException {
        byte[] zzM = zzM(i);
        if (zzM != null) {
            return zzM;
        }
        int i2 = this.zzi;
        int i3 = this.zzg;
        int i4 = i3 - i2;
        this.zzk += i3;
        this.zzi = 0;
        this.zzg = 0;
        List<byte[]> zzN = zzN(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.zzf, i2, bArr, 0, i4);
        Iterator<byte[]> it = zzN.iterator();
        int i5 = i4;
        while (true) {
            int i6 = i5;
            if (!it.hasNext()) {
                return bArr;
            }
            byte[] next = it.next();
            int length = next.length;
            System.arraycopy(next, 0, bArr, i6, length);
            i5 = i6 + length;
        }
    }

    private final byte[] zzM(int i) throws IOException {
        if (i == 0) {
            return zzggk.zzc;
        }
        if (i < 0) {
            throw zzggm.zze();
        }
        int i2 = this.zzk;
        int i3 = this.zzi;
        int i4 = i2 + i3 + i;
        if ((-2147483647) + i4 > 0) {
            throw zzggm.zzj();
        }
        int i5 = this.zzl;
        if (i4 > i5) {
            zzE((i5 - i2) - i3);
            throw zzggm.zzd();
        }
        int i6 = this.zzg - i3;
        int i7 = i - i6;
        if (i7 >= 4096) {
            try {
                if (i7 > this.zze.available()) {
                    return null;
                }
            } catch (zzggm e) {
                e.zzb();
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
                    throw zzggm.zzd();
                }
                this.zzk += read;
                i6 += read;
            } catch (zzggm e2) {
                e2.zzb();
                throw e2;
            }
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
        r7 = r7 - r0;
        r0.add(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<byte[]> zzN(int r7) throws java.io.IOException {
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
            com.google.android.gms.internal.ads.zzggm r0 = com.google.android.gms.internal.ads.zzggm.zzd()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgfb.zzN(int):java.util.List");
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final void zzA(int i) {
        this.zzl = i;
        zzI();
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final boolean zzB() throws IOException {
        return this.zzi == this.zzg && !zzK(1);
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzC() {
        return this.zzk + this.zzi;
    }

    public final byte zzD() throws IOException {
        if (this.zzi == this.zzg) {
            zzJ(1);
        }
        byte[] bArr = this.zzf;
        int i = this.zzi;
        this.zzi = i + 1;
        return bArr[i];
    }

    /* JADX WARN: Finally extract failed */
    public final void zzE(int i) throws IOException {
        int i2 = this.zzg;
        int i3 = this.zzi;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.zzi = i3 + i;
        } else if (i < 0) {
            throw zzggm.zze();
        } else {
            int i5 = this.zzk;
            int i6 = i5 + i3;
            int i7 = this.zzl;
            if (i6 + i > i7) {
                zzE((i7 - i5) - i3);
                throw zzggm.zzd();
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
                    } catch (zzggm e) {
                        e.zzb();
                        throw e;
                    }
                } catch (Throwable th) {
                    this.zzk += i4;
                    zzI();
                    throw th;
                }
            }
            this.zzk += i4;
            zzI();
            if (i4 >= i) {
                return;
            }
            int i9 = this.zzg;
            int i10 = i9 - this.zzi;
            this.zzi = i9;
            zzJ(1);
            while (true) {
                int i11 = i - i10;
                int i12 = this.zzg;
                if (i11 <= i12) {
                    this.zzi = i11;
                    return;
                }
                i10 += i12;
                this.zzi = i12;
                zzJ(1);
            }
        }
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
            if (this.zzg - this.zzi < 10) {
                for (int i3 = 0; i3 < 10; i3++) {
                    if (zzD() >= 0) {
                        return true;
                    }
                }
                throw zzggm.zzf();
            }
            for (int i4 = 0; i4 < 10; i4++) {
                byte[] bArr = this.zzf;
                int i5 = this.zzi;
                this.zzi = i5 + 1;
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
            int i = this.zzg;
            int i2 = this.zzi;
            if (zzu <= i - i2) {
                String str = new String(this.zzf, i2, zzu, zzggk.zza);
                this.zzi += zzu;
                return str;
            }
        }
        if (zzu == 0) {
            return "";
        }
        if (zzu > this.zzg) {
            return new String(zzL(zzu, false), zzggk.zza);
        }
        zzJ(zzu);
        String str2 = new String(this.zzf, this.zzi, zzu, zzggk.zza);
        this.zzi += zzu;
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final String zzm() throws IOException {
        byte[] bArr;
        int zzu = zzu();
        int i = this.zzi;
        int i2 = this.zzg;
        if (zzu <= i2 - i && zzu > 0) {
            bArr = this.zzf;
            this.zzi = i + zzu;
        } else if (zzu == 0) {
            return "";
        } else {
            if (zzu <= i2) {
                zzJ(zzu);
                bArr = this.zzf;
                this.zzi = zzu;
            } else {
                bArr = zzL(zzu, false);
            }
            i = 0;
        }
        return zzgjd.zzj(bArr, i, zzu);
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final zzgex zzn() throws IOException {
        zzgex zzgexVar;
        int zzu = zzu();
        int i = this.zzg;
        int i2 = this.zzi;
        if (zzu <= i - i2 && zzu > 0) {
            zzgex zzs = zzgex.zzs(this.zzf, i2, zzu);
            this.zzi += zzu;
            return zzs;
        } else if (zzu == 0) {
            return zzgex.zzb;
        } else {
            byte[] zzM = zzM(zzu);
            if (zzM != null) {
                zzgexVar = zzgex.zzt(zzM);
            } else {
                int i3 = this.zzi;
                int i4 = this.zzg;
                int i5 = i4 - i3;
                this.zzk += i4;
                this.zzi = 0;
                this.zzg = 0;
                List<byte[]> zzN = zzN(zzu - i5);
                byte[] bArr = new byte[zzu];
                System.arraycopy(this.zzf, i3, bArr, 0, i5);
                for (byte[] bArr2 : zzN) {
                    int length = bArr2.length;
                    System.arraycopy(bArr2, 0, bArr, i5, length);
                    i5 += length;
                }
                zzgexVar = zzgex.zzu(bArr);
            }
            return zzgexVar;
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

    public final int zzu() throws IOException {
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
                    this.zzi = i5;
                    return c;
                }
                i = i6 ^ (-128);
                c = i;
                this.zzi = i5;
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
        int i = this.zzi;
        int i2 = i;
        if (this.zzg - i < 4) {
            zzJ(4);
            i2 = this.zzi;
        }
        byte[] bArr = this.zzf;
        this.zzi = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public final long zzy() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (this.zzg - i < 8) {
            zzJ(8);
            i2 = this.zzi;
        }
        byte[] bArr = this.zzf;
        this.zzi = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    @Override // com.google.android.gms.internal.ads.zzgfc
    public final int zzz(int i) throws zzggm {
        if (i >= 0) {
            int i2 = this.zzk + this.zzi + i;
            int i3 = this.zzl;
            if (i2 > i3) {
                throw zzggm.zzd();
            }
            this.zzl = i2;
            zzI();
            return i3;
        }
        throw zzggm.zze();
    }
}
