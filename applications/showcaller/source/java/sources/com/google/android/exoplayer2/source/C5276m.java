package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.C5090f0;
import com.google.android.exoplayer2.C5579w0;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.source.AbstractC5292u;
import com.google.android.exoplayer2.trackselection.AbstractC5408f;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5529r;
/* renamed from: com.google.android.exoplayer2.source.m */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/m.class */
public final class C5276m implements AbstractC5292u, AbstractC5292u.AbstractC5293a {

    /* renamed from: d */
    public final AbstractC5292u f16741d;

    /* renamed from: e */
    private AbstractC5292u.AbstractC5293a f16742e;

    /* renamed from: f */
    private C5277a[] f16743f = new C5277a[0];

    /* renamed from: g */
    private long f16744g;

    /* renamed from: h */
    long f16745h;

    /* renamed from: i */
    long f16746i;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.source.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/m$a.class */
    public final class C5277a implements AbstractC5209b0 {

        /* renamed from: a */
        public final AbstractC5209b0 f16747a;

        /* renamed from: b */
        private boolean f16748b;

        public C5277a(AbstractC5209b0 abstractC5209b0) {
            C5276m.this = r4;
            this.f16747a = abstractC5209b0;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5209b0
        /* renamed from: a */
        public int mo19731a(C5090f0 c5090f0, C4858e c4858e, boolean z) {
            if (C5276m.this.m19870i()) {
                return -3;
            }
            if (this.f16748b) {
                c4858e.setFlags(4);
                return -4;
            }
            int mo19731a = this.f16747a.mo19731a(c5090f0, c4858e, z);
            if (mo19731a != -5) {
                C5276m c5276m = C5276m.this;
                long j = c5276m.f16746i;
                if (j == Long.MIN_VALUE || ((mo19731a != -4 || c4858e.f14776f < j) && !(mo19731a == -3 && c5276m.mo19760e() == Long.MIN_VALUE))) {
                    return mo19731a;
                }
                c4858e.clear();
                c4858e.setFlags(4);
                this.f16748b = true;
                return -4;
            }
            Format format = (Format) C5508e.m18911e(c5090f0.f15930c);
            int i = format.f14447B;
            if (i == 0 && format.f14448C == 0) {
                return -5;
            }
            C5276m c5276m2 = C5276m.this;
            int i2 = 0;
            if (c5276m2.f16745h != 0) {
                i = 0;
            }
            if (c5276m2.f16746i == Long.MIN_VALUE) {
                i2 = format.f14448C;
            }
            c5090f0.f15930c = format.m21748g(i, i2);
            return -5;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5209b0
        /* renamed from: b */
        public void mo19730b() {
            this.f16747a.mo19730b();
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5209b0
        /* renamed from: c */
        public int mo19729c(long j) {
            if (C5276m.this.m19870i()) {
                return -3;
            }
            return this.f16747a.mo19729c(j);
        }

        /* renamed from: d */
        public void m19866d() {
            this.f16748b = false;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC5209b0
        /* renamed from: e */
        public boolean mo19727e() {
            return !C5276m.this.m19870i() && this.f16747a.mo19727e();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C5276m(AbstractC5292u abstractC5292u, boolean z, long j, long j2) {
        this.f16741d = abstractC5292u;
        this.f16744g = z ? j : (char) 1;
        this.f16745h = j;
        this.f16746i = j2;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* renamed from: g */
    private C5579w0 m19871g(long j, C5579w0 c5579w0) {
        long m18817o = C5515h0.m18817o(c5579w0.f18119f, 0L, j - this.f16745h);
        long j2 = c5579w0.f18120g;
        long j3 = this.f16746i;
        long m18817o2 = C5515h0.m18817o(j2, 0L, j3 == Long.MIN_VALUE ? (char) 65535 : j3 - j);
        return (m18817o == c5579w0.f18119f && m18817o2 == c5579w0.f18120g) ? c5579w0 : new C5579w0(m18817o, m18817o2);
    }

    /* renamed from: t */
    private static boolean m19867t(long j, AbstractC5408f[] abstractC5408fArr) {
        if (j != 0) {
            for (AbstractC5408f abstractC5408f : abstractC5408fArr) {
                if (abstractC5408f != null && !C5529r.m18725l(abstractC5408f.mo19286j().f14461l)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: a */
    public long mo19768a() {
        long mo19768a = this.f16741d.mo19768a();
        if (mo19768a != Long.MIN_VALUE) {
            long j = this.f16746i;
            if (j != Long.MIN_VALUE && mo19768a >= j) {
                return Long.MIN_VALUE;
            }
            return mo19768a;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: b */
    public boolean mo19766b(long j) {
        return this.f16741d.mo19766b(j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: d */
    public boolean mo19762d() {
        return this.f16741d.mo19762d();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: e */
    public long mo19760e() {
        long mo19760e = this.f16741d.mo19760e();
        if (mo19760e != Long.MIN_VALUE) {
            long j = this.f16746i;
            if (j != Long.MIN_VALUE && mo19760e >= j) {
                return Long.MIN_VALUE;
            }
            return mo19760e;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u, com.google.android.exoplayer2.source.AbstractC5211c0
    /* renamed from: f */
    public void mo19758f(long j) {
        this.f16741d.mo19758f(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00be, code lost:
        if (r0 > r0) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00dd  */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo19757h(com.google.android.exoplayer2.trackselection.AbstractC5408f[] r9, boolean[] r10, com.google.android.exoplayer2.source.AbstractC5209b0[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C5276m.mo19757h(com.google.android.exoplayer2.trackselection.f[], boolean[], com.google.android.exoplayer2.source.b0[], boolean[], long):long");
    }

    /* renamed from: i */
    boolean m19870i() {
        return this.f16744g != -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: l */
    public void mo19755l() {
        this.f16741d.mo19755l();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
        if (r0 <= r0) goto L17;
     */
    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo19754m(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f16744g = r1
            r0 = r5
            com.google.android.exoplayer2.source.m$a[] r0 = r0.f16743f
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L16:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L33
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L2d
            r0 = r12
            r0.m19866d()
        L2d:
            int r11 = r11 + 1
            goto L16
        L33:
            r0 = r5
            com.google.android.exoplayer2.source.u r0 = r0.f16741d
            r1 = r6
            long r0 = r0.mo19754m(r1)
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6c
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r5
            long r1 = r1.f16745h
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L6f
            r0 = r5
            long r0 = r0.f16746i
            r6 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6c
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L6f
        L6c:
            r0 = 1
            r15 = r0
        L6f:
            r0 = r15
            com.google.android.exoplayer2.util.C5508e.m18910f(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C5276m.mo19754m(long):long");
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: n */
    public long mo19753n(long j, C5579w0 c5579w0) {
        long j2 = this.f16745h;
        if (j == j2) {
            return j2;
        }
        return this.f16741d.mo19753n(j, m19871g(j, c5579w0));
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u.AbstractC5293a
    /* renamed from: o */
    public void mo19849o(AbstractC5292u abstractC5292u) {
        ((AbstractC5292u.AbstractC5293a) C5508e.m18911e(this.f16742e)).mo19849o(this);
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: p */
    public long mo19751p() {
        if (m19870i()) {
            char c = this.f16744g;
            this.f16744g = -9223372036854775807L;
            ?? mo19751p = mo19751p();
            if (mo19751p != -9223372036854775807L) {
                c = mo19751p;
            }
            return c;
        }
        long mo19751p2 = this.f16741d.mo19751p();
        if (mo19751p2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        C5508e.m18910f(mo19751p2 >= this.f16745h);
        long j = this.f16746i;
        boolean z = true;
        if (j != Long.MIN_VALUE) {
            z = mo19751p2 <= j;
        }
        C5508e.m18910f(z);
        return mo19751p2;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: q */
    public void mo19750q(AbstractC5292u.AbstractC5293a abstractC5293a, long j) {
        this.f16742e = abstractC5293a;
        this.f16741d.mo19750q(this, j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: r */
    public TrackGroupArray mo19749r() {
        return this.f16741d.mo19749r();
    }

    /* renamed from: s */
    public void mo19869j(AbstractC5292u abstractC5292u) {
        ((AbstractC5292u.AbstractC5293a) C5508e.m18911e(this.f16742e)).mo19869j(this);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5292u
    /* renamed from: u */
    public void mo19747u(long j, boolean z) {
        this.f16741d.mo19747u(j, z);
    }
}
