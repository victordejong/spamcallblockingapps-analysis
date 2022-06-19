package com.google.android.exoplayer2.source;

import android.os.Looper;
import com.google.android.exoplayer2.C5090f0;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.upstream.AbstractC5472e;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5529r;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.source.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/a0.class */
public class C5203a0 implements AbstractC4996v {

    /* renamed from: A */
    private boolean f16313A;

    /* renamed from: B */
    private Format f16314B;

    /* renamed from: C */
    private long f16315C;

    /* renamed from: D */
    private boolean f16316D;

    /* renamed from: a */
    private final C5310z f16317a;

    /* renamed from: c */
    private final AbstractC5040k<?> f16319c;

    /* renamed from: d */
    private AbstractC5205b f16320d;

    /* renamed from: e */
    private Format f16321e;

    /* renamed from: f */
    private DrmSession<?> f16322f;

    /* renamed from: o */
    private int f16331o;

    /* renamed from: p */
    private int f16332p;

    /* renamed from: q */
    private int f16333q;

    /* renamed from: r */
    private int f16334r;

    /* renamed from: u */
    private boolean f16337u;

    /* renamed from: x */
    private Format f16340x;

    /* renamed from: y */
    private Format f16341y;

    /* renamed from: z */
    private int f16342z;

    /* renamed from: b */
    private final C5204a f16318b = new C5204a();

    /* renamed from: g */
    private int f16323g = 1000;

    /* renamed from: h */
    private int[] f16324h = new int[1000];

    /* renamed from: i */
    private long[] f16325i = new long[1000];

    /* renamed from: l */
    private long[] f16328l = new long[1000];

    /* renamed from: k */
    private int[] f16327k = new int[1000];

    /* renamed from: j */
    private int[] f16326j = new int[1000];

    /* renamed from: m */
    private AbstractC4996v.C4997a[] f16329m = new AbstractC4996v.C4997a[1000];

    /* renamed from: n */
    private Format[] f16330n = new Format[1000];

    /* renamed from: s */
    private long f16335s = Long.MIN_VALUE;

    /* renamed from: t */
    private long f16336t = Long.MIN_VALUE;

    /* renamed from: w */
    private boolean f16339w = true;

    /* renamed from: v */
    private boolean f16338v = true;

    /* renamed from: com.google.android.exoplayer2.source.a0$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/a0$a.class */
    public static final class C5204a {

        /* renamed from: a */
        public int f16343a;

        /* renamed from: b */
        public long f16344b;

        /* renamed from: c */
        public AbstractC4996v.C4997a f16345c;

        C5204a() {
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.a0$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/a0$b.class */
    public interface AbstractC5205b {
        /* renamed from: j */
        void mo19756j(Format format);
    }

    public C5203a0(AbstractC5472e abstractC5472e, AbstractC5040k<?> abstractC5040k) {
        this.f16317a = new C5310z(abstractC5472e);
        this.f16319c = abstractC5040k;
    }

    /* renamed from: A */
    private boolean m20150A(int i) {
        if (this.f16319c == AbstractC5040k.f15718a) {
            return true;
        }
        DrmSession<?> drmSession = this.f16322f;
        boolean z = true;
        if (drmSession != null) {
            z = true;
            if (drmSession.getState() != 4) {
                z = (this.f16327k[i] & 1073741824) == 0 && this.f16322f.mo20767c();
            }
        }
        return z;
    }

    /* renamed from: C */
    private void m20148C(Format format, C5090f0 c5090f0) {
        c5090f0.f15930c = format;
        Format format2 = this.f16321e;
        boolean z = format2 == null;
        DrmInitData drmInitData = z ? null : format2.f14464o;
        this.f16321e = format;
        if (this.f16319c == AbstractC5040k.f15718a) {
            return;
        }
        DrmInitData drmInitData2 = format.f14464o;
        c5090f0.f15928a = true;
        c5090f0.f15929b = this.f16322f;
        if (!z && C5515h0.m18843b(drmInitData, drmInitData2)) {
            return;
        }
        DrmSession<?> drmSession = this.f16322f;
        Looper looper = (Looper) C5508e.m18911e(Looper.myLooper());
        DrmSession<?> mo20771e = drmInitData2 != null ? this.f16319c.mo20771e(looper, drmInitData2) : this.f16319c.mo20772d(looper, C5529r.m18729h(format.f14461l));
        this.f16322f = mo20771e;
        c5090f0.f15929b = mo20771e;
        if (drmSession == null) {
            return;
        }
        drmSession.mo20768b();
    }

    /* renamed from: G */
    private int m20144G(C5090f0 c5090f0, C4858e c4858e, boolean z, boolean z2, long j, C5204a c5204a) {
        int i;
        boolean m20115w;
        synchronized (this) {
            int i2 = -1;
            while (true) {
                i = i2;
                m20115w = m20115w();
                if (!m20115w) {
                    break;
                }
                int m20118t = m20118t(this.f16334r);
                i = m20118t;
                if (this.f16328l[m20118t] >= j) {
                    break;
                }
                i = m20118t;
                if (!C5529r.m18736a(this.f16330n[m20118t].f14461l)) {
                    break;
                }
                this.f16334r++;
                i2 = m20118t;
            }
            if (!m20115w) {
                if (!z2 && !this.f16337u) {
                    Format format = this.f16340x;
                    if (format == null || (!z && format == this.f16321e)) {
                        return -3;
                    }
                    m20148C((Format) C5508e.m18911e(format), c5090f0);
                    return -5;
                }
                c4858e.setFlags(4);
                return -4;
            }
            if (!z && this.f16330n[i] == this.f16321e) {
                if (!m20150A(i)) {
                    return -3;
                }
                c4858e.setFlags(this.f16327k[i]);
                long j2 = this.f16328l[i];
                c4858e.f14776f = j2;
                if (j2 < j) {
                    c4858e.addFlag(Integer.MIN_VALUE);
                }
                if (c4858e.m21425k()) {
                    return -4;
                }
                c5204a.f16343a = this.f16326j[i];
                c5204a.f16344b = this.f16325i[i];
                c5204a.f16345c = this.f16329m[i];
                this.f16334r++;
                return -4;
            }
            m20148C(this.f16330n[i], c5090f0);
            return -5;
        }
    }

    /* renamed from: I */
    private void m20142I() {
        DrmSession<?> drmSession = this.f16322f;
        if (drmSession != null) {
            drmSession.mo20768b();
            this.f16322f = null;
            this.f16321e = null;
        }
    }

    /* renamed from: L */
    private void m20139L() {
        synchronized (this) {
            this.f16334r = 0;
            this.f16317a.m19708l();
        }
    }

    /* renamed from: O */
    private boolean m20136O(Format format) {
        synchronized (this) {
            if (format == null) {
                this.f16339w = true;
                return false;
            }
            this.f16339w = false;
            if (C5515h0.m18843b(format, this.f16340x)) {
                return false;
            }
            if (C5515h0.m18843b(format, this.f16341y)) {
                this.f16340x = this.f16341y;
                return true;
            }
            this.f16340x = format;
            return true;
        }
    }

    /* renamed from: g */
    private boolean m20130g(long j) {
        synchronized (this) {
            boolean z = false;
            if (this.f16331o == 0) {
                if (j > this.f16335s) {
                    z = true;
                }
                return z;
            } else if (Math.max(this.f16335s, m20120r(this.f16334r)) >= j) {
                return false;
            } else {
                int i = this.f16331o;
                int m20118t = m20118t(i - 1);
                while (i > this.f16334r && this.f16328l[m20118t] >= j) {
                    int i2 = i - 1;
                    int i3 = m20118t - 1;
                    i = i2;
                    m20118t = i3;
                    if (i3 == -1) {
                        m20118t = this.f16323g - 1;
                        i = i2;
                    }
                }
                m20123n(this.f16332p + i);
                return true;
            }
        }
    }

    /* renamed from: h */
    private void m20129h(long j, int i, long j2, int i2, AbstractC4996v.C4997a c4997a) {
        synchronized (this) {
            if (this.f16338v) {
                if ((i & 1) == 0) {
                    return;
                }
                this.f16338v = false;
            }
            C5508e.m18910f(!this.f16339w);
            this.f16337u = (536870912 & i) != 0;
            this.f16336t = Math.max(this.f16336t, j);
            int m20118t = m20118t(this.f16331o);
            this.f16328l[m20118t] = j;
            long[] jArr = this.f16325i;
            jArr[m20118t] = j2;
            this.f16326j[m20118t] = i2;
            this.f16327k[m20118t] = i;
            this.f16329m[m20118t] = c4997a;
            Format[] formatArr = this.f16330n;
            Format format = this.f16340x;
            formatArr[m20118t] = format;
            this.f16324h[m20118t] = this.f16342z;
            this.f16341y = format;
            int i3 = this.f16331o + 1;
            this.f16331o = i3;
            int i4 = this.f16323g;
            if (i3 == i4) {
                int i5 = i4 + 1000;
                int[] iArr = new int[i5];
                long[] jArr2 = new long[i5];
                long[] jArr3 = new long[i5];
                int[] iArr2 = new int[i5];
                int[] iArr3 = new int[i5];
                AbstractC4996v.C4997a[] c4997aArr = new AbstractC4996v.C4997a[i5];
                Format[] formatArr2 = new Format[i5];
                int i6 = this.f16333q;
                int i7 = i4 - i6;
                System.arraycopy(jArr, i6, jArr2, 0, i7);
                System.arraycopy(this.f16328l, this.f16333q, jArr3, 0, i7);
                System.arraycopy(this.f16327k, this.f16333q, iArr2, 0, i7);
                System.arraycopy(this.f16326j, this.f16333q, iArr3, 0, i7);
                System.arraycopy(this.f16329m, this.f16333q, c4997aArr, 0, i7);
                System.arraycopy(this.f16330n, this.f16333q, formatArr2, 0, i7);
                System.arraycopy(this.f16324h, this.f16333q, iArr, 0, i7);
                int i8 = this.f16333q;
                System.arraycopy(this.f16325i, 0, jArr2, i7, i8);
                System.arraycopy(this.f16328l, 0, jArr3, i7, i8);
                System.arraycopy(this.f16327k, 0, iArr2, i7, i8);
                System.arraycopy(this.f16326j, 0, iArr3, i7, i8);
                System.arraycopy(this.f16329m, 0, c4997aArr, i7, i8);
                System.arraycopy(this.f16330n, 0, formatArr2, i7, i8);
                System.arraycopy(this.f16324h, 0, iArr, i7, i8);
                this.f16325i = jArr2;
                this.f16328l = jArr3;
                this.f16327k = iArr2;
                this.f16326j = iArr3;
                this.f16329m = c4997aArr;
                this.f16330n = formatArr2;
                this.f16324h = iArr;
                this.f16333q = 0;
                this.f16323g = i5;
            }
        }
    }

    /* renamed from: i */
    private long m20128i(long j, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.f16331o;
            if (i != 0) {
                long[] jArr = this.f16328l;
                int i2 = this.f16333q;
                if (j >= jArr[i2]) {
                    int i3 = i;
                    if (z2) {
                        int i4 = this.f16334r;
                        i3 = i;
                        if (i4 != i) {
                            i3 = i4 + 1;
                        }
                    }
                    int m20122o = m20122o(i2, i3, j, z);
                    if (m20122o == -1) {
                        return -1L;
                    }
                    return m20126k(m20122o);
                }
            }
            return -1L;
        }
    }

    /* renamed from: j */
    private long m20127j() {
        synchronized (this) {
            int i = this.f16331o;
            if (i == 0) {
                return -1L;
            }
            return m20126k(i);
        }
    }

    /* renamed from: k */
    private long m20126k(int i) {
        int i2;
        this.f16335s = Math.max(this.f16335s, m20120r(i));
        int i3 = this.f16331o - i;
        this.f16331o = i3;
        this.f16332p += i;
        int i4 = this.f16333q + i;
        this.f16333q = i4;
        int i5 = this.f16323g;
        if (i4 >= i5) {
            this.f16333q = i4 - i5;
        }
        int i6 = this.f16334r - i;
        this.f16334r = i6;
        if (i6 < 0) {
            this.f16334r = 0;
        }
        if (i3 == 0) {
            int i7 = this.f16333q;
            if (i7 == 0) {
                i7 = i5;
            }
            return this.f16325i[i7 - 1] + this.f16326j[i2];
        }
        return this.f16325i[this.f16333q];
    }

    /* renamed from: n */
    private long m20123n(int i) {
        int m20118t;
        int m20116v = m20116v() - i;
        C5508e.m18915a(m20116v >= 0 && m20116v <= this.f16331o - this.f16334r);
        int i2 = this.f16331o - m20116v;
        this.f16331o = i2;
        this.f16336t = Math.max(this.f16335s, m20120r(i2));
        boolean z = false;
        if (m20116v == 0) {
            z = false;
            if (this.f16337u) {
                z = true;
            }
        }
        this.f16337u = z;
        int i3 = this.f16331o;
        if (i3 != 0) {
            return this.f16325i[m20118t(i3 - 1)] + this.f16326j[m20118t];
        }
        return 0L;
    }

    /* renamed from: o */
    private int m20122o(int i, int i2, long j, boolean z) {
        int i3 = -1;
        int i4 = i;
        for (int i5 = 0; i5 < i2 && this.f16328l[i4] <= j; i5++) {
            if (!z || (this.f16327k[i4] & 1) != 0) {
                i3 = i5;
            }
            int i6 = i4 + 1;
            i4 = i6;
            if (i6 == this.f16323g) {
                i4 = 0;
            }
        }
        return i3;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: r */
    private long m20120r(int i) {
        char c;
        char c2 = 0;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int m20118t = m20118t(i - 1);
        int i2 = 0;
        while (true) {
            c = c2;
            if (i2 >= i) {
                break;
            }
            c2 = Math.max((long) c2, this.f16328l[m20118t]);
            if ((this.f16327k[m20118t] & 1) != 0) {
                c = c2;
                break;
            }
            int i3 = m20118t - 1;
            m20118t = i3;
            if (i3 == -1) {
                m20118t = this.f16323g - 1;
            }
            i2++;
        }
        return c;
    }

    /* renamed from: t */
    private int m20118t(int i) {
        int i2 = this.f16333q + i;
        int i3 = this.f16323g;
        if (i2 >= i3) {
            i2 -= i3;
        }
        return i2;
    }

    /* renamed from: w */
    private boolean m20115w() {
        return this.f16334r != this.f16331o;
    }

    /* renamed from: B */
    public void m20149B() {
        DrmSession<?> drmSession = this.f16322f;
        if (drmSession == null || drmSession.getState() != 1) {
            return;
        }
        throw ((DrmSession.DrmSessionException) C5508e.m18911e(this.f16322f.mo20764f()));
    }

    /* renamed from: D */
    public final int m20147D() {
        int i;
        synchronized (this) {
            i = m20115w() ? this.f16324h[m20118t(this.f16334r)] : this.f16342z;
        }
        return i;
    }

    /* renamed from: E */
    public void m20146E() {
        m20124m();
        m20142I();
    }

    /* renamed from: F */
    public int m20145F(C5090f0 c5090f0, C4858e c4858e, boolean z, boolean z2, long j) {
        int m20144G = m20144G(c5090f0, c4858e, z, z2, j, this.f16318b);
        if (m20144G == -4 && !c4858e.isEndOfStream() && !c4858e.m21425k()) {
            this.f16317a.m19710j(c4858e, this.f16318b);
        }
        return m20144G;
    }

    /* renamed from: H */
    public void m20143H() {
        m20140K(true);
        m20142I();
    }

    /* renamed from: J */
    public final void m20141J() {
        m20140K(false);
    }

    /* renamed from: K */
    public void m20140K(boolean z) {
        this.f16317a.m19709k();
        this.f16331o = 0;
        this.f16332p = 0;
        this.f16333q = 0;
        this.f16334r = 0;
        this.f16338v = true;
        this.f16335s = Long.MIN_VALUE;
        this.f16336t = Long.MIN_VALUE;
        this.f16337u = false;
        this.f16341y = null;
        if (z) {
            this.f16314B = null;
            this.f16340x = null;
            this.f16339w = true;
        }
    }

    /* renamed from: M */
    public final boolean m20138M(long j, boolean z) {
        synchronized (this) {
            m20139L();
            int m20118t = m20118t(this.f16334r);
            if (!m20115w() || j < this.f16328l[m20118t] || (j > this.f16336t && !z)) {
                return false;
            }
            int m20122o = m20122o(m20118t, this.f16331o - this.f16334r, j, true);
            if (m20122o == -1) {
                return false;
            }
            this.f16334r += m20122o;
            return true;
        }
    }

    /* renamed from: N */
    public final void m20137N(long j) {
        if (this.f16315C != j) {
            this.f16315C = j;
            m20114x();
        }
    }

    /* renamed from: P */
    public final void m20135P(AbstractC5205b abstractC5205b) {
        this.f16320d = abstractC5205b;
    }

    /* renamed from: Q */
    public final void m20134Q(int i) {
        this.f16342z = i;
    }

    /* renamed from: R */
    public final void m20133R() {
        this.f16316D = true;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
    /* renamed from: a */
    public final int mo19986a(AbstractC4979i abstractC4979i, int i, boolean z) {
        return this.f16317a.m19707m(abstractC4979i, i, z);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
    /* renamed from: b */
    public final void mo19985b(C5536v c5536v, int i) {
        this.f16317a.m19706n(c5536v, i);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
    /* renamed from: c */
    public final void mo19984c(long j, int i, int i2, int i3, AbstractC4996v.C4997a c4997a) {
        if (this.f16313A) {
            mo19983d(this.f16314B);
        }
        long j2 = j + this.f16315C;
        if (this.f16316D) {
            if ((i & 1) == 0 || !m20130g(j2)) {
                return;
            }
            this.f16316D = false;
        }
        m20129h(j2, i, (this.f16317a.m19716d() - i2) - i3, i2, c4997a);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4996v
    /* renamed from: d */
    public final void mo19983d(Format format) {
        Format mo19977p = mo19977p(format);
        this.f16313A = false;
        this.f16314B = format;
        boolean m20136O = m20136O(mo19977p);
        AbstractC5205b abstractC5205b = this.f16320d;
        if (abstractC5205b == null || !m20136O) {
            return;
        }
        abstractC5205b.mo19756j(mo19977p);
    }

    /* renamed from: e */
    public final int m20132e(long j) {
        synchronized (this) {
            int m20118t = m20118t(this.f16334r);
            if (m20115w() && j >= this.f16328l[m20118t]) {
                int m20122o = m20122o(m20118t, this.f16331o - this.f16334r, j, true);
                if (m20122o == -1) {
                    return 0;
                }
                this.f16334r += m20122o;
                return m20122o;
            }
            return 0;
        }
    }

    /* renamed from: f */
    public final int m20131f() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f16331o;
            i2 = this.f16334r;
            this.f16334r = i;
        }
        return i - i2;
    }

    /* renamed from: l */
    public final void m20125l(long j, boolean z, boolean z2) {
        this.f16317a.m19717c(m20128i(j, z, z2));
    }

    /* renamed from: m */
    public final void m20124m() {
        this.f16317a.m19717c(m20127j());
    }

    /* renamed from: p */
    public Format mo19977p(Format format) {
        long j = this.f16315C;
        Format format2 = format;
        if (j != 0) {
            long j2 = format.f14465p;
            format2 = format;
            if (j2 != Long.MAX_VALUE) {
                format2 = format.m21744k(j2 + j);
            }
        }
        return format2;
    }

    /* renamed from: q */
    public final long m20121q() {
        long j;
        synchronized (this) {
            j = this.f16336t;
        }
        return j;
    }

    /* renamed from: s */
    public final int m20119s() {
        return this.f16332p + this.f16334r;
    }

    /* renamed from: u */
    public final Format m20117u() {
        Format format;
        synchronized (this) {
            format = this.f16339w ? null : this.f16340x;
        }
        return format;
    }

    /* renamed from: v */
    public final int m20116v() {
        return this.f16332p + this.f16331o;
    }

    /* renamed from: x */
    public final void m20114x() {
        this.f16313A = true;
    }

    /* renamed from: y */
    public final boolean m20113y() {
        boolean z;
        synchronized (this) {
            z = this.f16337u;
        }
        return z;
    }

    /* renamed from: z */
    public boolean m20112z(boolean z) {
        synchronized (this) {
            if (m20115w()) {
                int m20118t = m20118t(this.f16334r);
                if (this.f16330n[m20118t] != this.f16321e) {
                    return true;
                }
                return m20150A(m20118t);
            }
            boolean z2 = true;
            if (!z) {
                z2 = true;
                if (!this.f16337u) {
                    Format format = this.f16340x;
                    z2 = (format == null || format == this.f16321e) ? false : true;
                }
            }
            return z2;
        }
    }
}
