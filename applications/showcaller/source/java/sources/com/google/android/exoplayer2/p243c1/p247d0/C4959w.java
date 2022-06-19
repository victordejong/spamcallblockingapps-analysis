package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.w */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/w.class */
public final class C4959w implements AbstractC4933h0 {

    /* renamed from: a */
    private final AbstractC4946o f15393a;

    /* renamed from: b */
    private final C5535u f15394b = new C5535u(new byte[10]);

    /* renamed from: c */
    private int f15395c = 0;

    /* renamed from: d */
    private int f15396d;

    /* renamed from: e */
    private C5509e0 f15397e;

    /* renamed from: f */
    private boolean f15398f;

    /* renamed from: g */
    private boolean f15399g;

    /* renamed from: h */
    private boolean f15400h;

    /* renamed from: i */
    private int f15401i;

    /* renamed from: j */
    private int f15402j;

    /* renamed from: k */
    private boolean f15403k;

    /* renamed from: l */
    private long f15404l;

    public C4959w(AbstractC4946o abstractC4946o) {
        this.f15393a = abstractC4946o;
    }

    /* renamed from: d */
    private boolean m21058d(C5536v c5536v, byte[] bArr, int i) {
        int min = Math.min(c5536v.m18678a(), i - this.f15396d);
        boolean z = true;
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            c5536v.m18679N(min);
        } else {
            c5536v.m18671h(bArr, this.f15396d, min);
        }
        int i2 = this.f15396d + min;
        this.f15396d = i2;
        if (i2 != i) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    private boolean m21057e() {
        this.f15394b.m18696o(0);
        int m18703h = this.f15394b.m18703h(24);
        if (m18703h != 1) {
            C5526o.m18742f("PesReader", "Unexpected start code prefix: " + m18703h);
            this.f15402j = -1;
            return false;
        }
        this.f15394b.m18694q(8);
        int m18703h2 = this.f15394b.m18703h(16);
        this.f15394b.m18694q(5);
        this.f15403k = this.f15394b.m18704g();
        this.f15394b.m18694q(2);
        this.f15398f = this.f15394b.m18704g();
        this.f15399g = this.f15394b.m18704g();
        this.f15394b.m18694q(6);
        int m18703h3 = this.f15394b.m18703h(8);
        this.f15401i = m18703h3;
        if (m18703h2 == 0) {
            this.f15402j = -1;
            return true;
        }
        this.f15402j = ((m18703h2 + 6) - 9) - m18703h3;
        return true;
    }

    /* renamed from: f */
    private void m21056f() {
        this.f15394b.m18696o(0);
        this.f15404l = -9223372036854775807L;
        if (this.f15398f) {
            this.f15394b.m18694q(4);
            long m18703h = this.f15394b.m18703h(3);
            this.f15394b.m18694q(1);
            long m18703h2 = this.f15394b.m18703h(15) << 15;
            this.f15394b.m18694q(1);
            long m18703h3 = this.f15394b.m18703h(15);
            this.f15394b.m18694q(1);
            if (!this.f15400h && this.f15399g) {
                this.f15394b.m18694q(4);
                long m18703h4 = this.f15394b.m18703h(3);
                this.f15394b.m18694q(1);
                long m18703h5 = this.f15394b.m18703h(15) << 15;
                this.f15394b.m18694q(1);
                long m18703h6 = this.f15394b.m18703h(15);
                this.f15394b.m18694q(1);
                this.f15397e.m18905b((m18703h4 << 30) | m18703h5 | m18703h6);
                this.f15400h = true;
            }
            this.f15404l = this.f15397e.m18905b((m18703h << 30) | m18703h2 | m18703h3);
        }
    }

    /* renamed from: g */
    private void m21055g(int i) {
        this.f15395c = i;
        this.f15396d = 0;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0
    /* renamed from: a */
    public void mo21061a(C5509e0 c5509e0, AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        this.f15397e = c5509e0;
        this.f15393a.mo21070e(abstractC4980j, c4937d);
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0
    /* renamed from: b */
    public final void mo21060b(C5536v c5536v, int i) {
        int i2 = i;
        if ((i & 1) != 0) {
            int i3 = this.f15395c;
            if (i3 != 0 && i3 != 1) {
                if (i3 == 2) {
                    C5526o.m18742f("PesReader", "Unexpected start indicator reading extended header");
                } else if (i3 != 3) {
                    throw new IllegalStateException();
                } else {
                    if (this.f15402j != -1) {
                        C5526o.m18742f("PesReader", "Unexpected start indicator: expected " + this.f15402j + " more bytes");
                    }
                    this.f15393a.mo21071d();
                }
            }
            m21055g(1);
            i2 = i;
        }
        while (c5536v.m18678a() > 0) {
            int i4 = this.f15395c;
            if (i4 != 0) {
                int i5 = 0;
                int i6 = 0;
                if (i4 != 1) {
                    if (i4 == 2) {
                        if (m21058d(c5536v, this.f15394b.f17937a, Math.min(10, this.f15401i)) && m21058d(c5536v, null, this.f15401i)) {
                            m21056f();
                            if (this.f15403k) {
                                i5 = 4;
                            }
                            i2 |= i5;
                            this.f15393a.mo21069f(this.f15404l, i2);
                            m21055g(3);
                        }
                    } else if (i4 != 3) {
                        throw new IllegalStateException();
                    } else {
                        int m18678a = c5536v.m18678a();
                        int i7 = this.f15402j;
                        if (i7 != -1) {
                            i6 = m18678a - i7;
                        }
                        int i8 = m18678a;
                        if (i6 > 0) {
                            i8 = m18678a - i6;
                            c5536v.m18681L(c5536v.m18676c() + i8);
                        }
                        this.f15393a.mo21073b(c5536v);
                        int i9 = this.f15402j;
                        if (i9 != -1) {
                            int i10 = i9 - i8;
                            this.f15402j = i10;
                            if (i10 == 0) {
                                this.f15393a.mo21071d();
                                m21055g(1);
                            }
                        }
                    }
                } else if (m21058d(c5536v, this.f15394b.f17937a, 9)) {
                    int i11 = 0;
                    if (m21057e()) {
                        i11 = 2;
                    }
                    m21055g(i11);
                }
            } else {
                c5536v.m18679N(c5536v.m18678a());
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0
    /* renamed from: c */
    public final void mo21059c() {
        this.f15395c = 0;
        this.f15396d = 0;
        this.f15400h = false;
        this.f15393a.mo21072c();
    }
}
