package com.google.android.exoplayer2.p243c1.p247d0;

import android.util.SparseArray;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.z */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/z.class */
public final class C4964z implements AbstractC4978h {

    /* renamed from: a */
    public static final AbstractC4982l f15415a = C4921d.f15109a;

    /* renamed from: b */
    private final C5509e0 f15416b;

    /* renamed from: c */
    private final SparseArray<C4965a> f15417c;

    /* renamed from: d */
    private final C5536v f15418d;

    /* renamed from: e */
    private final C4963y f15419e;

    /* renamed from: f */
    private boolean f15420f;

    /* renamed from: g */
    private boolean f15421g;

    /* renamed from: h */
    private boolean f15422h;

    /* renamed from: i */
    private long f15423i;

    /* renamed from: j */
    private C4960x f15424j;

    /* renamed from: k */
    private AbstractC4980j f15425k;

    /* renamed from: l */
    private boolean f15426l;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.c1.d0.z$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/z$a.class */
    public static final class C4965a {

        /* renamed from: a */
        private final AbstractC4946o f15427a;

        /* renamed from: b */
        private final C5509e0 f15428b;

        /* renamed from: c */
        private final C5535u f15429c = new C5535u(new byte[64]);

        /* renamed from: d */
        private boolean f15430d;

        /* renamed from: e */
        private boolean f15431e;

        /* renamed from: f */
        private boolean f15432f;

        /* renamed from: g */
        private int f15433g;

        /* renamed from: h */
        private long f15434h;

        public C4965a(AbstractC4946o abstractC4946o, C5509e0 c5509e0) {
            this.f15427a = abstractC4946o;
            this.f15428b = c5509e0;
        }

        /* renamed from: b */
        private void m21034b() {
            this.f15429c.m18694q(8);
            this.f15430d = this.f15429c.m18704g();
            this.f15431e = this.f15429c.m18704g();
            this.f15429c.m18694q(6);
            this.f15433g = this.f15429c.m18703h(8);
        }

        /* renamed from: c */
        private void m21033c() {
            this.f15434h = 0L;
            if (this.f15430d) {
                this.f15429c.m18694q(4);
                long m18703h = this.f15429c.m18703h(3);
                this.f15429c.m18694q(1);
                long m18703h2 = this.f15429c.m18703h(15) << 15;
                this.f15429c.m18694q(1);
                long m18703h3 = this.f15429c.m18703h(15);
                this.f15429c.m18694q(1);
                if (!this.f15432f && this.f15431e) {
                    this.f15429c.m18694q(4);
                    long m18703h4 = this.f15429c.m18703h(3);
                    this.f15429c.m18694q(1);
                    long m18703h5 = this.f15429c.m18703h(15) << 15;
                    this.f15429c.m18694q(1);
                    long m18703h6 = this.f15429c.m18703h(15);
                    this.f15429c.m18694q(1);
                    this.f15428b.m18905b((m18703h4 << 30) | m18703h5 | m18703h6);
                    this.f15432f = true;
                }
                this.f15434h = this.f15428b.m18905b((m18703h << 30) | m18703h2 | m18703h3);
            }
        }

        /* renamed from: a */
        public void m21035a(C5536v c5536v) {
            c5536v.m18671h(this.f15429c.f17937a, 0, 3);
            this.f15429c.m18696o(0);
            m21034b();
            c5536v.m18671h(this.f15429c.f17937a, 0, this.f15433g);
            this.f15429c.m18696o(0);
            m21033c();
            this.f15427a.mo21069f(this.f15434h, 4);
            this.f15427a.mo21073b(c5536v);
            this.f15427a.mo21071d();
        }

        /* renamed from: d */
        public void m21032d() {
            this.f15432f = false;
            this.f15427a.mo21072c();
        }
    }

    public C4964z() {
        this(new C5509e0(0L));
    }

    public C4964z(C5509e0 c5509e0) {
        this.f15416b = c5509e0;
        this.f15418d = new C5536v(4096);
        this.f15417c = new SparseArray<>();
        this.f15419e = new C4963y();
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC4978h[] m21037a() {
        return new AbstractC4978h[]{new C4964z()};
    }

    /* renamed from: d */
    private void m21036d(long j) {
        if (!this.f15426l) {
            this.f15426l = true;
            if (this.f15419e.m21048c() == -9223372036854775807L) {
                this.f15425k.mo19764c(new AbstractC4992t.C4994b(this.f15419e.m21048c()));
                return;
            }
            C4960x c4960x = new C4960x(this.f15419e.m21047d(), this.f15419e.m21048c(), j);
            this.f15424j = c4960x;
            this.f15425k.mo19764c(c4960x.m21370b());
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public boolean mo19972c(AbstractC4979i abstractC4979i) {
        byte[] bArr = new byte[14];
        boolean z = false;
        abstractC4979i.mo21000j(bArr, 0, 14);
        if (442 == (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            abstractC4979i.mo21006d(bArr[13] & 7);
            abstractC4979i.mo21000j(bArr, 0, 3);
            if (1 == (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[2] & 255))) {
                z = true;
            }
            return z;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        long length = abstractC4979i.getLength();
        int i = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        if (!(i != 0) || this.f15419e.m21046e()) {
            m21036d(length);
            C4960x c4960x = this.f15424j;
            if (c4960x != null && c4960x.m21368d()) {
                return this.f15424j.m21369c(abstractC4979i, c4991s);
            }
            abstractC4979i.mo21003g();
            char mo21007c = i != 0 ? length - abstractC4979i.mo21007c() : (char) 65535;
            if ((mo21007c != -1 && mo21007c < 4) || !abstractC4979i.mo21008b(this.f15418d.f17941a, 0, 4, true)) {
                return -1;
            }
            this.f15418d.m18680M(0);
            int m18668k = this.f15418d.m18668k();
            if (m18668k == 441) {
                return -1;
            }
            if (m18668k == 442) {
                abstractC4979i.mo21000j(this.f15418d.f17941a, 0, 10);
                this.f15418d.m18680M(9);
                abstractC4979i.mo21002h((this.f15418d.m18653z() & 7) + 14);
                return 0;
            } else if (m18668k == 443) {
                abstractC4979i.mo21000j(this.f15418d.f17941a, 0, 2);
                this.f15418d.m18680M(0);
                abstractC4979i.mo21002h(this.f15418d.m18687F() + 6);
                return 0;
            } else if (((m18668k & (-256)) >> 8) != 1) {
                abstractC4979i.mo21002h(1);
                return 0;
            } else {
                int i2 = m18668k & 255;
                C4965a c4965a = this.f15417c.get(i2);
                C4965a c4965a2 = c4965a;
                if (!this.f15420f) {
                    C4965a c4965a3 = c4965a;
                    if (c4965a == null) {
                        C4928g c4928g = null;
                        if (i2 == 189) {
                            c4928g = new C4928g();
                            this.f15421g = true;
                            this.f15423i = abstractC4979i.mo20999k();
                        } else if ((i2 & 224) == 192) {
                            c4928g = new C4957u();
                            this.f15421g = true;
                            this.f15423i = abstractC4979i.mo20999k();
                        } else if ((i2 & 240) == 224) {
                            c4928g = new C4947p();
                            this.f15422h = true;
                            this.f15423i = abstractC4979i.mo20999k();
                        }
                        c4965a3 = c4965a;
                        if (c4928g != null) {
                            c4928g.mo21070e(this.f15425k, new AbstractC4933h0.C4937d(i2, 256));
                            c4965a3 = new C4965a(c4928g, this.f15416b);
                            this.f15417c.put(i2, c4965a3);
                        }
                    }
                    c4965a2 = c4965a3;
                    if (abstractC4979i.mo20999k() > ((!this.f15421g || !this.f15422h) ? (char) 0 : this.f15423i + 8192)) {
                        this.f15420f = true;
                        this.f15425k.mo19752o();
                        c4965a2 = c4965a3;
                    }
                }
                abstractC4979i.mo21000j(this.f15418d.f17941a, 0, 2);
                this.f15418d.m18680M(0);
                int m18687F = this.f15418d.m18687F() + 6;
                if (c4965a2 == null) {
                    abstractC4979i.mo21002h(m18687F);
                    return 0;
                }
                this.f15418d.m18684I(m18687F);
                abstractC4979i.readFully(this.f15418d.f17941a, 0, m18687F);
                this.f15418d.m18680M(6);
                c4965a2.m21035a(this.f15418d);
                C5536v c5536v = this.f15418d;
                c5536v.m18681L(c5536v.m18677b());
                return 0;
            }
        }
        return this.f15419e.m21044g(abstractC4979i, c4991s);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15425k = abstractC4980j;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        if ((this.f15416b.m18902e() == -9223372036854775807L) || (this.f15416b.m18904c() != 0 && this.f15416b.m18904c() != j2)) {
            this.f15416b.m18900g();
            this.f15416b.m18899h(j2);
        }
        C4960x c4960x = this.f15424j;
        int i = 0;
        if (c4960x != null) {
            c4960x.m21364h(j2);
            i = 0;
        }
        while (i < this.f15417c.size()) {
            this.f15417c.valueAt(i).m21032d();
            i++;
        }
    }
}
