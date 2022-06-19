package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mu3.class */
public final class mu3 {

    /* renamed from: a */
    public final yr3 f26875a;

    /* renamed from: d */
    public av3 f26878d;

    /* renamed from: e */
    public iu3 f26879e;

    /* renamed from: f */
    public int f26880f;

    /* renamed from: g */
    public int f26881g;

    /* renamed from: h */
    public int f26882h;

    /* renamed from: i */
    public int f26883i;

    /* renamed from: l */
    private boolean f26886l;

    /* renamed from: b */
    public final zu3 f26876b = new zu3();

    /* renamed from: c */
    public final C6694la f26877c = new C6694la();

    /* renamed from: j */
    private final C6694la f26884j = new C6694la(1);

    /* renamed from: k */
    private final C6694la f26885k = new C6694la();

    public mu3(yr3 yr3Var, av3 av3Var, iu3 iu3Var) {
        this.f26875a = yr3Var;
        this.f26878d = av3Var;
        this.f26879e = iu3Var;
        m13076c(av3Var, iu3Var);
    }

    /* renamed from: c */
    public final void m13076c(av3 av3Var, iu3 iu3Var) {
        this.f26878d = av3Var;
        this.f26879e = iu3Var;
        this.f26875a.mo8704d(av3Var.f20142a.f32303f);
        m13075d();
    }

    /* renamed from: d */
    public final void m13075d() {
        zu3 zu3Var = this.f26876b;
        zu3Var.f33412d = 0;
        zu3Var.f33425q = 0L;
        zu3Var.f33426r = false;
        zu3Var.f33420l = false;
        zu3Var.f33424p = false;
        zu3Var.f33422n = null;
        this.f26880f = 0;
        this.f26882h = 0;
        this.f26881g = 0;
        this.f26883i = 0;
        this.f26886l = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* renamed from: e */
    public final long m13074e() {
        return !this.f26886l ? this.f26878d.f20147f[this.f26880f] : this.f26876b.m8169b(this.f26880f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* renamed from: f */
    public final long m13073f() {
        return !this.f26886l ? this.f26878d.f20144c[this.f26880f] : this.f26876b.f33414f[this.f26882h];
    }

    /* renamed from: g */
    public final int m13072g() {
        return !this.f26886l ? this.f26878d.f20145d[this.f26880f] : this.f26876b.f33416h[this.f26880f];
    }

    /* renamed from: h */
    public final int m13071h() {
        int i = !this.f26886l ? this.f26878d.f20148g[this.f26880f] : this.f26876b.f33419k[this.f26880f] ? 1 : 0;
        int i2 = i;
        if (m13068k() != null) {
            i2 = i | 1073741824;
        }
        return i2;
    }

    /* renamed from: i */
    public final boolean m13070i() {
        this.f26880f++;
        if (!this.f26886l) {
            return false;
        }
        int i = this.f26881g + 1;
        this.f26881g = i;
        int[] iArr = this.f26876b.f33415g;
        int i2 = this.f26882h;
        if (i != iArr[i2]) {
            return true;
        }
        this.f26882h = i2 + 1;
        this.f26881g = 0;
        return false;
    }

    /* renamed from: j */
    public final int m13069j(int i, int i2) {
        C6694la c6694la;
        yu3 m13068k = m13068k();
        if (m13068k == null) {
            return 0;
        }
        int i3 = m13068k.f32658d;
        if (i3 != 0) {
            c6694la = this.f26876b.f33423o;
        } else {
            byte[] bArr = (byte[]) C7101wa.m9719I(m13068k.f32659e);
            C6694la c6694la2 = this.f26885k;
            i3 = bArr.length;
            c6694la2.m13641j(bArr, i3);
            c6694la = this.f26885k;
        }
        boolean m8168c = this.f26876b.m8168c(this.f26880f);
        boolean z = m8168c || i2 != 0;
        this.f26884j.m13634q()[0] = (byte) ((true != z ? 0 : 128) | i3);
        this.f26884j.m13635p(0);
        this.f26875a.mo8702f(this.f26884j, 1, 1);
        this.f26875a.mo8702f(c6694la, i3, 1);
        if (!z) {
            return i3 + 1;
        }
        if (!m8168c) {
            this.f26877c.m13642i(8);
            byte[] m13634q = this.f26877c.m13634q();
            m13634q[0] = (byte) 0;
            m13634q[1] = (byte) 1;
            m13634q[2] = (byte) 0;
            m13634q[3] = (byte) i2;
            m13634q[4] = (byte) ((i >> 24) & 255);
            m13634q[5] = (byte) ((i >> 16) & 255);
            m13634q[6] = (byte) ((i >> 8) & 255);
            m13634q[7] = (byte) (i & 255);
            this.f26875a.mo8702f(this.f26877c, 8, 1);
            return i3 + 9;
        }
        C6694la c6694la3 = this.f26876b.f33423o;
        int m13628w = c6694la3.m13628w();
        c6694la3.m13632s(-2);
        int i4 = (m13628w * 6) + 2;
        C6694la c6694la4 = c6694la3;
        if (i2 != 0) {
            this.f26877c.m13642i(i4);
            byte[] m13634q2 = this.f26877c.m13634q();
            c6694la3.m13630u(m13634q2, 0, i4);
            int i5 = (((m13634q2[2] & 255) << 8) | (m13634q2[3] & 255)) + i2;
            m13634q2[2] = (byte) ((i5 >> 8) & 255);
            m13634q2[3] = (byte) (i5 & 255);
            c6694la4 = this.f26877c;
        }
        this.f26875a.mo8702f(c6694la4, i4, 1);
        return i3 + 1 + i4;
    }

    /* renamed from: k */
    public final yu3 m13068k() {
        if (!this.f26886l) {
            return null;
        }
        zu3 zu3Var = this.f26876b;
        iu3 iu3Var = zu3Var.f33409a;
        int i = C7101wa.f31475a;
        int i2 = iu3Var.f24483a;
        yu3 yu3Var = zu3Var.f33422n;
        if (yu3Var == null) {
            yu3Var = this.f26878d.f20142a.m9048a(i2);
        }
        if (yu3Var != null && yu3Var.f32655a) {
            return yu3Var;
        }
        return null;
    }
}
