package com.google.android.exoplayer2.p243c1.p246c0;

import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.C4995u;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.c1.c0.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/b.class */
public final class C4898b implements AbstractC4906g {

    /* renamed from: a */
    private final C4905f f15027a = new C4905f();

    /* renamed from: b */
    private final long f15028b;

    /* renamed from: c */
    private final long f15029c;

    /* renamed from: d */
    private final AbstractC4908i f15030d;

    /* renamed from: e */
    private int f15031e;

    /* renamed from: f */
    private long f15032f;

    /* renamed from: g */
    private long f15033g;

    /* renamed from: h */
    private long f15034h;

    /* renamed from: i */
    private long f15035i;

    /* renamed from: j */
    private long f15036j;

    /* renamed from: k */
    private long f15037k;

    /* renamed from: l */
    private long f15038l;

    /* renamed from: com.google.android.exoplayer2.c1.c0.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/b$b.class */
    public final class C4900b implements AbstractC4992t {
        private C4900b() {
            C4898b.this = r4;
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
        /* renamed from: d */
        public boolean mo20622d() {
            return true;
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
        /* renamed from: i */
        public AbstractC4992t.C4993a mo20621i(long j) {
            return new AbstractC4992t.C4993a(new C4995u(j, C5515h0.m18817o((C4898b.this.f15028b + ((C4898b.this.f15030d.m21221b(j) * (C4898b.this.f15029c - C4898b.this.f15028b)) / C4898b.this.f15032f)) - 30000, C4898b.this.f15028b, C4898b.this.f15029c - 1)));
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
        /* renamed from: j */
        public long mo20620j() {
            return C4898b.this.f15030d.m21222a(C4898b.this.f15032f);
        }
    }

    public C4898b(AbstractC4908i abstractC4908i, long j, long j2, long j3, long j4, boolean z) {
        C5508e.m18915a(j >= 0 && j2 > j);
        this.f15030d = abstractC4908i;
        this.f15028b = j;
        this.f15029c = j2;
        if (j3 != j2 - j && !z) {
            this.f15031e = 0;
            return;
        }
        this.f15032f = j4;
        this.f15031e = 4;
    }

    /* renamed from: i */
    private long m21246i(AbstractC4979i abstractC4979i) {
        if (this.f15035i == this.f15036j) {
            return -1L;
        }
        long mo20999k = abstractC4979i.mo20999k();
        if (!m21243l(abstractC4979i, this.f15036j)) {
            long j = this.f15035i;
            if (j == mo20999k) {
                throw new IOException("No ogg page can be found.");
            }
            return j;
        }
        this.f15027a.m21227a(abstractC4979i, false);
        abstractC4979i.mo21003g();
        long j2 = this.f15034h;
        C4905f c4905f = this.f15027a;
        long j3 = c4905f.f15056c;
        long j4 = j2 - j3;
        int i = c4905f.f15061h + c4905f.f15062i;
        if (0 <= j4 && j4 < 72000) {
            return -1L;
        }
        int i2 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i2 < 0) {
            this.f15036j = mo20999k;
            this.f15038l = j3;
        } else {
            this.f15035i = abstractC4979i.mo20999k() + i;
            this.f15037k = this.f15027a.f15056c;
        }
        long j5 = this.f15036j;
        long j6 = this.f15035i;
        if (j5 - j6 < 100000) {
            this.f15036j = j6;
            return j6;
        }
        long j7 = i;
        Object[] objArr = i2 <= 0 ? 2 : 1;
        long mo20999k2 = abstractC4979i.mo20999k();
        long j8 = this.f15036j;
        long j9 = this.f15035i;
        return C5515h0.m18817o((mo20999k2 - (j7 * (objArr == 1 ? 1L : 0L))) + ((j4 * (j8 - j9)) / (this.f15038l - this.f15037k)), j9, j8 - 1);
    }

    /* renamed from: l */
    private boolean m21243l(AbstractC4979i abstractC4979i, long j) {
        int i;
        long min = Math.min(j + 3, this.f15029c);
        int i2 = 2048;
        byte[] bArr = new byte[2048];
        while (true) {
            int i3 = 0;
            if (abstractC4979i.mo20999k() + i2 > min) {
                int mo20999k = (int) (min - abstractC4979i.mo20999k());
                i2 = mo20999k;
                if (mo20999k < 4) {
                    return false;
                }
            }
            abstractC4979i.mo21008b(bArr, 0, i2, false);
            while (true) {
                i = i2 - 3;
                if (i3 < i) {
                    if (bArr[i3] == 79 && bArr[i3 + 1] == 103 && bArr[i3 + 2] == 103 && bArr[i3 + 3] == 83) {
                        abstractC4979i.mo21002h(i3);
                        return true;
                    }
                    i3++;
                }
            }
            abstractC4979i.mo21002h(i);
        }
    }

    /* renamed from: m */
    private void m21242m(AbstractC4979i abstractC4979i) {
        this.f15027a.m21227a(abstractC4979i, false);
        while (true) {
            C4905f c4905f = this.f15027a;
            if (c4905f.f15056c > this.f15034h) {
                abstractC4979i.mo21003g();
                return;
            }
            abstractC4979i.mo21002h(c4905f.f15061h + c4905f.f15062i);
            this.f15035i = abstractC4979i.mo20999k();
            C4905f c4905f2 = this.f15027a;
            this.f15037k = c4905f2.f15056c;
            c4905f2.m21227a(abstractC4979i, false);
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4906g
    /* renamed from: b */
    public long mo21214b(AbstractC4979i abstractC4979i) {
        int i = this.f15031e;
        if (i == 0) {
            long mo20999k = abstractC4979i.mo20999k();
            this.f15033g = mo20999k;
            this.f15031e = 1;
            long j = this.f15029c - 65307;
            if (j > mo20999k) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long m21246i = m21246i(abstractC4979i);
                if (m21246i != -1) {
                    return m21246i;
                }
                this.f15031e = 3;
            } else if (i != 3) {
                if (i != 4) {
                    throw new IllegalStateException();
                }
                return -1L;
            }
            m21242m(abstractC4979i);
            this.f15031e = 4;
            return -(this.f15037k + 2);
        }
        this.f15032f = m21245j(abstractC4979i);
        this.f15031e = 4;
        return this.f15033g;
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4906g
    /* renamed from: c */
    public void mo21213c(long j) {
        this.f15034h = C5515h0.m18817o(j, 0L, this.f15032f - 1);
        this.f15031e = 2;
        this.f15035i = this.f15028b;
        this.f15036j = this.f15029c;
        this.f15037k = 0L;
        this.f15038l = this.f15032f;
    }

    /* renamed from: h */
    public C4900b mo21215a() {
        C4900b c4900b = null;
        if (this.f15032f != 0) {
            c4900b = new C4900b();
        }
        return c4900b;
    }

    /* renamed from: j */
    long m21245j(AbstractC4979i abstractC4979i) {
        m21244k(abstractC4979i);
        this.f15027a.m21226b();
        while ((this.f15027a.f15055b & 4) != 4 && abstractC4979i.mo20999k() < this.f15029c) {
            this.f15027a.m21227a(abstractC4979i, false);
            C4905f c4905f = this.f15027a;
            abstractC4979i.mo21002h(c4905f.f15061h + c4905f.f15062i);
        }
        return this.f15027a.f15056c;
    }

    /* renamed from: k */
    void m21244k(AbstractC4979i abstractC4979i) {
        if (m21243l(abstractC4979i, this.f15029c)) {
            return;
        }
        throw new EOFException();
    }
}
