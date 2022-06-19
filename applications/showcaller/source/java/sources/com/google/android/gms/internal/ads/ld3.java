package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ld3.class */
final class ld3 extends md3 {

    /* renamed from: f */
    private final InputStream f26057f;

    /* renamed from: i */
    private int f26060i;

    /* renamed from: k */
    private int f26062k;

    /* renamed from: m */
    private int f26064m = Integer.MAX_VALUE;

    /* renamed from: g */
    private final byte[] f26058g = new byte[4096];

    /* renamed from: h */
    private int f26059h = 0;

    /* renamed from: j */
    private int f26061j = 0;

    /* renamed from: l */
    private int f26063l = 0;

    public /* synthetic */ ld3(InputStream inputStream, int i, kd3 kd3Var) {
        super(null);
        se3.m11071b(inputStream, "input");
        this.f26057f = inputStream;
    }

    /* renamed from: D */
    private final void m13580D() {
        int i = this.f26059h + this.f26060i;
        this.f26059h = i;
        int i2 = this.f26063l + i;
        int i3 = this.f26064m;
        if (i2 <= i3) {
            this.f26060i = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f26060i = i4;
        this.f26059h = i - i4;
    }

    /* renamed from: E */
    private final void m13579E(int i) {
        if (!m13578F(i)) {
            if (i <= (Integer.MAX_VALUE - this.f26063l) - this.f26061j) {
                throw zzggm.zzd();
            }
            throw zzggm.zzj();
        }
    }

    /* renamed from: F */
    private final boolean m13578F(int i) {
        int i2 = this.f26061j;
        int i3 = this.f26059h;
        if (i2 + i <= i3) {
            StringBuilder sb = new StringBuilder(77);
            sb.append("refillBuffer() called when ");
            sb.append(i);
            sb.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb.toString());
        }
        int i4 = this.f26063l;
        if (i > (Integer.MAX_VALUE - i4) - i2 || i4 + i2 + i > this.f26064m) {
            return false;
        }
        int i5 = i3;
        if (i2 > 0) {
            if (i3 > i2) {
                byte[] bArr = this.f26058g;
                System.arraycopy(bArr, i2, bArr, 0, i3 - i2);
            }
            i4 = this.f26063l + i2;
            this.f26063l = i4;
            i5 = this.f26059h - i2;
            this.f26059h = i5;
            this.f26061j = 0;
        }
        try {
            int read = this.f26057f.read(this.f26058g, i5, Math.min(4096 - i5, (Integer.MAX_VALUE - i4) - i5));
            if (read == 0 || read < -1 || read > 4096) {
                String valueOf = String.valueOf(this.f26057f.getClass());
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 91);
                sb2.append(valueOf);
                sb2.append("#read(byte[]) returned invalid result: ");
                sb2.append(read);
                sb2.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb2.toString());
            } else if (read <= 0) {
                return false;
            } else {
                this.f26059h += read;
                m13580D();
                if (this.f26059h < i) {
                    return m13578F(i);
                }
                return true;
            }
        } catch (zzggm e) {
            e.zzb();
            throw e;
        }
    }

    /* renamed from: G */
    private final byte[] m13577G(int i, boolean z) {
        byte[] m13576H = m13576H(i);
        if (m13576H != null) {
            return m13576H;
        }
        int i2 = this.f26061j;
        int i3 = this.f26059h;
        int i4 = i3 - i2;
        this.f26063l += i3;
        this.f26061j = 0;
        this.f26059h = 0;
        List<byte[]> m13575I = m13575I(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f26058g, i2, bArr, 0, i4);
        Iterator<byte[]> it = m13575I.iterator();
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

    /* renamed from: H */
    private final byte[] m13576H(int i) {
        if (i == 0) {
            return se3.f29464c;
        }
        if (i < 0) {
            throw zzggm.zze();
        }
        int i2 = this.f26063l;
        int i3 = this.f26061j;
        int i4 = i2 + i3 + i;
        if ((-2147483647) + i4 > 0) {
            throw zzggm.zzj();
        }
        int i5 = this.f26064m;
        if (i4 > i5) {
            m13581C((i5 - i2) - i3);
            throw zzggm.zzd();
        }
        int i6 = this.f26059h - i3;
        int i7 = i - i6;
        if (i7 >= 4096) {
            try {
                if (i7 > this.f26057f.available()) {
                    return null;
                }
            } catch (zzggm e) {
                e.zzb();
                throw e;
            }
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.f26058g, this.f26061j, bArr, 0, i6);
        this.f26063l += this.f26059h;
        this.f26061j = 0;
        this.f26059h = 0;
        while (i6 < i) {
            try {
                int read = this.f26057f.read(bArr, i6, i - i6);
                if (read == -1) {
                    throw zzggm.zzd();
                }
                this.f26063l += read;
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
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<byte[]> m13575I(int r7) {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
        L8:
            r0 = r7
            if (r0 <= 0) goto L62
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
            java.io.InputStream r0 = r0.f26057f
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
            int r1 = r1.f26063l
            r2 = r12
            int r1 = r1 + r2
            r0.f26063l = r1
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
        L62:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ld3.m13575I(int):java.util.List");
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: A */
    public final int mo13282A(int i) {
        if (i >= 0) {
            int i2 = i + this.f26063l + this.f26061j;
            int i3 = this.f26064m;
            if (i2 > i3) {
                throw zzggm.zzd();
            }
            this.f26064m = i2;
            m13580D();
            return i3;
        }
        throw zzggm.zze();
    }

    /* renamed from: B */
    public final byte m13582B() {
        if (this.f26061j == this.f26059h) {
            m13579E(1);
        }
        byte[] bArr = this.f26058g;
        int i = this.f26061j;
        this.f26061j = i + 1;
        return bArr[i];
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: C */
    public final void m13581C(int i) {
        int i2 = this.f26059h;
        int i3 = this.f26061j;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.f26061j = i3 + i;
        } else if (i < 0) {
            throw zzggm.zze();
        } else {
            int i5 = this.f26063l;
            int i6 = i5 + i3;
            int i7 = this.f26064m;
            if (i6 + i > i7) {
                m13581C((i7 - i5) - i3);
                throw zzggm.zzd();
            }
            this.f26063l = i6;
            this.f26059h = 0;
            this.f26061j = 0;
            while (i4 < i) {
                try {
                    long j = i - i4;
                    try {
                        long skip = this.f26057f.skip(j);
                        int i8 = (skip > 0L ? 1 : (skip == 0L ? 0 : -1));
                        if (i8 < 0 || skip > j) {
                            String valueOf = String.valueOf(this.f26057f.getClass());
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
                    this.f26063l += i4;
                    m13580D();
                    throw th;
                }
            }
            this.f26063l += i4;
            m13580D();
            if (i4 >= i) {
                return;
            }
            int i9 = this.f26059h;
            int i10 = i9 - this.f26061j;
            this.f26061j = i9;
            m13579E(1);
            while (true) {
                int i11 = i - i10;
                int i12 = this.f26059h;
                if (i11 <= i12) {
                    this.f26061j = i11;
                    return;
                }
                i10 += i12;
                this.f26061j = i12;
                m13579E(1);
            }
        }
    }

    /* renamed from: J */
    public final int m13574J() {
        int i;
        int i2 = this.f26061j;
        int i3 = this.f26059h;
        if (i3 != i2) {
            byte[] bArr = this.f26058g;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f26061j = i4;
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
                this.f26061j = i5;
                return i;
            }
        }
        return (int) m13572L();
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
    /* renamed from: K */
    public final long m13573K() {
        char c;
        char c2;
        char c3;
        int i;
        int i2 = this.f26061j;
        int i3 = this.f26059h;
        if (i3 != i2) {
            byte[] bArr = this.f26058g;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f26061j = i4;
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
                    this.f26061j = i5;
                    return c;
                }
                i = i6 ^ (-128);
                c = i;
                this.f26061j = i5;
                return c;
            }
        }
        return m13572L();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: L */
    final long m13572L() {
        byte m13582B;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (m13582B & Byte.MAX_VALUE) << i;
            if ((m13582B() & 128) == 0) {
                return c;
            }
        }
        throw zzggm.zzf();
    }

    /* renamed from: M */
    public final int m13571M() {
        int i = this.f26061j;
        int i2 = i;
        if (this.f26059h - i < 4) {
            m13579E(4);
            i2 = this.f26061j;
        }
        byte[] bArr = this.f26058g;
        this.f26061j = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    /* renamed from: N */
    public final long m13570N() {
        int i = this.f26061j;
        int i2 = i;
        if (this.f26059h - i < 8) {
            m13579E(8);
            i2 = this.f26061j;
        }
        byte[] bArr = this.f26058g;
        this.f26061j = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: a */
    public final void mo13281a(int i) {
        this.f26064m = i;
        m13580D();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: b */
    public final boolean mo13280b() {
        return this.f26061j == this.f26059h && !m13578F(1);
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: c */
    public final int mo13279c() {
        return this.f26063l + this.f26061j;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: g */
    public final int mo13275g() {
        if (mo13280b()) {
            this.f26062k = 0;
            return 0;
        }
        int m13574J = m13574J();
        this.f26062k = m13574J;
        if ((m13574J >>> 3) == 0) {
            throw zzggm.zzg();
        }
        return m13574J;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: h */
    public final void mo13274h(int i) {
        if (this.f26062k == i) {
            return;
        }
        throw zzggm.zzh();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: i */
    public final boolean mo13273i(int i) {
        int mo13275g;
        int i2 = i & 7;
        if (i2 == 0) {
            if (this.f26059h - this.f26061j < 10) {
                for (int i3 = 0; i3 < 10; i3++) {
                    if (m13582B() >= 0) {
                        return true;
                    }
                }
                throw zzggm.zzf();
            }
            for (int i4 = 0; i4 < 10; i4++) {
                byte[] bArr = this.f26058g;
                int i5 = this.f26061j;
                this.f26061j = i5 + 1;
                if (bArr[i5] >= 0) {
                    return true;
                }
            }
            throw zzggm.zzf();
        } else if (i2 == 1) {
            m13581C(8);
            return true;
        } else if (i2 == 2) {
            m13581C(m13574J());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzggm.zzi();
            }
            m13581C(4);
            return true;
        } else {
            do {
                mo13275g = mo13275g();
                if (mo13275g == 0) {
                    break;
                }
            } while (mo13273i(mo13275g));
            mo13274h(((i >>> 3) << 3) | 4);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: j */
    public final double mo13272j() {
        return Double.longBitsToDouble(m13570N());
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: k */
    public final float mo13271k() {
        return Float.intBitsToFloat(m13571M());
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: l */
    public final long mo13270l() {
        return m13573K();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: m */
    public final long mo13269m() {
        return m13573K();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: n */
    public final int mo13268n() {
        return m13574J();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: o */
    public final long mo13267o() {
        return m13570N();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: p */
    public final int mo13266p() {
        return m13571M();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: q */
    public final boolean mo13265q() {
        return m13573K() != 0;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: r */
    public final String mo13264r() {
        int m13574J = m13574J();
        if (m13574J > 0) {
            int i = this.f26059h;
            int i2 = this.f26061j;
            if (m13574J <= i - i2) {
                String str = new String(this.f26058g, i2, m13574J, se3.f29462a);
                this.f26061j += m13574J;
                return str;
            }
        }
        if (m13574J == 0) {
            return "";
        }
        if (m13574J > this.f26059h) {
            return new String(m13577G(m13574J, false), se3.f29462a);
        }
        m13579E(m13574J);
        String str2 = new String(this.f26058g, this.f26061j, m13574J, se3.f29462a);
        this.f26061j += m13574J;
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: s */
    public final String mo13263s() {
        byte[] bArr;
        int m13574J = m13574J();
        int i = this.f26061j;
        int i2 = this.f26059h;
        if (m13574J <= i2 - i && m13574J > 0) {
            bArr = this.f26058g;
            this.f26061j = i + m13574J;
        } else if (m13574J == 0) {
            return "";
        } else {
            if (m13574J <= i2) {
                m13579E(m13574J);
                bArr = this.f26058g;
                this.f26061j = m13574J;
            } else {
                bArr = m13577G(m13574J, false);
            }
            i = 0;
        }
        return fh3.m15189j(bArr, i, m13574J);
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: t */
    public final zzgex mo13262t() {
        zzgex zzgexVar;
        int m13574J = m13574J();
        int i = this.f26059h;
        int i2 = this.f26061j;
        if (m13574J <= i - i2 && m13574J > 0) {
            zzgex zzs = zzgex.zzs(this.f26058g, i2, m13574J);
            this.f26061j += m13574J;
            return zzs;
        } else if (m13574J == 0) {
            return zzgex.f34110d;
        } else {
            byte[] m13576H = m13576H(m13574J);
            if (m13576H != null) {
                zzgexVar = zzgex.zzt(m13576H);
            } else {
                int i3 = this.f26061j;
                int i4 = this.f26059h;
                int i5 = i4 - i3;
                this.f26063l += i4;
                this.f26061j = 0;
                this.f26059h = 0;
                List<byte[]> m13575I = m13575I(m13574J - i5);
                byte[] bArr = new byte[m13574J];
                System.arraycopy(this.f26058g, i3, bArr, 0, i5);
                for (byte[] bArr2 : m13575I) {
                    int length = bArr2.length;
                    System.arraycopy(bArr2, 0, bArr, i5, length);
                    i5 += length;
                }
                zzgexVar = zzgex.zzu(bArr);
            }
            return zzgexVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: u */
    public final int mo13261u() {
        return m13574J();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: v */
    public final int mo13260v() {
        return m13574J();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: w */
    public final int mo13259w() {
        return m13571M();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: x */
    public final long mo13258x() {
        return m13570N();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: y */
    public final int mo13257y() {
        return md3.m13277e(m13574J());
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: z */
    public final long mo13256z() {
        return md3.m13276f(m13573K());
    }
}
