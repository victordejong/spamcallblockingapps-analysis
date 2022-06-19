package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.source.AbstractC5292u;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.j0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/j0.class */
final class C5098j0 {

    /* renamed from: c */
    private long f15958c;

    /* renamed from: e */
    private int f15960e;

    /* renamed from: f */
    private boolean f15961f;

    /* renamed from: g */
    private C5094h0 f15962g;

    /* renamed from: h */
    private C5094h0 f15963h;

    /* renamed from: i */
    private C5094h0 f15964i;

    /* renamed from: j */
    private int f15965j;

    /* renamed from: k */
    private Object f15966k;

    /* renamed from: l */
    private long f15967l;

    /* renamed from: a */
    private final AbstractC5585y0.C5587b f15956a = new AbstractC5585y0.C5587b();

    /* renamed from: b */
    private final AbstractC5585y0.C5588c f15957b = new AbstractC5585y0.C5588c();

    /* renamed from: d */
    private AbstractC5585y0 f15959d = AbstractC5585y0.f18173a;

    /* renamed from: A */
    private boolean m20554A() {
        C5094h0 c5094h0 = this.f15962g;
        if (c5094h0 == null) {
            return true;
        }
        int mo18356b = this.f15959d.mo18356b(c5094h0.f15934b);
        while (true) {
            mo18356b = this.f15959d.m18366d(mo18356b, this.f15956a, this.f15957b, this.f15960e, this.f15961f);
            while (c5094h0.m20573j() != null && !c5094h0.f15938f.f15953f) {
                c5094h0 = c5094h0.m20573j();
            }
            C5094h0 m20573j = c5094h0.m20573j();
            if (mo18356b == -1 || m20573j == null || this.f15959d.mo18356b(m20573j.f15934b) != mo18356b) {
                break;
            }
            c5094h0 = m20573j;
        }
        boolean m20530u = m20530u(c5094h0);
        c5094h0.f15938f = m20535p(c5094h0.f15938f);
        return !m20530u;
    }

    /* renamed from: c */
    private boolean m20548c(long j, long j2) {
        return j == -9223372036854775807L || j == j2;
    }

    /* renamed from: d */
    private boolean m20547d(C5096i0 c5096i0, C5096i0 c5096i02) {
        return c5096i0.f15949b == c5096i02.f15949b && c5096i0.f15948a.equals(c5096i02.f15948a);
    }

    /* renamed from: g */
    private C5096i0 m20544g(C5100k0 c5100k0) {
        return m20541j(c5100k0.f15971c, c5100k0.f15973e, c5100k0.f15972d);
    }

    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* renamed from: h */
    private C5096i0 m20543h(C5094h0 c5094h0, long j) {
        char c;
        Object obj;
        char c2;
        C5096i0 c5096i0 = c5094h0.f15938f;
        long m20571l = (c5094h0.m20571l() + c5096i0.f15952e) - j;
        boolean z = false;
        if (c5096i0.f15953f) {
            int m18366d = this.f15959d.m18366d(this.f15959d.mo18356b(c5096i0.f15948a.f16780a), this.f15956a, this.f15957b, this.f15960e, this.f15961f);
            if (m18366d == -1) {
                return null;
            }
            int i = this.f15959d.mo18355g(m18366d, this.f15956a, true).f18176c;
            Object obj2 = this.f15956a.f18175b;
            char c3 = c5096i0.f15948a.f16783d;
            if (this.f15959d.m18359n(i, this.f15957b).f18189j == m18366d) {
                Pair<Object, Long> m18361k = this.f15959d.m18361k(this.f15957b, this.f15956a, i, -9223372036854775807L, Math.max(0L, m20571l));
                if (m18361k == null) {
                    return null;
                }
                Object obj3 = m18361k.first;
                c = ((Long) m18361k.second).longValue();
                C5094h0 m20573j = c5094h0.m20573j();
                if (m20573j == null || !m20573j.f15934b.equals(obj3)) {
                    char c4 = this.f15958c;
                    this.f15958c = 1 + c4;
                    c2 = c4;
                } else {
                    c2 = m20573j.f15938f.f15948a.f16783d;
                }
                z = true;
                obj = obj3;
                c3 = c2;
            } else {
                obj = obj2;
                c = 0;
            }
            return m20541j(m20528w(obj, c, c3), z ? 1L : 0L, c);
        }
        AbstractC5294v.C5295a c5295a = c5096i0.f15948a;
        this.f15959d.m18363h(c5295a.f16780a, this.f15956a);
        if (!c5295a.m19842a()) {
            int m18346e = this.f15956a.m18346e(c5096i0.f15951d);
            if (m18346e == -1) {
                return m20539l(c5295a.f16780a, c5096i0.f15952e, c5295a.f16783d);
            }
            int m18342i = this.f15956a.m18342i(m18346e);
            return !this.f15956a.m18337n(m18346e, m18342i) ? null : m20540k(c5295a.f16780a, m18346e, m18342i, c5096i0.f15952e, c5295a.f16783d);
        }
        int i2 = c5295a.f16781b;
        int m18350a = this.f15956a.m18350a(i2);
        if (m18350a == -1) {
            return null;
        }
        int m18341j = this.f15956a.m18341j(i2, c5295a.f16782c);
        if (m18341j < m18350a) {
            return !this.f15956a.m18337n(i2, m18341j) ? null : m20540k(c5295a.f16780a, i2, m18341j, c5096i0.f15950c, c5295a.f16783d);
        }
        char c5 = c5096i0.f15950c;
        int i3 = (c5 > (-9223372036854775807L) ? 1 : (c5 == (-9223372036854775807L) ? 0 : -1));
        char c6 = c5;
        if (i3 == 0) {
            AbstractC5585y0 abstractC5585y0 = this.f15959d;
            AbstractC5585y0.C5588c c5588c = this.f15957b;
            AbstractC5585y0.C5587b c5587b = this.f15956a;
            Pair<Object, Long> m18361k2 = abstractC5585y0.m18361k(c5588c, c5587b, c5587b.f18176c, -9223372036854775807L, Math.max(0L, m20571l));
            if (m18361k2 == null) {
                return null;
            }
            c6 = ((Long) m18361k2.second).longValue();
        }
        return m20539l(c5295a.f16780a, c6, c5295a.f16783d);
    }

    /* renamed from: j */
    private C5096i0 m20541j(AbstractC5294v.C5295a c5295a, long j, long j2) {
        this.f15959d.m18363h(c5295a.f16780a, this.f15956a);
        if (c5295a.m19842a()) {
            if (this.f15956a.m18337n(c5295a.f16781b, c5295a.f16782c)) {
                return m20540k(c5295a.f16780a, c5295a.f16781b, c5295a.f16782c, j, c5295a.f16783d);
            }
            return null;
        }
        return m20539l(c5295a.f16780a, j2, c5295a.f16783d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* renamed from: k */
    private C5096i0 m20540k(Object obj, int i, int i2, long j, long j2) {
        AbstractC5294v.C5295a c5295a = new AbstractC5294v.C5295a(obj, i, i2, j2);
        return new C5096i0(c5295a, (i2 == this.f15956a.m18342i(i) ? this.f15956a.m18344g() : false) == true ? 1L : 0L, j, -9223372036854775807L, this.f15959d.m18363h(c5295a.f16780a, this.f15956a).m18349b(c5295a.f16781b, c5295a.f16782c), false, false);
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: l */
    private C5096i0 m20539l(Object obj, long j, long j2) {
        int m18347d = this.f15956a.m18347d(j);
        AbstractC5294v.C5295a c5295a = new AbstractC5294v.C5295a(obj, j2, m18347d);
        boolean m20534q = m20534q(c5295a);
        boolean m20533r = m20533r(c5295a, m20534q);
        char m18345f = m18347d != -1 ? this.f15956a.m18345f(m18347d) : (char) 1;
        return new C5096i0(c5295a, j, -9223372036854775807L, m18345f, (m18345f == -9223372036854775807L || m18345f == Long.MIN_VALUE) ? this.f15956a.f18177d : m18345f, m20534q, m20533r);
    }

    /* renamed from: q */
    private boolean m20534q(AbstractC5294v.C5295a c5295a) {
        return !c5295a.m19842a() && c5295a.f16784e == -1;
    }

    /* renamed from: r */
    private boolean m20533r(AbstractC5294v.C5295a c5295a, boolean z) {
        int mo18356b = this.f15959d.mo18356b(c5295a.f16780a);
        return !this.f15959d.m18359n(this.f15959d.m18364f(mo18356b, this.f15956a).f18176c, this.f15957b).f18187h && this.f15959d.m18357r(mo18356b, this.f15956a, this.f15957b, this.f15960e, this.f15961f) && z;
    }

    /* renamed from: w */
    private AbstractC5294v.C5295a m20528w(Object obj, long j, long j2) {
        this.f15959d.m18363h(obj, this.f15956a);
        int m18346e = this.f15956a.m18346e(j);
        return m18346e == -1 ? new AbstractC5294v.C5295a(obj, j2, this.f15956a.m18347d(j)) : new AbstractC5294v.C5295a(obj, m18346e, this.f15956a.m18342i(m18346e), j2);
    }

    /* renamed from: x */
    private long m20527x(Object obj) {
        int mo18356b;
        int i = this.f15959d.m18363h(obj, this.f15956a).f18176c;
        Object obj2 = this.f15966k;
        if (obj2 == null || (mo18356b = this.f15959d.mo18356b(obj2)) == -1 || this.f15959d.m18364f(mo18356b, this.f15956a).f18176c != i) {
            C5094h0 c5094h0 = this.f15962g;
            while (true) {
                C5094h0 c5094h02 = c5094h0;
                if (c5094h02 == null) {
                    C5094h0 c5094h03 = this.f15962g;
                    while (true) {
                        C5094h0 c5094h04 = c5094h03;
                        if (c5094h04 == null) {
                            long j = this.f15958c;
                            this.f15958c = 1 + j;
                            if (this.f15962g == null) {
                                this.f15966k = obj;
                                this.f15967l = j;
                            }
                            return j;
                        }
                        int mo18356b2 = this.f15959d.mo18356b(c5094h04.f15934b);
                        if (mo18356b2 != -1 && this.f15959d.m18364f(mo18356b2, this.f15956a).f18176c == i) {
                            return c5094h04.f15938f.f15948a.f16783d;
                        }
                        c5094h03 = c5094h04.m20573j();
                    }
                } else if (c5094h02.f15934b.equals(obj)) {
                    return c5094h02.f15938f.f15948a.f16783d;
                } else {
                    c5094h0 = c5094h02.m20573j();
                }
            }
        } else {
            return this.f15967l;
        }
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* renamed from: B */
    public boolean m20553B(long j, long j2) {
        C5096i0 c5096i0;
        C5094h0 c5094h0 = this.f15962g;
        C5094h0 c5094h02 = null;
        while (true) {
            boolean z = true;
            if (c5094h0 != null) {
                C5096i0 c5096i02 = c5094h0.f15938f;
                if (c5094h02 != null) {
                    C5096i0 m20543h = m20543h(c5094h02, j);
                    if (m20543h != null && m20547d(c5096i02, m20543h)) {
                        c5096i0 = m20543h;
                    }
                    return !m20530u(c5094h02);
                }
                c5096i0 = m20535p(c5096i02);
                c5094h0.f15938f = c5096i0.m20556a(c5096i02.f15950c);
                if (!m20548c(c5096i02.f15952e, c5096i0.f15952e)) {
                    long j3 = c5096i0.f15952e;
                    boolean z2 = c5094h0 == this.f15963h && (j2 == Long.MIN_VALUE || j2 >= ((j3 > (-9223372036854775807L) ? 1 : (j3 == (-9223372036854775807L) ? 0 : -1)) == 0 ? (char) 65535 : c5094h0.m20557z(j3)));
                    if (m20530u(c5094h0) || z2) {
                        z = false;
                    }
                    return z;
                }
                c5094h02 = c5094h0;
                c5094h0 = c5094h0.m20573j();
            } else {
                return true;
            }
        }
    }

    /* renamed from: C */
    public boolean m20552C(int i) {
        this.f15960e = i;
        return m20554A();
    }

    /* renamed from: D */
    public boolean m20551D(boolean z) {
        this.f15961f = z;
        return m20554A();
    }

    /* renamed from: a */
    public C5094h0 m20550a() {
        C5094h0 c5094h0 = this.f15962g;
        if (c5094h0 == null) {
            return null;
        }
        if (c5094h0 == this.f15963h) {
            this.f15963h = c5094h0.m20573j();
        }
        this.f15962g.m20563t();
        int i = this.f15965j - 1;
        this.f15965j = i;
        if (i == 0) {
            this.f15964i = null;
            C5094h0 c5094h02 = this.f15962g;
            this.f15966k = c5094h02.f15934b;
            this.f15967l = c5094h02.f15938f.f15948a.f16783d;
        }
        C5094h0 m20573j = this.f15962g.m20573j();
        this.f15962g = m20573j;
        return m20573j;
    }

    /* renamed from: b */
    public C5094h0 m20549b() {
        C5094h0 c5094h0 = this.f15963h;
        C5508e.m18910f((c5094h0 == null || c5094h0.m20573j() == null) ? false : true);
        C5094h0 m20573j = this.f15963h.m20573j();
        this.f15963h = m20573j;
        return m20573j;
    }

    /* renamed from: e */
    public void m20546e(boolean z) {
        C5094h0 c5094h0 = this.f15962g;
        if (c5094h0 != null) {
            this.f15966k = z ? c5094h0.f15934b : null;
            this.f15967l = c5094h0.f15938f.f15948a.f16783d;
            m20530u(c5094h0);
            c5094h0.m20563t();
        } else if (!z) {
            this.f15966k = null;
        }
        this.f15962g = null;
        this.f15964i = null;
        this.f15963h = null;
        this.f15965j = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r19 != (-9223372036854775807L)) goto L10;
     */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.C5094h0 m20545f(com.google.android.exoplayer2.AbstractC5315t0[] r12, com.google.android.exoplayer2.trackselection.AbstractC5412h r13, com.google.android.exoplayer2.upstream.AbstractC5472e r14, com.google.android.exoplayer2.source.AbstractC5294v r15, com.google.android.exoplayer2.C5096i0 r16, com.google.android.exoplayer2.trackselection.C5414i r17) {
        /*
            r11 = this;
            r0 = r11
            com.google.android.exoplayer2.h0 r0 = r0.f15964i
            r18 = r0
            r0 = r18
            if (r0 != 0) goto L2f
            r0 = r16
            com.google.android.exoplayer2.source.v$a r0 = r0.f15948a
            boolean r0 = r0.m19842a()
            if (r0 == 0) goto L29
            r0 = r16
            long r0 = r0.f15950c
            r19 = r0
            r0 = r19
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L29
            goto L47
        L29:
            r0 = 0
            r19 = r0
            goto L47
        L2f:
            r0 = r18
            long r0 = r0.m20571l()
            r1 = r11
            com.google.android.exoplayer2.h0 r1 = r1.f15964i
            com.google.android.exoplayer2.i0 r1 = r1.f15938f
            long r1 = r1.f15952e
            long r0 = r0 + r1
            r1 = r16
            long r1 = r1.f15949b
            long r0 = r0 - r1
            r19 = r0
        L47:
            com.google.android.exoplayer2.h0 r0 = new com.google.android.exoplayer2.h0
            r1 = r0
            r2 = r12
            r3 = r19
            r4 = r13
            r5 = r14
            r6 = r15
            r7 = r16
            r8 = r17
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r12 = r0
            r0 = r11
            com.google.android.exoplayer2.h0 r0 = r0.f15964i
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L6b
            r0 = r13
            r1 = r12
            r0.m20560w(r1)
            goto L75
        L6b:
            r0 = r11
            r1 = r12
            r0.f15962g = r1
            r0 = r11
            r1 = r12
            r0.f15963h = r1
        L75:
            r0 = r11
            r1 = 0
            r0.f15966k = r1
            r0 = r11
            r1 = r12
            r0.f15964i = r1
            r0 = r11
            r1 = r11
            int r1 = r1.f15965j
            r2 = 1
            int r1 = r1 + r2
            r0.f15965j = r1
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C5098j0.m20545f(com.google.android.exoplayer2.t0[], com.google.android.exoplayer2.trackselection.h, com.google.android.exoplayer2.upstream.e, com.google.android.exoplayer2.source.v, com.google.android.exoplayer2.i0, com.google.android.exoplayer2.trackselection.i):com.google.android.exoplayer2.h0");
    }

    /* renamed from: i */
    public C5094h0 m20542i() {
        return this.f15964i;
    }

    /* renamed from: m */
    public C5096i0 m20538m(long j, C5100k0 c5100k0) {
        C5094h0 c5094h0 = this.f15964i;
        return c5094h0 == null ? m20544g(c5100k0) : m20543h(c5094h0, j);
    }

    /* renamed from: n */
    public C5094h0 m20537n() {
        return this.f15962g;
    }

    /* renamed from: o */
    public C5094h0 m20536o() {
        return this.f15963h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x005a, code lost:
        if (r0 == Long.MIN_VALUE) goto L9;
     */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.C5096i0 m20535p(com.google.android.exoplayer2.C5096i0 r15) {
        /*
            r14 = this;
            r0 = r15
            com.google.android.exoplayer2.source.v$a r0 = r0.f15948a
            r16 = r0
            r0 = r14
            r1 = r16
            boolean r0 = r0.m20534q(r1)
            r17 = r0
            r0 = r14
            r1 = r16
            r2 = r17
            boolean r0 = r0.m20533r(r1, r2)
            r18 = r0
            r0 = r14
            com.google.android.exoplayer2.y0 r0 = r0.f15959d
            r1 = r15
            com.google.android.exoplayer2.source.v$a r1 = r1.f15948a
            java.lang.Object r1 = r1.f16780a
            r2 = r14
            com.google.android.exoplayer2.y0$b r2 = r2.f15956a
            com.google.android.exoplayer2.y0$b r0 = r0.m18363h(r1, r2)
            r0 = r16
            boolean r0 = r0.m19842a()
            if (r0 == 0) goto L41
            r0 = r14
            com.google.android.exoplayer2.y0$b r0 = r0.f15956a
            r1 = r16
            int r1 = r1.f16781b
            r2 = r16
            int r2 = r2.f16782c
            long r0 = r0.m18349b(r1, r2)
            r19 = r0
        L3e:
            goto L69
        L41:
            r0 = r15
            long r0 = r0.f15951d
            r21 = r0
            r0 = r21
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L5d
            r0 = r21
            r19 = r0
            r0 = r21
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3e
        L5d:
            r0 = r14
            com.google.android.exoplayer2.y0$b r0 = r0.f15956a
            long r0 = r0.m18343h()
            r19 = r0
            goto L3e
        L69:
            com.google.android.exoplayer2.i0 r0 = new com.google.android.exoplayer2.i0
            r1 = r0
            r2 = r16
            r3 = r15
            long r3 = r3.f15949b
            r4 = r15
            long r4 = r4.f15950c
            r5 = r15
            long r5 = r5.f15951d
            r6 = r19
            r7 = r17
            r8 = r18
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.C5098j0.m20535p(com.google.android.exoplayer2.i0):com.google.android.exoplayer2.i0");
    }

    /* renamed from: s */
    public boolean m20532s(AbstractC5292u abstractC5292u) {
        C5094h0 c5094h0 = this.f15964i;
        return c5094h0 != null && c5094h0.f15933a == abstractC5292u;
    }

    /* renamed from: t */
    public void m20531t(long j) {
        C5094h0 c5094h0 = this.f15964i;
        if (c5094h0 != null) {
            c5094h0.m20564s(j);
        }
    }

    /* renamed from: u */
    public boolean m20530u(C5094h0 c5094h0) {
        C5508e.m18910f(c5094h0 != null);
        this.f15964i = c5094h0;
        boolean z = false;
        while (c5094h0.m20573j() != null) {
            c5094h0 = c5094h0.m20573j();
            if (c5094h0 == this.f15963h) {
                this.f15963h = this.f15962g;
                z = true;
            }
            c5094h0.m20563t();
            this.f15965j--;
        }
        this.f15964i.m20560w(null);
        return z;
    }

    /* renamed from: v */
    public AbstractC5294v.C5295a m20529v(Object obj, long j) {
        return m20528w(obj, j, m20527x(obj));
    }

    /* renamed from: y */
    public void m20526y(AbstractC5585y0 abstractC5585y0) {
        this.f15959d = abstractC5585y0;
    }

    /* renamed from: z */
    public boolean m20525z() {
        C5094h0 c5094h0 = this.f15964i;
        return c5094h0 == null || (!c5094h0.f15938f.f15954g && c5094h0.m20566q() && this.f15964i.f15938f.f15952e != -9223372036854775807L && this.f15965j < 100);
    }
}
