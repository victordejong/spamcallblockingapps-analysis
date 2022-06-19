package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.source.AbstractC1756al;
import androidx.media2.exoplayer.external.source.AbstractC1840s;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.C1763c;
import androidx.media2.exoplayer.external.source.C1826m;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.AbstractC1940e;
import androidx.media2.exoplayer.external.trackselection.AbstractC1944g;
import androidx.media2.exoplayer.external.trackselection.C1943f;
import androidx.media2.exoplayer.external.trackselection.C1946h;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C2009j;
/* renamed from: androidx.media2.exoplayer.external.z */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/z.class */
final class C2060z {

    /* renamed from: a */
    public final AbstractC1840s f8283a;

    /* renamed from: b */
    public final Object f8284b;

    /* renamed from: c */
    public final AbstractC1756al[] f8285c;

    /* renamed from: d */
    public boolean f8286d;

    /* renamed from: e */
    public boolean f8287e;

    /* renamed from: f */
    public C1365aa f8288f;

    /* renamed from: g */
    C2060z f8289g;

    /* renamed from: h */
    TrackGroupArray f8290h = TrackGroupArray.EMPTY;

    /* renamed from: i */
    C1946h f8291i;

    /* renamed from: j */
    long f8292j;

    /* renamed from: k */
    private final boolean[] f8293k;

    /* renamed from: l */
    private final AbstractC1376ah[] f8294l;

    /* renamed from: m */
    private final AbstractC1944g f8295m;

    /* renamed from: n */
    private final AbstractC1842t f8296n;

    public C2060z(AbstractC1376ah[] abstractC1376ahArr, long j, AbstractC1944g abstractC1944g, AbstractC1963b abstractC1963b, AbstractC1842t abstractC1842t, C1365aa c1365aa, C1946h c1946h) {
        this.f8294l = abstractC1376ahArr;
        this.f8292j = j;
        this.f8295m = abstractC1944g;
        this.f8296n = abstractC1842t;
        this.f8284b = c1365aa.f5102a.f7356a;
        this.f8288f = c1365aa;
        this.f8291i = c1946h;
        this.f8285c = new AbstractC1756al[abstractC1376ahArr.length];
        this.f8293k = new boolean[abstractC1376ahArr.length];
        AbstractC1842t.C1843a c1843a = c1365aa.f5102a;
        long j2 = c1365aa.f5103b;
        long j3 = c1365aa.f5105d;
        AbstractC1840s mo42072a = abstractC1842t.mo42072a(c1843a, abstractC1963b, j2);
        C1763c c1763c = mo42072a;
        if (j3 != -9223372036854775807L) {
            c1763c = mo42072a;
            if (j3 != Long.MIN_VALUE) {
                c1763c = new C1763c(mo42072a, true, 0L, j3);
            }
        }
        this.f8283a = c1763c;
    }

    /* renamed from: a */
    private void m41402a(AbstractC1756al[] abstractC1756alArr) {
        int i = 0;
        while (true) {
            AbstractC1376ah[] abstractC1376ahArr = this.f8294l;
            if (i < abstractC1376ahArr.length) {
                if (abstractC1376ahArr[i].mo42938a() == 6) {
                    abstractC1756alArr[i] = null;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    private void m41399b(AbstractC1756al[] abstractC1756alArr) {
        int i = 0;
        while (true) {
            AbstractC1376ah[] abstractC1376ahArr = this.f8294l;
            if (i < abstractC1376ahArr.length) {
                if (abstractC1376ahArr[i].mo42938a() == 6 && this.f8291i.m41818a(i)) {
                    abstractC1756alArr[i] = new C1826m();
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: f */
    private void m41395f() {
        if (!m41393h()) {
            return;
        }
        for (int i = 0; i < this.f8291i.f7825a; i++) {
            boolean m41818a = this.f8291i.m41818a(i);
            AbstractC1940e abstractC1940e = this.f8291i.f7827c.f7821b[i];
            if (m41818a && abstractC1940e != null) {
                abstractC1940e.mo41828d();
            }
        }
    }

    /* renamed from: g */
    private void m41394g() {
        if (!m41393h()) {
            return;
        }
        for (int i = 0; i < this.f8291i.f7825a; i++) {
            this.f8291i.m41818a(i);
        }
    }

    /* renamed from: h */
    private boolean m41393h() {
        return this.f8289g == null;
    }

    /* renamed from: a */
    public final long m41408a() {
        return this.f8288f.f5103b + this.f8292j;
    }

    /* renamed from: a */
    public final long m41405a(C1946h c1946h, long j) {
        return m41404a(c1946h, j, false, new boolean[this.f8294l.length]);
    }

    /* renamed from: a */
    public final long m41404a(C1946h c1946h, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= c1946h.f7825a) {
                break;
            }
            boolean[] zArr2 = this.f8293k;
            if (z || !c1946h.m41817a(this.f8291i, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        m41402a(this.f8285c);
        m41394g();
        this.f8291i = c1946h;
        m41395f();
        C1943f c1943f = c1946h.f7827c;
        long mo42082a = this.f8283a.mo42082a(c1943f.m41821a(), this.f8293k, this.f8285c, zArr, j);
        m41399b(this.f8285c);
        this.f8287e = false;
        int i2 = 0;
        while (true) {
            AbstractC1756al[] abstractC1756alArr = this.f8285c;
            if (i2 < abstractC1756alArr.length) {
                if (abstractC1756alArr[i2] != null) {
                    C1993a.m41686b(c1946h.m41818a(i2));
                    if (this.f8294l[i2].mo42938a() != 6) {
                        this.f8287e = true;
                    }
                } else {
                    C1993a.m41686b(c1943f.f7821b[i2] == null);
                }
                i2++;
            } else {
                return mo42082a;
            }
        }
    }

    /* renamed from: a */
    public final C1946h m41407a(float f) throws ExoPlaybackException {
        AbstractC1940e[] m41821a;
        C1946h mo41819a = this.f8295m.mo41819a(this.f8294l, this.f8290h);
        for (AbstractC1940e abstractC1940e : mo41819a.f7827c.m41821a()) {
            if (abstractC1940e != null) {
                abstractC1940e.mo41836a(f);
            }
        }
        return mo41819a;
    }

    /* renamed from: a */
    public final void m41406a(long j) {
        C1993a.m41686b(m41393h());
        if (this.f8286d) {
            this.f8283a.mo42086a(j - this.f8292j);
        }
    }

    /* renamed from: a */
    public final void m41403a(C2060z c2060z) {
        if (c2060z == this.f8289g) {
            return;
        }
        m41394g();
        this.f8289g = c2060z;
        m41395f();
    }

    /* renamed from: b */
    public final void m41400b(long j) {
        C1993a.m41686b(m41393h());
        this.f8283a.mo42078c(j - this.f8292j);
    }

    /* renamed from: b */
    public final boolean m41401b() {
        if (this.f8286d) {
            return !this.f8287e || this.f8283a.mo42077d() == Long.MIN_VALUE;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: c */
    public final long m41398c() {
        if (!this.f8286d) {
            return this.f8288f.f5103b;
        }
        char mo42077d = this.f8287e ? this.f8283a.mo42077d() : (char) 0;
        return mo42077d == Long.MIN_VALUE ? this.f8288f.f5106e : mo42077d;
    }

    /* renamed from: d */
    public final long m41397d() {
        if (!this.f8286d) {
            return 0L;
        }
        return this.f8283a.mo42076e();
    }

    /* renamed from: e */
    public final void m41396e() {
        m41394g();
        long j = this.f8288f.f5105d;
        AbstractC1842t abstractC1842t = this.f8296n;
        AbstractC1840s abstractC1840s = this.f8283a;
        try {
            if (j == -9223372036854775807L || j == Long.MIN_VALUE) {
                abstractC1842t.mo42073a(abstractC1840s);
            } else {
                abstractC1842t.mo42073a(((C1763c) abstractC1840s).f6970a);
            }
        } catch (RuntimeException e) {
            C2009j.m41579b("MediaPeriodHolder", "Period release failed.", e);
        }
    }
}
