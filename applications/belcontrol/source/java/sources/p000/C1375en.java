package p000;

import com.google.android.exoplayer2.C0515C;
/* renamed from: en */
/* loaded from: classes-dex2jar.jar:en.class */
public final class C1375en {

    /* renamed from: c */
    public boolean f6386c;

    /* renamed from: d */
    public boolean f6387d;

    /* renamed from: e */
    public boolean f6388e;

    /* renamed from: a */
    public final ju f6384a = new ju(0);

    /* renamed from: f */
    public long f6389f = C0515C.TIME_UNSET;

    /* renamed from: g */
    public long f6390g = C0515C.TIME_UNSET;

    /* renamed from: h */
    public long f6391h = C0515C.TIME_UNSET;

    /* renamed from: b */
    public final yt f6385b = new yt();

    /* renamed from: a */
    public static boolean m2087a(byte[] bArr) {
        boolean z = false;
        if ((bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1) {
            if ((bArr[8] & 3) == 3) {
                z = true;
            }
            return z;
        }
        return false;
    }

    /* renamed from: l */
    public static long m2076l(yt ytVar) {
        int c = ytVar.c();
        if (ytVar.a() < 9) {
            return C0515C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        ytVar.f(bArr, 0, 9);
        ytVar.J(c);
        return !m2087a(bArr) ? C0515C.TIME_UNSET : m2075m(bArr);
    }

    /* renamed from: m */
    public static long m2075m(byte[] bArr) {
        return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    /* renamed from: b */
    public final int m2086b(AbstractC0251bk abstractC0251bk) {
        this.f6385b.G(nu.f);
        this.f6386c = true;
        abstractC0251bk.resetPeekPosition();
        return 0;
    }

    /* renamed from: c */
    public long m2085c() {
        return this.f6391h;
    }

    /* renamed from: d */
    public ju m2084d() {
        return this.f6384a;
    }

    /* renamed from: e */
    public boolean m2083e() {
        return this.f6386c;
    }

    /* renamed from: f */
    public final int m2082f(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: g */
    public int m2081g(AbstractC0251bk abstractC0251bk, hk hkVar) {
        if (!this.f6388e) {
            return m2078j(abstractC0251bk, hkVar);
        }
        if (this.f6390g == C0515C.TIME_UNSET) {
            return m2086b(abstractC0251bk);
        }
        if (!this.f6387d) {
            return m2080h(abstractC0251bk, hkVar);
        }
        long j = this.f6389f;
        if (j == C0515C.TIME_UNSET) {
            return m2086b(abstractC0251bk);
        }
        this.f6391h = this.f6384a.b(this.f6390g) - this.f6384a.b(j);
        return m2086b(abstractC0251bk);
    }

    /* renamed from: h */
    public final int m2080h(AbstractC0251bk abstractC0251bk, hk hkVar) {
        int min = (int) Math.min(20000L, abstractC0251bk.getLength());
        long j = 0;
        if (abstractC0251bk.getPosition() != j) {
            hkVar.a = j;
            return 1;
        }
        this.f6385b.F(min);
        abstractC0251bk.resetPeekPosition();
        abstractC0251bk.peekFully(this.f6385b.a, 0, min);
        this.f6389f = m2079i(this.f6385b);
        this.f6387d = true;
        return 0;
    }

    /* renamed from: i */
    public final long m2079i(yt ytVar) {
        int d = ytVar.d();
        for (int c = ytVar.c(); c < d - 3; c++) {
            if (m2082f(ytVar.a, c) == 442) {
                ytVar.J(c + 4);
                long m2076l = m2076l(ytVar);
                if (m2076l != C0515C.TIME_UNSET) {
                    return m2076l;
                }
            }
        }
        return C0515C.TIME_UNSET;
    }

    /* renamed from: j */
    public final int m2078j(AbstractC0251bk abstractC0251bk, hk hkVar) {
        long length = abstractC0251bk.getLength();
        int min = (int) Math.min(20000L, length);
        long j = length - min;
        if (abstractC0251bk.getPosition() != j) {
            hkVar.a = j;
            return 1;
        }
        this.f6385b.F(min);
        abstractC0251bk.resetPeekPosition();
        abstractC0251bk.peekFully(this.f6385b.a, 0, min);
        this.f6390g = m2077k(this.f6385b);
        this.f6388e = true;
        return 0;
    }

    /* renamed from: k */
    public final long m2077k(yt ytVar) {
        int c = ytVar.c();
        for (int d = ytVar.d() - 4; d >= c; d--) {
            if (m2082f(ytVar.a, d) == 442) {
                ytVar.J(d + 4);
                long m2076l = m2076l(ytVar);
                if (m2076l != C0515C.TIME_UNSET) {
                    return m2076l;
                }
            }
        }
        return C0515C.TIME_UNSET;
    }
}
