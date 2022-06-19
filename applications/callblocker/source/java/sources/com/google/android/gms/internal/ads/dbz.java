package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbz.class */
final class dbz extends dby {

    /* renamed from: e */
    private final InputStream f13956e;

    /* renamed from: f */
    private final byte[] f13957f;

    /* renamed from: g */
    private int f13958g;

    /* renamed from: h */
    private int f13959h;

    /* renamed from: i */
    private int f13960i;

    /* renamed from: j */
    private int f13961j;

    /* renamed from: k */
    private int f13962k;

    /* renamed from: l */
    private int f13963l;

    /* renamed from: m */
    private dcc f13964m;

    /* JADX INFO: Access modifiers changed from: private */
    public dbz(InputStream inputStream, int i) {
        super();
        this.f13963l = Integer.MAX_VALUE;
        this.f13964m = null;
        dcz.m10045a(inputStream, "input");
        this.f13956e = inputStream;
        this.f13957f = new byte[i];
        this.f13958g = 0;
        this.f13960i = 0;
        this.f13962k = 0;
    }

    /* renamed from: A */
    private final byte m10195A() {
        if (this.f13960i == this.f13958g) {
            m10193f(1);
        }
        byte[] bArr = this.f13957f;
        int i = this.f13960i;
        this.f13960i = i + 1;
        return bArr[i];
    }

    /* renamed from: a */
    private final byte[] m10194a(int i, boolean z) {
        byte[] m10191h = m10191h(i);
        if (m10191h == null) {
            int i2 = this.f13960i;
            int i3 = this.f13958g - this.f13960i;
            this.f13962k += this.f13958g;
            this.f13960i = 0;
            this.f13958g = 0;
            List<byte[]> m10190i = m10190i(i - i3);
            m10191h = new byte[i];
            System.arraycopy(this.f13957f, i2, m10191h, 0, i3);
            Iterator<byte[]> it = m10190i.iterator();
            int i4 = i3;
            while (true) {
                int i5 = i4;
                if (!it.hasNext()) {
                    break;
                }
                byte[] next = it.next();
                System.arraycopy(next, 0, m10191h, i5, next.length);
                i4 = next.length + i5;
            }
        }
        return m10191h;
    }

    /* renamed from: f */
    private final void m10193f(int i) {
        if (!m10192g(i)) {
            if (i <= (this.f13953c - this.f13962k) - this.f13960i) {
                throw zzeco.m6551a();
            }
            throw zzeco.m6544g();
        }
    }

    /* renamed from: g */
    private final boolean m10192g(int i) {
        boolean z;
        while (this.f13960i + i > this.f13958g) {
            if (i > (this.f13953c - this.f13962k) - this.f13960i) {
                z = false;
            } else {
                z = false;
                if (this.f13962k + this.f13960i + i <= this.f13963l) {
                    int i2 = this.f13960i;
                    if (i2 > 0) {
                        if (this.f13958g > i2) {
                            System.arraycopy(this.f13957f, i2, this.f13957f, 0, this.f13958g - i2);
                        }
                        this.f13962k += i2;
                        this.f13958g -= i2;
                        this.f13960i = 0;
                    }
                    int read = this.f13956e.read(this.f13957f, this.f13958g, Math.min(this.f13957f.length - this.f13958g, (this.f13953c - this.f13962k) - this.f13958g));
                    if (read == 0 || read < -1 || read > this.f13957f.length) {
                        String valueOf = String.valueOf(this.f13956e.getClass());
                        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 91).append(valueOf).append("#read(byte[]) returned invalid result: ").append(read).append("\nThe InputStream implementation is buggy.").toString());
                    }
                    z = false;
                    if (read > 0) {
                        this.f13958g = read + this.f13958g;
                        m10184z();
                        if (this.f13958g >= i) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }
        throw new IllegalStateException(new StringBuilder(77).append("refillBuffer() called when ").append(i).append(" bytes were already available in buffer").toString());
    }

    /* renamed from: h */
    private final byte[] m10191h(int i) {
        byte[] bArr;
        if (i == 0) {
            bArr = dcz.f14094b;
        } else if (i < 0) {
            throw zzeco.m6549b();
        } else {
            int i2 = this.f13962k + this.f13960i + i;
            if (i2 - this.f13953c > 0) {
                throw zzeco.m6544g();
            }
            if (i2 > this.f13963l) {
                m10189j((this.f13963l - this.f13962k) - this.f13960i);
                throw zzeco.m6551a();
            }
            int i3 = this.f13958g - this.f13960i;
            int i4 = i - i3;
            if (i4 < 4096 || i4 <= this.f13956e.available()) {
                bArr = new byte[i];
                System.arraycopy(this.f13957f, this.f13960i, bArr, 0, i3);
                this.f13962k += this.f13958g;
                this.f13960i = 0;
                this.f13958g = 0;
                while (i3 < bArr.length) {
                    int read = this.f13956e.read(bArr, i3, i - i3);
                    if (read == -1) {
                        throw zzeco.m6551a();
                    }
                    this.f13962k += read;
                    i3 += read;
                }
            } else {
                bArr = null;
            }
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0050, code lost:
        r7 = r7 - r0.length;
        r0.add(r0);
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<byte[]> m10190i(int r7) {
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
            byte[] r0 = new byte[r0]
            r9 = r0
            r0 = 0
            r10 = r0
        L19:
            r0 = r10
            r1 = r9
            int r1 = r1.length
            if (r0 >= r1) goto L50
            r0 = r6
            java.io.InputStream r0 = r0.f13956e
            r1 = r9
            r2 = r10
            r3 = r9
            int r3 = r3.length
            r4 = r10
            int r3 = r3 - r4
            int r0 = r0.read(r1, r2, r3)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L3b
            com.google.android.gms.internal.ads.zzeco r0 = com.google.android.gms.internal.ads.zzeco.m6551a()
            throw r0
        L3b:
            r0 = r6
            r1 = r6
            int r1 = r1.f13962k
            r2 = r11
            int r1 = r1 + r2
            r0.f13962k = r1
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            goto L19
        L50:
            r0 = r7
            r1 = r9
            int r1 = r1.length
            int r0 = r0 - r1
            r7 = r0
            r0 = r8
            r1 = r9
            boolean r0 = r0.add(r1)
            goto L8
        L60:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dbz.m10190i(int):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0110, code lost:
        if (r8 >= r6) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0113, code lost:
        r8 = r5.f13958g - r5.f13960i;
        r5.f13960i = r5.f13958g;
        m10193f(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0131, code lost:
        if ((r6 - r8) <= r5.f13958g) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0134, code lost:
        r8 = r8 + r5.f13958g;
        r5.f13960i = r5.f13958g;
        m10193f(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x014b, code lost:
        r5.f13960i = r6 - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:?, code lost:
        return;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m10189j(int r6) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dbz.m10189j(int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ff, code lost:
        if (r0[r0] < 0) goto L33;
     */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m10188v() {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dbz.m10188v():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x014f, code lost:
        if (r0[r0] < 0) goto L37;
     */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long m10187w() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dbz.m10187w():long");
    }

    /* renamed from: x */
    private final int m10186x() {
        int i = this.f13960i;
        int i2 = i;
        if (this.f13958g - i < 4) {
            m10193f(4);
            i2 = this.f13960i;
        }
        byte[] bArr = this.f13957f;
        this.f13960i = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    /* renamed from: y */
    private final long m10185y() {
        int i = this.f13960i;
        int i2 = i;
        if (this.f13958g - i < 8) {
            m10193f(8);
            i2 = this.f13960i;
        }
        byte[] bArr = this.f13957f;
        this.f13960i = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    /* renamed from: z */
    private final void m10184z() {
        this.f13958g += this.f13959h;
        int i = this.f13962k + this.f13958g;
        if (i <= this.f13963l) {
            this.f13959h = 0;
            return;
        }
        this.f13959h = i - this.f13963l;
        this.f13958g -= this.f13959h;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: a */
    public final int mo10182a() {
        int i = 0;
        if (mo10158t()) {
            this.f13961j = 0;
        } else {
            this.f13961j = m10188v();
            if ((this.f13961j >>> 3) == 0) {
                throw zzeco.m6547d();
            }
            i = this.f13961j;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: a */
    public final void mo10181a(int i) {
        if (this.f13961j != i) {
            throw zzeco.m6546e();
        }
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: b */
    public final double mo10180b() {
        return Double.longBitsToDouble(m10185y());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: b */
    public final boolean mo10179b(int i) {
        boolean z;
        int mo10182a;
        switch (i & 7) {
            case 0:
                if (this.f13958g - this.f13960i < 10) {
                    for (int i2 = 0; i2 < 10; i2++) {
                        z = true;
                        if (m10195A() >= 0) {
                            break;
                        }
                    }
                    throw zzeco.m6548c();
                }
                for (int i3 = 0; i3 < 10; i3++) {
                    byte[] bArr = this.f13957f;
                    int i4 = this.f13960i;
                    this.f13960i = i4 + 1;
                    z = true;
                    if (bArr[i4] >= 0) {
                        break;
                    }
                }
                throw zzeco.m6548c();
            case 1:
                m10189j(8);
                z = true;
                break;
            case 2:
                m10189j(m10188v());
                z = true;
                break;
            case 3:
                do {
                    mo10182a = mo10182a();
                    if (mo10182a != 0) {
                    }
                    mo10181a(((i >>> 3) << 3) | 4);
                    z = true;
                    break;
                } while (mo10179b(mo10182a));
                mo10181a(((i >>> 3) << 3) | 4);
                z = true;
            case 4:
                z = false;
                break;
            case 5:
                m10189j(4);
                z = true;
                break;
            default:
                throw zzeco.m6545f();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: c */
    public final float mo10178c() {
        return Float.intBitsToFloat(m10186x());
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: c */
    public final int mo10177c(int i) {
        if (i < 0) {
            throw zzeco.m6549b();
        }
        int i2 = this.f13962k + this.f13960i + i;
        int i3 = this.f13963l;
        if (i2 > i3) {
            throw zzeco.m6551a();
        }
        this.f13963l = i2;
        m10184z();
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: d */
    public final long mo10176d() {
        return m10187w();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: d */
    public final void mo10175d(int i) {
        this.f13963l = i;
        m10184z();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: e */
    public final long mo10174e() {
        return m10187w();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: f */
    public final int mo10173f() {
        return m10188v();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: g */
    public final long mo10171g() {
        return m10185y();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: h */
    public final int mo10170h() {
        return m10186x();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: i */
    public final boolean mo10169i() {
        return m10187w() != 0;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: j */
    public final String mo10168j() {
        String str;
        int m10188v = m10188v();
        if (m10188v > 0 && m10188v <= this.f13958g - this.f13960i) {
            str = new String(this.f13957f, this.f13960i, m10188v, dcz.f14093a);
            this.f13960i = m10188v + this.f13960i;
        } else if (m10188v == 0) {
            str = "";
        } else if (m10188v <= this.f13958g) {
            m10193f(m10188v);
            str = new String(this.f13957f, this.f13960i, m10188v, dcz.f14093a);
            this.f13960i = m10188v + this.f13960i;
        } else {
            str = new String(m10194a(m10188v, false), dcz.f14093a);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: k */
    public final String mo10167k() {
        byte[] m10194a;
        String str;
        int m10188v = m10188v();
        int i = this.f13960i;
        if (m10188v <= this.f13958g - i && m10188v > 0) {
            m10194a = this.f13957f;
            this.f13960i = i + m10188v;
        } else if (m10188v == 0) {
            str = "";
            return str;
        } else if (m10188v <= this.f13958g) {
            m10193f(m10188v);
            m10194a = this.f13957f;
            this.f13960i = m10188v;
            i = 0;
        } else {
            m10194a = m10194a(m10188v, false);
            i = 0;
        }
        str = dgd.m9637b(m10194a, i, m10188v);
        return str;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: l */
    public final dbi mo10166l() {
        dbi m10214b;
        int m10188v = m10188v();
        if (m10188v <= this.f13958g - this.f13960i && m10188v > 0) {
            m10214b = dbi.m10218a(this.f13957f, this.f13960i, m10188v);
            this.f13960i = m10188v + this.f13960i;
        } else if (m10188v == 0) {
            m10214b = dbi.f13932a;
        } else {
            byte[] m10191h = m10191h(m10188v);
            if (m10191h != null) {
                m10214b = dbi.m10219a(m10191h);
            } else {
                int i = this.f13960i;
                int i2 = this.f13958g - this.f13960i;
                this.f13962k += this.f13958g;
                this.f13960i = 0;
                this.f13958g = 0;
                List<byte[]> m10190i = m10190i(m10188v - i2);
                byte[] bArr = new byte[m10188v];
                System.arraycopy(this.f13957f, i, bArr, 0, i2);
                for (byte[] bArr2 : m10190i) {
                    System.arraycopy(bArr2, 0, bArr, i2, bArr2.length);
                    i2 = bArr2.length + i2;
                }
                m10214b = dbi.m10214b(bArr);
            }
        }
        return m10214b;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: m */
    public final int mo10165m() {
        return m10188v();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: n */
    public final int mo10164n() {
        return m10188v();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: o */
    public final int mo10163o() {
        return m10186x();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: p */
    public final long mo10162p() {
        return m10185y();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: q */
    public final int mo10161q() {
        return m10196e(m10188v());
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: r */
    public final long mo10160r() {
        return m10198a(m10187w());
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: s */
    public final long mo10159s() {
        byte m10195A;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (m10195A & Byte.MAX_VALUE) << i;
            if ((m10195A() & 128) == 0) {
                return c;
            }
        }
        throw zzeco.m6548c();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: t */
    public final boolean mo10158t() {
        boolean z = true;
        if (this.f13960i != this.f13958g || m10192g(1)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: u */
    public final int mo10157u() {
        return this.f13962k + this.f13960i;
    }
}
