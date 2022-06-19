package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5531s;
import com.google.android.exoplayer2.util.C5536v;
import com.google.android.exoplayer2.util.C5537w;
import java.util.Collections;
/* renamed from: com.google.android.exoplayer2.c1.d0.r */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/r.class */
public final class C4953r implements AbstractC4946o {

    /* renamed from: a */
    private final C4920c0 f15323a;

    /* renamed from: b */
    private String f15324b;

    /* renamed from: c */
    private AbstractC4996v f15325c;

    /* renamed from: d */
    private C4954a f15326d;

    /* renamed from: e */
    private boolean f15327e;

    /* renamed from: l */
    private long f15334l;

    /* renamed from: m */
    private long f15335m;

    /* renamed from: f */
    private final boolean[] f15328f = new boolean[3];

    /* renamed from: g */
    private final C4958v f15329g = new C4958v(32, 128);

    /* renamed from: h */
    private final C4958v f15330h = new C4958v(33, 128);

    /* renamed from: i */
    private final C4958v f15331i = new C4958v(34, 128);

    /* renamed from: j */
    private final C4958v f15332j = new C4958v(39, 128);

    /* renamed from: k */
    private final C4958v f15333k = new C4958v(40, 128);

    /* renamed from: n */
    private final C5536v f15336n = new C5536v();

    /* renamed from: com.google.android.exoplayer2.c1.d0.r$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/r$a.class */
    public static final class C4954a {

        /* renamed from: a */
        private final AbstractC4996v f15337a;

        /* renamed from: b */
        private long f15338b;

        /* renamed from: c */
        private boolean f15339c;

        /* renamed from: d */
        private int f15340d;

        /* renamed from: e */
        private long f15341e;

        /* renamed from: f */
        private boolean f15342f;

        /* renamed from: g */
        private boolean f15343g;

        /* renamed from: h */
        private boolean f15344h;

        /* renamed from: i */
        private boolean f15345i;

        /* renamed from: j */
        private boolean f15346j;

        /* renamed from: k */
        private long f15347k;

        /* renamed from: l */
        private long f15348l;

        /* renamed from: m */
        private boolean f15349m;

        public C4954a(AbstractC4996v abstractC4996v) {
            this.f15337a = abstractC4996v;
        }

        /* renamed from: b */
        private void m21086b(int i) {
            boolean z = this.f15349m;
            this.f15337a.mo19984c(this.f15348l, z ? 1 : 0, (int) (this.f15338b - this.f15347k), i, null);
        }

        /* renamed from: a */
        public void m21087a(long j, int i) {
            if (this.f15346j && this.f15343g) {
                this.f15349m = this.f15339c;
                this.f15346j = false;
            } else if (!this.f15344h && !this.f15343g) {
            } else {
                if (this.f15345i) {
                    m21086b(i + ((int) (j - this.f15338b)));
                }
                this.f15347k = this.f15338b;
                this.f15348l = this.f15341e;
                this.f15345i = true;
                this.f15349m = this.f15339c;
            }
        }

        /* renamed from: c */
        public void m21085c(byte[] bArr, int i, int i2) {
            if (this.f15342f) {
                int i3 = this.f15340d;
                int i4 = (i + 2) - i3;
                if (i4 >= i2) {
                    this.f15340d = i3 + (i2 - i);
                    return;
                }
                this.f15343g = (bArr[i4] & 128) != 0;
                this.f15342f = false;
            }
        }

        /* renamed from: d */
        public void m21084d() {
            this.f15342f = false;
            this.f15343g = false;
            this.f15344h = false;
            this.f15345i = false;
            this.f15346j = false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x007c, code lost:
            if (r8 <= 9) goto L22;
         */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m21083e(long r5, int r7, int r8, long r9) {
            /*
                r4 = this;
                r0 = 0
                r11 = r0
                r0 = r4
                r1 = 0
                r0.f15343g = r1
                r0 = r4
                r1 = 0
                r0.f15344h = r1
                r0 = r4
                r1 = r9
                r0.f15341e = r1
                r0 = r4
                r1 = 0
                r0.f15340d = r1
                r0 = r4
                r1 = r5
                r0.f15338b = r1
                r0 = r8
                r1 = 32
                if (r0 < r1) goto L52
                r0 = r4
                boolean r0 = r0.f15346j
                if (r0 != 0) goto L3c
                r0 = r4
                boolean r0 = r0.f15345i
                if (r0 == 0) goto L3c
                r0 = r4
                r1 = r7
                r0.m21086b(r1)
                r0 = r4
                r1 = 0
                r0.f15345i = r1
            L3c:
                r0 = r8
                r1 = 34
                if (r0 > r1) goto L52
                r0 = r4
                r1 = r4
                boolean r1 = r1.f15346j
                r2 = 1
                r1 = r1 ^ r2
                r0.f15344h = r1
                r0 = r4
                r1 = 1
                r0.f15346j = r1
            L52:
                r0 = r8
                r1 = 16
                if (r0 < r1) goto L66
                r0 = r8
                r1 = 21
                if (r0 > r1) goto L66
                r0 = 1
                r12 = r0
                goto L69
            L66:
                r0 = 0
                r12 = r0
            L69:
                r0 = r4
                r1 = r12
                r0.f15339c = r1
                r0 = r12
                if (r0 != 0) goto L7f
                r0 = r11
                r12 = r0
                r0 = r8
                r1 = 9
                if (r0 > r1) goto L82
            L7f:
                r0 = 1
                r12 = r0
            L82:
                r0 = r4
                r1 = r12
                r0.f15342f = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p243c1.p247d0.C4953r.C4954a.m21083e(long, int, int, long):void");
        }
    }

    public C4953r(C4920c0 c4920c0) {
        this.f15323a = c4920c0;
    }

    /* renamed from: a */
    private void m21093a(long j, int i, int i2, long j2) {
        if (this.f15327e) {
            this.f15326d.m21087a(j, i);
        } else {
            this.f15329g.m21065b(i2);
            this.f15330h.m21065b(i2);
            this.f15331i.m21065b(i2);
            if (this.f15329g.m21064c() && this.f15330h.m21064c() && this.f15331i.m21064c()) {
                this.f15325c.mo19983d(m21091h(this.f15324b, this.f15329g, this.f15330h, this.f15331i));
                this.f15327e = true;
            }
        }
        if (this.f15332j.m21065b(i2)) {
            C4958v c4958v = this.f15332j;
            this.f15336n.m18682K(this.f15332j.f15391d, C5531s.m18712k(c4958v.f15391d, c4958v.f15392e));
            this.f15336n.m18679N(5);
            this.f15323a.m21200a(j2, this.f15336n);
        }
        if (this.f15333k.m21065b(i2)) {
            C4958v c4958v2 = this.f15333k;
            this.f15336n.m18682K(this.f15333k.f15391d, C5531s.m18712k(c4958v2.f15391d, c4958v2.f15392e));
            this.f15336n.m18679N(5);
            this.f15323a.m21200a(j2, this.f15336n);
        }
    }

    /* renamed from: g */
    private void m21092g(byte[] bArr, int i, int i2) {
        if (this.f15327e) {
            this.f15326d.m21085c(bArr, i, i2);
        } else {
            this.f15329g.m21066a(bArr, i, i2);
            this.f15330h.m21066a(bArr, i, i2);
            this.f15331i.m21066a(bArr, i, i2);
        }
        this.f15332j.m21066a(bArr, i, i2);
        this.f15333k.m21066a(bArr, i, i2);
    }

    /* renamed from: h */
    private static Format m21091h(String str, C4958v c4958v, C4958v c4958v2, C4958v c4958v3) {
        float f;
        int i = c4958v.f15392e;
        byte[] bArr = new byte[c4958v2.f15392e + i + c4958v3.f15392e];
        System.arraycopy(c4958v.f15391d, 0, bArr, 0, i);
        System.arraycopy(c4958v2.f15391d, 0, bArr, c4958v.f15392e, c4958v2.f15392e);
        System.arraycopy(c4958v3.f15391d, 0, bArr, c4958v.f15392e + c4958v2.f15392e, c4958v3.f15392e);
        C5537w c5537w = new C5537w(c4958v2.f15391d, 0, c4958v2.f15392e);
        c5537w.m18641l(44);
        int m18648e = c5537w.m18648e(3);
        c5537w.m18642k();
        c5537w.m18641l(88);
        c5537w.m18641l(8);
        int i2 = 0;
        for (int i3 = 0; i3 < m18648e; i3++) {
            int i4 = i2;
            if (c5537w.m18649d()) {
                i4 = i2 + 89;
            }
            i2 = i4;
            if (c5537w.m18649d()) {
                i2 = i4 + 8;
            }
        }
        c5537w.m18641l(i2);
        if (m18648e > 0) {
            c5537w.m18641l((8 - m18648e) * 2);
        }
        c5537w.m18645h();
        int m18645h = c5537w.m18645h();
        if (m18645h == 3) {
            c5537w.m18642k();
        }
        int m18645h2 = c5537w.m18645h();
        int m18645h3 = c5537w.m18645h();
        int i5 = m18645h2;
        int i6 = m18645h3;
        if (c5537w.m18649d()) {
            int m18645h4 = c5537w.m18645h();
            int m18645h5 = c5537w.m18645h();
            int m18645h6 = c5537w.m18645h();
            int m18645h7 = c5537w.m18645h();
            i5 = m18645h2 - (((m18645h == 1 || m18645h == 2) ? 2 : 1) * (m18645h4 + m18645h5));
            i6 = m18645h3 - ((m18645h == 1 ? 2 : 1) * (m18645h6 + m18645h7));
        }
        c5537w.m18645h();
        c5537w.m18645h();
        int m18645h8 = c5537w.m18645h();
        for (int i7 = c5537w.m18649d() ? 0 : m18648e; i7 <= m18648e; i7++) {
            c5537w.m18645h();
            c5537w.m18645h();
            c5537w.m18645h();
        }
        c5537w.m18645h();
        c5537w.m18645h();
        c5537w.m18645h();
        c5537w.m18645h();
        c5537w.m18645h();
        c5537w.m18645h();
        if (c5537w.m18649d() && c5537w.m18649d()) {
            m21090i(c5537w);
        }
        c5537w.m18641l(2);
        if (c5537w.m18649d()) {
            c5537w.m18641l(8);
            c5537w.m18645h();
            c5537w.m18645h();
            c5537w.m18642k();
        }
        m21089j(c5537w);
        if (c5537w.m18649d()) {
            for (int i8 = 0; i8 < c5537w.m18645h(); i8++) {
                c5537w.m18641l(m18645h8 + 4 + 1);
            }
        }
        c5537w.m18641l(2);
        if (c5537w.m18649d() && c5537w.m18649d()) {
            int m18648e2 = c5537w.m18648e(8);
            if (m18648e2 == 255) {
                int m18648e3 = c5537w.m18648e(16);
                int m18648e4 = c5537w.m18648e(16);
                f = 1.0f;
                if (m18648e3 != 0) {
                    f = 1.0f;
                    if (m18648e4 != 0) {
                        f = m18648e3 / m18648e4;
                    }
                }
            } else {
                float[] fArr = C5531s.f17918b;
                if (m18648e2 < fArr.length) {
                    f = fArr[m18648e2];
                } else {
                    C5526o.m18742f("H265Reader", "Unexpected aspect_ratio_idc value: " + m18648e2);
                }
            }
            return Format.m21758D(str, "video/hevc", null, -1, -1, i5, i6, -1.0f, Collections.singletonList(bArr), -1, f, null);
        }
        f = 1.0f;
        return Format.m21758D(str, "video/hevc", null, -1, -1, i5, i6, -1.0f, Collections.singletonList(bArr), -1, f, null);
    }

    /* renamed from: i */
    private static void m21090i(C5537w c5537w) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < 6) {
                    if (!c5537w.m18649d()) {
                        c5537w.m18645h();
                    } else {
                        int min = Math.min(64, 1 << ((i << 1) + 4));
                        if (i > 1) {
                            c5537w.m18646g();
                        }
                        for (int i4 = 0; i4 < min; i4++) {
                            c5537w.m18646g();
                        }
                    }
                    int i5 = 1;
                    if (i == 3) {
                        i5 = 3;
                    }
                    i2 = i3 + i5;
                }
            }
        }
    }

    /* renamed from: j */
    private static void m21089j(C5537w c5537w) {
        int i;
        int m18645h = c5537w.m18645h();
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 < m18645h) {
                if (i2 != 0) {
                    z = c5537w.m18649d();
                }
                if (z) {
                    c5537w.m18642k();
                    c5537w.m18645h();
                    int i5 = 0;
                    while (true) {
                        i = i4;
                        if (i5 <= i4) {
                            if (c5537w.m18649d()) {
                                c5537w.m18642k();
                            }
                            i5++;
                        }
                    }
                } else {
                    int m18645h2 = c5537w.m18645h();
                    int m18645h3 = c5537w.m18645h();
                    for (int i6 = 0; i6 < m18645h2; i6++) {
                        c5537w.m18645h();
                        c5537w.m18642k();
                    }
                    for (int i7 = 0; i7 < m18645h3; i7++) {
                        c5537w.m18645h();
                        c5537w.m18642k();
                    }
                    i = m18645h2 + m18645h3;
                }
                i2++;
                i3 = i;
            } else {
                return;
            }
        }
    }

    /* renamed from: k */
    private void m21088k(long j, int i, int i2, long j2) {
        if (this.f15327e) {
            this.f15326d.m21083e(j, i, i2, j2);
        } else {
            this.f15329g.m21062e(i2);
            this.f15330h.m21062e(i2);
            this.f15331i.m21062e(i2);
        }
        this.f15332j.m21062e(i2);
        this.f15333k.m21062e(i2);
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: b */
    public void mo21073b(C5536v c5536v) {
        while (c5536v.m18678a() > 0) {
            int m18676c = c5536v.m18676c();
            int m18675d = c5536v.m18675d();
            byte[] bArr = c5536v.f17941a;
            this.f15334l += c5536v.m18678a();
            this.f15325c.mo19985b(c5536v, c5536v.m18678a());
            while (m18676c < m18675d) {
                int m18720c = C5531s.m18720c(bArr, m18676c, m18675d, this.f15328f);
                if (m18720c == m18675d) {
                    m21092g(bArr, m18676c, m18675d);
                    return;
                }
                int m18718e = C5531s.m18718e(bArr, m18720c);
                int i = m18720c - m18676c;
                if (i > 0) {
                    m21092g(bArr, m18676c, m18720c);
                }
                int i2 = m18675d - m18720c;
                long j = this.f15334l - i2;
                m21093a(j, i2, i < 0 ? -i : 0, this.f15335m);
                m21088k(j, i2, m18718e, this.f15335m);
                m18676c = m18720c + 3;
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: c */
    public void mo21072c() {
        C5531s.m18722a(this.f15328f);
        this.f15329g.m21063d();
        this.f15330h.m21063d();
        this.f15331i.m21063d();
        this.f15332j.m21063d();
        this.f15333k.m21063d();
        this.f15326d.m21084d();
        this.f15334l = 0L;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: d */
    public void mo21071d() {
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: e */
    public void mo21070e(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        c4937d.m21159a();
        this.f15324b = c4937d.m21158b();
        AbstractC4996v mo19748t = abstractC4980j.mo19748t(c4937d.m21157c(), 2);
        this.f15325c = mo19748t;
        this.f15326d = new C4954a(mo19748t);
        this.f15323a.m21199b(abstractC4980j, c4937d);
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: f */
    public void mo21069f(long j, int i) {
        this.f15335m = j;
    }
}
