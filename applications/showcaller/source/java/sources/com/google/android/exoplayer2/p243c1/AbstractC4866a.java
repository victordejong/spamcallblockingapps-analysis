package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.c1.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a.class */
public abstract class AbstractC4866a {

    /* renamed from: a */
    protected final C4867a f14833a;

    /* renamed from: b */
    protected final AbstractC4872f f14834b;

    /* renamed from: c */
    protected C4869c f14835c;

    /* renamed from: d */
    private final int f14836d;

    /* renamed from: com.google.android.exoplayer2.c1.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a$a.class */
    public static class C4867a implements AbstractC4992t {

        /* renamed from: a */
        private final AbstractC4870d f14837a;

        /* renamed from: b */
        private final long f14838b;

        /* renamed from: c */
        private final long f14839c;

        /* renamed from: d */
        private final long f14840d;

        /* renamed from: e */
        private final long f14841e;

        /* renamed from: f */
        private final long f14842f;

        /* renamed from: g */
        private final long f14843g;

        public C4867a(AbstractC4870d abstractC4870d, long j, long j2, long j3, long j4, long j5, long j6) {
            this.f14837a = abstractC4870d;
            this.f14838b = j;
            this.f14839c = j2;
            this.f14840d = j3;
            this.f14841e = j4;
            this.f14842f = j5;
            this.f14843g = j6;
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
        /* renamed from: d */
        public boolean mo20622d() {
            return true;
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
        /* renamed from: i */
        public AbstractC4992t.C4993a mo20621i(long j) {
            return new AbstractC4992t.C4993a(new C4995u(j, C4869c.m21349h(this.f14837a.mo20934a(j), this.f14839c, this.f14840d, this.f14841e, this.f14842f, this.f14843g)));
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
        /* renamed from: j */
        public long mo20620j() {
            return this.f14838b;
        }

        /* renamed from: k */
        public long m21357k(long j) {
            return this.f14837a.mo20934a(j);
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a$b.class */
    public static final class C4868b implements AbstractC4870d {
        @Override // com.google.android.exoplayer2.p243c1.AbstractC4866a.AbstractC4870d
        /* renamed from: a */
        public long mo20934a(long j) {
            return j;
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.a$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a$c.class */
    public static class C4869c {

        /* renamed from: a */
        private final long f14844a;

        /* renamed from: b */
        private final long f14845b;

        /* renamed from: c */
        private final long f14846c;

        /* renamed from: d */
        private long f14847d;

        /* renamed from: e */
        private long f14848e;

        /* renamed from: f */
        private long f14849f;

        /* renamed from: g */
        private long f14850g;

        /* renamed from: h */
        private long f14851h;

        protected C4869c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f14844a = j;
            this.f14845b = j2;
            this.f14847d = j3;
            this.f14848e = j4;
            this.f14849f = j5;
            this.f14850g = j6;
            this.f14846c = j7;
            this.f14851h = m21349h(j2, j3, j4, j5, j6, j7);
        }

        /* renamed from: h */
        protected static long m21349h(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
            return C5515h0.m18817o(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        /* renamed from: i */
        public long m21348i() {
            return this.f14850g;
        }

        /* renamed from: j */
        public long m21347j() {
            return this.f14849f;
        }

        /* renamed from: k */
        public long m21346k() {
            return this.f14851h;
        }

        /* renamed from: l */
        public long m21345l() {
            return this.f14844a;
        }

        /* renamed from: m */
        public long m21344m() {
            return this.f14845b;
        }

        /* renamed from: n */
        private void m21343n() {
            this.f14851h = m21349h(this.f14845b, this.f14847d, this.f14848e, this.f14849f, this.f14850g, this.f14846c);
        }

        /* renamed from: o */
        public void m21342o(long j, long j2) {
            this.f14848e = j;
            this.f14850g = j2;
            m21343n();
        }

        /* renamed from: p */
        public void m21341p(long j, long j2) {
            this.f14847d = j;
            this.f14849f = j2;
            m21343n();
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.a$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a$d.class */
    public interface AbstractC4870d {
        /* renamed from: a */
        long mo20934a(long j);
    }

    /* renamed from: com.google.android.exoplayer2.c1.a$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a$e.class */
    public static final class C4871e {

        /* renamed from: a */
        public static final C4871e f14852a = new C4871e(-3, -9223372036854775807L, -1);

        /* renamed from: b */
        private final int f14853b;

        /* renamed from: c */
        private final long f14854c;

        /* renamed from: d */
        private final long f14855d;

        private C4871e(int i, long j, long j2) {
            this.f14853b = i;
            this.f14854c = j;
            this.f14855d = j2;
        }

        /* renamed from: d */
        public static C4871e m21337d(long j, long j2) {
            return new C4871e(-1, j, j2);
        }

        /* renamed from: e */
        public static C4871e m21336e(long j) {
            return new C4871e(0, -9223372036854775807L, j);
        }

        /* renamed from: f */
        public static C4871e m21335f(long j, long j2) {
            return new C4871e(-2, j, j2);
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.a$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a$f.class */
    public interface AbstractC4872f {
        /* renamed from: a */
        void mo20933a();

        /* renamed from: b */
        C4871e mo20932b(AbstractC4979i abstractC4979i, long j);
    }

    public AbstractC4866a(AbstractC4870d abstractC4870d, AbstractC4872f abstractC4872f, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f14834b = abstractC4872f;
        this.f14836d = i;
        this.f14833a = new C4867a(abstractC4870d, j, j2, j3, j4, j5, j6);
    }

    /* renamed from: a */
    protected C4869c m21371a(long j) {
        return new C4869c(j, this.f14833a.m21357k(j), this.f14833a.f14839c, this.f14833a.f14840d, this.f14833a.f14841e, this.f14833a.f14842f, this.f14833a.f14843g);
    }

    /* renamed from: b */
    public final AbstractC4992t m21370b() {
        return this.f14833a;
    }

    /* renamed from: c */
    public int m21369c(AbstractC4979i abstractC4979i, C4991s c4991s) {
        AbstractC4872f abstractC4872f = (AbstractC4872f) C5508e.m18911e(this.f14834b);
        while (true) {
            C4869c c4869c = (C4869c) C5508e.m18911e(this.f14835c);
            long m21347j = c4869c.m21347j();
            long m21348i = c4869c.m21348i();
            long m21346k = c4869c.m21346k();
            if (m21348i - m21347j <= this.f14836d) {
                m21367e(false, m21347j);
                return m21365g(abstractC4979i, m21347j, c4991s);
            } else if (!m21363i(abstractC4979i, m21346k)) {
                return m21365g(abstractC4979i, m21346k, c4991s);
            } else {
                abstractC4979i.mo21003g();
                C4871e mo20932b = abstractC4872f.mo20932b(abstractC4979i, c4869c.m21344m());
                int i = mo20932b.f14853b;
                if (i == -3) {
                    m21367e(false, m21346k);
                    return m21365g(abstractC4979i, m21346k, c4991s);
                } else if (i == -2) {
                    c4869c.m21341p(mo20932b.f14854c, mo20932b.f14855d);
                } else if (i != -1) {
                    if (i != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    m21367e(true, mo20932b.f14855d);
                    m21363i(abstractC4979i, mo20932b.f14855d);
                    return m21365g(abstractC4979i, mo20932b.f14855d, c4991s);
                } else {
                    c4869c.m21342o(mo20932b.f14854c, mo20932b.f14855d);
                }
            }
        }
    }

    /* renamed from: d */
    public final boolean m21368d() {
        return this.f14835c != null;
    }

    /* renamed from: e */
    protected final void m21367e(boolean z, long j) {
        this.f14835c = null;
        this.f14834b.mo20933a();
        m21366f(z, j);
    }

    /* renamed from: f */
    protected void m21366f(boolean z, long j) {
    }

    /* renamed from: g */
    protected final int m21365g(AbstractC4979i abstractC4979i, long j, C4991s c4991s) {
        if (j == abstractC4979i.mo20999k()) {
            return 0;
        }
        c4991s.f15517a = j;
        return 1;
    }

    /* renamed from: h */
    public final void m21364h(long j) {
        C4869c c4869c = this.f14835c;
        if (c4869c == null || c4869c.m21345l() != j) {
            this.f14835c = m21371a(j);
        }
    }

    /* renamed from: i */
    protected final boolean m21363i(AbstractC4979i abstractC4979i, long j) {
        long mo20999k = j - abstractC4979i.mo20999k();
        if (mo20999k < 0 || mo20999k > 262144) {
            return false;
        }
        abstractC4979i.mo21002h((int) mo20999k);
        return true;
    }
}
