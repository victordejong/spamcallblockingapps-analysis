package com.google.android.exoplayer2.p243c1.p247d0;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4977g;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5512g;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Arrays;
import java.util.Collections;
/* renamed from: com.google.android.exoplayer2.c1.d0.k */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/k.class */
public final class C4942k implements AbstractC4946o {

    /* renamed from: a */
    private static final byte[] f15211a = {73, 68, 51};

    /* renamed from: b */
    private final boolean f15212b;

    /* renamed from: c */
    private final C5535u f15213c;

    /* renamed from: d */
    private final C5536v f15214d;

    /* renamed from: e */
    private final String f15215e;

    /* renamed from: f */
    private String f15216f;

    /* renamed from: g */
    private AbstractC4996v f15217g;

    /* renamed from: h */
    private AbstractC4996v f15218h;

    /* renamed from: i */
    private int f15219i;

    /* renamed from: j */
    private int f15220j;

    /* renamed from: k */
    private int f15221k;

    /* renamed from: l */
    private boolean f15222l;

    /* renamed from: m */
    private boolean f15223m;

    /* renamed from: n */
    private int f15224n;

    /* renamed from: o */
    private int f15225o;

    /* renamed from: p */
    private int f15226p;

    /* renamed from: q */
    private boolean f15227q;

    /* renamed from: r */
    private long f15228r;

    /* renamed from: s */
    private int f15229s;

    /* renamed from: t */
    private long f15230t;

    /* renamed from: u */
    private AbstractC4996v f15231u;

    /* renamed from: v */
    private long f15232v;

    public C4942k(boolean z) {
        this(z, null);
    }

    public C4942k(boolean z, String str) {
        this.f15213c = new C5535u(new byte[7]);
        this.f15214d = new C5536v(Arrays.copyOf(f15211a, 10));
        m21129r();
        this.f15224n = -1;
        this.f15225o = -1;
        this.f15228r = -9223372036854775807L;
        this.f15212b = z;
        this.f15215e = str;
    }

    /* renamed from: a */
    private void m21141a(C5536v c5536v) {
        if (c5536v.m18678a() == 0) {
            return;
        }
        this.f15213c.f17937a[0] = c5536v.f17941a[c5536v.m18676c()];
        this.f15213c.m18696o(2);
        int m18703h = this.f15213c.m18703h(4);
        int i = this.f15225o;
        if (i != -1 && m18703h != i) {
            m21131p();
            return;
        }
        if (!this.f15223m) {
            this.f15223m = true;
            this.f15224n = this.f15226p;
            this.f15225o = m18703h;
        }
        m21128s();
    }

    /* renamed from: g */
    private boolean m21140g(C5536v c5536v, int i) {
        boolean z;
        c5536v.m18680M(i + 1);
        if (!m21125v(c5536v, this.f15213c.f17937a, 1)) {
            return false;
        }
        this.f15213c.m18696o(4);
        int m18703h = this.f15213c.m18703h(1);
        int i2 = this.f15224n;
        if (i2 != -1 && m18703h != i2) {
            return false;
        }
        if (this.f15225o != -1) {
            if (!m21125v(c5536v, this.f15213c.f17937a, 1)) {
                return true;
            }
            this.f15213c.m18696o(2);
            if (this.f15213c.m18703h(4) != this.f15225o) {
                return false;
            }
            c5536v.m18680M(i + 2);
        }
        if (!m21125v(c5536v, this.f15213c.f17937a, 4)) {
            return true;
        }
        this.f15213c.m18696o(14);
        int m18703h2 = this.f15213c.m18703h(13);
        if (m18703h2 <= 6) {
            return false;
        }
        int i3 = i + m18703h2;
        int i4 = i3 + 1;
        if (i4 >= c5536v.m18675d()) {
            return true;
        }
        byte[] bArr = c5536v.f17941a;
        if (m21136k(bArr[i3], bArr[i4])) {
            z = true;
            if (this.f15224n != -1) {
                if (((c5536v.f17941a[i4] & 8) >> 3) == m18703h) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: h */
    private boolean m21139h(C5536v c5536v, byte[] bArr, int i) {
        int min = Math.min(c5536v.m18678a(), i - this.f15220j);
        c5536v.m18671h(bArr, this.f15220j, min);
        int i2 = this.f15220j + min;
        this.f15220j = i2;
        return i2 == i;
    }

    /* renamed from: i */
    private void m21138i(C5536v c5536v) {
        byte[] bArr = c5536v.f17941a;
        int m18676c = c5536v.m18676c();
        int m18675d = c5536v.m18675d();
        while (m18676c < m18675d) {
            int i = m18676c + 1;
            int i2 = bArr[m18676c] & 255;
            if (this.f15221k == 512 && m21136k((byte) -1, (byte) i2) && (this.f15223m || m21140g(c5536v, i - 2))) {
                this.f15226p = (i2 & 8) >> 3;
                boolean z = true;
                if ((i2 & 1) != 0) {
                    z = false;
                }
                this.f15222l = z;
                if (!this.f15223m) {
                    m21130q();
                } else {
                    m21128s();
                }
                c5536v.m18680M(i);
                return;
            }
            int i3 = this.f15221k;
            int i4 = i2 | i3;
            if (i4 == 329) {
                this.f15221k = 768;
                m18676c = i;
            } else if (i4 == 511) {
                this.f15221k = 512;
                m18676c = i;
            } else if (i4 == 836) {
                this.f15221k = 1024;
                m18676c = i;
            } else if (i4 == 1075) {
                m21127t();
                c5536v.m18680M(i);
                return;
            } else {
                m18676c = i;
                if (i3 != 256) {
                    this.f15221k = 256;
                    m18676c = i - 1;
                }
            }
        }
        c5536v.m18680M(m18676c);
    }

    /* renamed from: k */
    private boolean m21136k(byte b, byte b2) {
        return m21135l(((b & 255) << 8) | (b2 & 255));
    }

    /* renamed from: l */
    public static boolean m21135l(int i) {
        return (i & 65526) == 65520;
    }

    /* renamed from: m */
    private void m21134m() {
        this.f15213c.m18696o(0);
        if (!this.f15227q) {
            int m18703h = this.f15213c.m18703h(2) + 1;
            int i = m18703h;
            if (m18703h != 2) {
                C5526o.m18742f("AdtsReader", "Detected audio object type: " + m18703h + ", but assuming AAC LC.");
                i = 2;
            }
            this.f15213c.m18694q(5);
            byte[] m18889a = C5512g.m18889a(i, this.f15225o, this.f15213c.m18703h(3));
            Pair<Integer, Integer> m18883g = C5512g.m18883g(m18889a);
            Format m21740o = Format.m21740o(this.f15216f, "audio/mp4a-latm", null, -1, -1, ((Integer) m18883g.second).intValue(), ((Integer) m18883g.first).intValue(), Collections.singletonList(m18889a), null, 0, this.f15215e);
            this.f15228r = 1024000000 / m21740o.f14475z;
            this.f15217g.mo19983d(m21740o);
            this.f15227q = true;
        } else {
            this.f15213c.m18694q(10);
        }
        this.f15213c.m18694q(4);
        int m18703h2 = (this.f15213c.m18703h(13) - 2) - 5;
        int i2 = m18703h2;
        if (this.f15222l) {
            i2 = m18703h2 - 2;
        }
        m21126u(this.f15217g, this.f15228r, 0, i2);
    }

    /* renamed from: n */
    private void m21133n() {
        this.f15218h.mo19985b(this.f15214d, 10);
        this.f15214d.m18680M(6);
        m21126u(this.f15218h, 0L, 10, this.f15214d.m18654y() + 10);
    }

    /* renamed from: o */
    private void m21132o(C5536v c5536v) {
        int min = Math.min(c5536v.m18678a(), this.f15229s - this.f15220j);
        this.f15231u.mo19985b(c5536v, min);
        int i = this.f15220j + min;
        this.f15220j = i;
        int i2 = this.f15229s;
        if (i == i2) {
            this.f15231u.mo19984c(this.f15230t, 1, i2, 0, null);
            this.f15230t += this.f15232v;
            m21129r();
        }
    }

    /* renamed from: p */
    private void m21131p() {
        this.f15223m = false;
        m21129r();
    }

    /* renamed from: q */
    private void m21130q() {
        this.f15219i = 1;
        this.f15220j = 0;
    }

    /* renamed from: r */
    private void m21129r() {
        this.f15219i = 0;
        this.f15220j = 0;
        this.f15221k = 256;
    }

    /* renamed from: s */
    private void m21128s() {
        this.f15219i = 3;
        this.f15220j = 0;
    }

    /* renamed from: t */
    private void m21127t() {
        this.f15219i = 2;
        this.f15220j = f15211a.length;
        this.f15229s = 0;
        this.f15214d.m18680M(0);
    }

    /* renamed from: u */
    private void m21126u(AbstractC4996v abstractC4996v, long j, int i, int i2) {
        this.f15219i = 4;
        this.f15220j = i;
        this.f15231u = abstractC4996v;
        this.f15232v = j;
        this.f15229s = i2;
    }

    /* renamed from: v */
    private boolean m21125v(C5536v c5536v, byte[] bArr, int i) {
        if (c5536v.m18678a() < i) {
            return false;
        }
        c5536v.m18671h(bArr, 0, i);
        return true;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: b */
    public void mo21073b(C5536v c5536v) {
        while (c5536v.m18678a() > 0) {
            int i = this.f15219i;
            if (i == 0) {
                m21138i(c5536v);
            } else if (i == 1) {
                m21141a(c5536v);
            } else if (i != 2) {
                if (i == 3) {
                    if (m21139h(c5536v, this.f15213c.f17937a, this.f15222l ? 7 : 5)) {
                        m21134m();
                    }
                } else if (i != 4) {
                    throw new IllegalStateException();
                } else {
                    m21132o(c5536v);
                }
            } else if (m21139h(c5536v, this.f15214d.f17941a, 10)) {
                m21133n();
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: c */
    public void mo21072c() {
        m21131p();
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: d */
    public void mo21071d() {
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: e */
    public void mo21070e(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        c4937d.m21159a();
        this.f15216f = c4937d.m21158b();
        this.f15217g = abstractC4980j.mo19748t(c4937d.m21157c(), 1);
        if (!this.f15212b) {
            this.f15218h = new C4977g();
            return;
        }
        c4937d.m21159a();
        AbstractC4996v mo19748t = abstractC4980j.mo19748t(c4937d.m21157c(), 4);
        this.f15218h = mo19748t;
        mo19748t.mo19983d(Format.m21736u(c4937d.m21158b(), "application/id3", null, -1, null));
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: f */
    public void mo21069f(long j, int i) {
        this.f15230t = j;
    }

    /* renamed from: j */
    public long m21137j() {
        return this.f15228r;
    }
}
