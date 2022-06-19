package p1727n3.p1874y.p1876b.p1877a;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Pair;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.p1896o0.C27348a;
/* renamed from: n3.y.b.a.b0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/b0.class */
public final class C27072b0 {

    /* renamed from: c */
    public long f75646c;

    /* renamed from: e */
    public int f75648e;

    /* renamed from: f */
    public boolean f75649f;

    /* renamed from: g */
    public C27464z f75650g;

    /* renamed from: h */
    public C27464z f75651h;

    /* renamed from: i */
    public C27464z f75652i;

    /* renamed from: j */
    public int f75653j;

    /* renamed from: k */
    public Object f75654k;

    /* renamed from: l */
    public long f75655l;

    /* renamed from: a */
    public final AbstractC27096l0.C27098b f75644a = new AbstractC27096l0.C27098b();

    /* renamed from: b */
    public final AbstractC27096l0.C27099c f75645b = new AbstractC27096l0.C27099c();

    /* renamed from: d */
    public AbstractC27096l0 f75647d = AbstractC27096l0.f75737a;

    /* renamed from: a */
    public C27464z m961a() {
        C27464z c27464z = this.f75650g;
        if (c27464z == null) {
            return null;
        }
        if (c27464z == this.f75651h) {
            this.f75651h = c27464z.f77303k;
        }
        c27464z.m237g();
        int i = this.f75653j - 1;
        this.f75653j = i;
        if (i == 0) {
            this.f75652i = null;
            C27464z c27464z2 = this.f75650g;
            this.f75654k = c27464z2.f77294b;
            this.f75655l = c27464z2.f77298f.f75637a.f77040d;
        }
        C27464z c27464z3 = this.f75650g.f77303k;
        this.f75650g = c27464z3;
        return c27464z3;
    }

    /* renamed from: b */
    public void m960b(boolean z) {
        C27464z c27464z = this.f75650g;
        if (c27464z != null) {
            this.f75654k = z ? c27464z.f77294b : null;
            this.f75655l = c27464z.f77298f.f75637a.f77040d;
            m952j(c27464z);
            c27464z.m237g();
        } else if (!z) {
            this.f75654k = null;
        }
        this.f75650g = null;
        this.f75652i = null;
        this.f75651h = null;
        this.f75653j = 0;
    }

    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* renamed from: c */
    public final C27071a0 m959c(C27464z c27464z, long j) {
        char c;
        Object obj;
        char c2;
        C27071a0 c27071a0 = c27464z.f77298f;
        long j2 = (c27464z.f77306n + c27071a0.f75641e) - j;
        boolean z = false;
        if (c27071a0.f75642f) {
            int m913d = this.f75647d.m913d(this.f75647d.mo541b(c27071a0.f75637a.f77037a), this.f75644a, this.f75645b, this.f75648e, this.f75649f);
            if (m913d == -1) {
                return null;
            }
            int i = this.f75647d.mo538g(m913d, this.f75644a, true).f75740c;
            Object obj2 = this.f75644a.f75739b;
            char c3 = c27071a0.f75637a.f77040d;
            if (this.f75647d.m909m(i, this.f75645b).f75750g == m913d) {
                Pair<Object, Long> m910k = this.f75647d.m910k(this.f75645b, this.f75644a, i, -9223372036854775807L, Math.max(0L, j2));
                if (m910k == null) {
                    return null;
                }
                Object obj3 = m910k.first;
                c = ((Long) m910k.second).longValue();
                C27464z c27464z2 = c27464z.f77303k;
                if (c27464z2 == null || !c27464z2.f77294b.equals(obj3)) {
                    char c4 = this.f75646c;
                    this.f75646c = 1 + c4;
                    c2 = c4;
                } else {
                    c2 = c27464z2.f77298f.f75637a.f77040d;
                }
                z = true;
                obj = obj3;
                c3 = c2;
            } else {
                obj = obj2;
                c = 0;
            }
            return m958d(m950l(obj, c, c3), z ? 1L : 0L, c);
        }
        AbstractC27371t.C27372a c27372a = c27071a0.f75637a;
        this.f75647d.mo537h(c27372a.f77037a, this.f75644a);
        if (!c27372a.m437b()) {
            int m903c = this.f75644a.m903c(c27071a0.f75640d);
            if (m903c == -1) {
                return m956f(c27372a.f77037a, c27071a0.f75641e, c27372a.f77040d);
            }
            int m902d = this.f75644a.m902d(m903c);
            return !this.f75644a.m901e(m903c, m902d) ? null : m957e(c27372a.f77037a, m903c, m902d, c27071a0.f75641e, c27372a.f77040d);
        }
        int i2 = c27372a.f77038b;
        C27348a.C27349a[] c27349aArr = this.f75644a.f75743f.f76975c;
        int i3 = c27349aArr[i2].f76977a;
        if (i3 == -1) {
            return null;
        }
        int m470a = c27349aArr[i2].m470a(c27372a.f77039c);
        if (m470a < i3) {
            return !this.f75644a.m901e(i2, m470a) ? null : m957e(c27372a.f77037a, i2, m470a, c27071a0.f75639c, c27372a.f77040d);
        }
        char c5 = c27071a0.f75639c;
        int i4 = (c5 > (-9223372036854775807L) ? 1 : (c5 == (-9223372036854775807L) ? 0 : -1));
        char c6 = c5;
        if (i4 == 0) {
            AbstractC27096l0 abstractC27096l0 = this.f75647d;
            AbstractC27096l0.C27099c c27099c = this.f75645b;
            AbstractC27096l0.C27098b c27098b = this.f75644a;
            Pair<Object, Long> m910k2 = abstractC27096l0.m910k(c27099c, c27098b, c27098b.f75740c, -9223372036854775807L, Math.max(0L, j2));
            if (m910k2 == null) {
                return null;
            }
            c6 = ((Long) m910k2.second).longValue();
        }
        return m956f(c27372a.f77037a, c6, c27372a.f77040d);
    }

    /* renamed from: d */
    public final C27071a0 m958d(AbstractC27371t.C27372a c27372a, long j, long j2) {
        this.f75647d.mo537h(c27372a.f77037a, this.f75644a);
        if (c27372a.m437b()) {
            if (this.f75644a.m901e(c27372a.f77038b, c27372a.f77039c)) {
                return m957e(c27372a.f77037a, c27372a.f77038b, c27372a.f77039c, j, c27372a.f77040d);
            }
            return null;
        }
        return m956f(c27372a.f77037a, j2, c27372a.f77040d);
    }

    /* renamed from: e */
    public final C27071a0 m957e(Object obj, int i, int i2, long j, long j2) {
        AbstractC27371t.C27372a c27372a = new AbstractC27371t.C27372a(obj, i, i2, j2);
        long m905a = this.f75647d.mo537h(obj, this.f75644a).m905a(c27372a.f77038b, c27372a.f77039c);
        if (i2 == this.f75644a.f75743f.f76975c[i].m470a(-1)) {
            Objects.requireNonNull(this.f75644a.f75743f);
        }
        return new C27071a0(c27372a, 0L, j, -9223372036854775807L, m905a, false, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* renamed from: f */
    public final C27071a0 m956f(Object obj, long j, long j2) {
        int m904b = this.f75644a.m904b(j);
        AbstractC27371t.C27372a c27372a = new AbstractC27371t.C27372a(obj, j2, m904b);
        boolean z = !c27372a.m437b() && c27372a.f77041e == -1;
        boolean m954h = m954h(c27372a, z);
        char c = m904b != -1 ? this.f75644a.f75743f.f76974b[m904b] : (char) 1;
        return new C27071a0(c27372a, j, -9223372036854775807L, c, (c == -9223372036854775807L || c == Long.MIN_VALUE) ? this.f75644a.f75741d : c, z, m954h);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x006a, code lost:
        if (r0 == Long.MIN_VALUE) goto L15;
     */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p1727n3.p1874y.p1876b.p1877a.C27071a0 m955g(p1727n3.p1874y.p1876b.p1877a.C27071a0 r15) {
        /*
            r14 = this;
            r0 = r15
            n3.y.b.a.t0.t$a r0 = r0.f75637a
            r16 = r0
            r0 = r16
            boolean r0 = r0.m437b()
            if (r0 != 0) goto L19
            r0 = r16
            int r0 = r0.f77041e
            r1 = -1
            if (r0 != r1) goto L19
            r0 = 1
            r17 = r0
            goto L1b
        L19:
            r0 = 0
            r17 = r0
        L1b:
            r0 = r14
            r1 = r16
            r2 = r17
            boolean r0 = r0.m954h(r1, r2)
            r18 = r0
            r0 = r14
            n3.y.b.a.l0 r0 = r0.f75647d
            r1 = r15
            n3.y.b.a.t0.t$a r1 = r1.f75637a
            java.lang.Object r1 = r1.f77037a
            r2 = r14
            n3.y.b.a.l0$b r2 = r2.f75644a
            n3.y.b.a.l0$b r0 = r0.mo537h(r1, r2)
            r0 = r16
            boolean r0 = r0.m437b()
            if (r0 == 0) goto L51
            r0 = r14
            n3.y.b.a.l0$b r0 = r0.f75644a
            r1 = r16
            int r1 = r1.f77038b
            r2 = r16
            int r2 = r2.f77039c
            long r0 = r0.m905a(r1, r2)
            r19 = r0
        L4e:
            goto L79
        L51:
            r0 = r15
            long r0 = r0.f75640d
            r21 = r0
            r0 = r21
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6d
            r0 = r21
            r19 = r0
            r0 = r21
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L4e
        L6d:
            r0 = r14
            n3.y.b.a.l0$b r0 = r0.f75644a
            long r0 = r0.f75741d
            r19 = r0
            goto L4e
        L79:
            n3.y.b.a.a0 r0 = new n3.y.b.a.a0
            r1 = r0
            r2 = r16
            r3 = r15
            long r3 = r3.f75638b
            r4 = r15
            long r4 = r4.f75639c
            r5 = r15
            long r5 = r5.f75640d
            r6 = r19
            r7 = r17
            r8 = r18
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.C27072b0.m955g(n3.y.b.a.a0):n3.y.b.a.a0");
    }

    /* renamed from: h */
    public final boolean m954h(AbstractC27371t.C27372a c27372a, boolean z) {
        boolean z2;
        int mo541b = this.f75647d.mo541b(c27372a.f77037a);
        if (!this.f75647d.m909m(this.f75647d.m912f(mo541b, this.f75644a).f75740c, this.f75645b).f75749f) {
            if ((this.f75647d.m913d(mo541b, this.f75644a, this.f75645b, this.f75648e, this.f75649f) == -1) && z) {
                z2 = true;
                return z2;
            }
        }
        z2 = false;
        return z2;
    }

    /* renamed from: i */
    public void m953i(long j) {
        C27464z c27464z = this.f75652i;
        if (c27464z != null) {
            MediaSessionCompat.m43184y(c27464z.m238f());
            if (!c27464z.f77296d) {
                return;
            }
            c27464z.f77293a.c(j - c27464z.f77306n);
        }
    }

    /* renamed from: j */
    public boolean m952j(C27464z c27464z) {
        MediaSessionCompat.m43184y(c27464z != null);
        this.f75652i = c27464z;
        boolean z = false;
        while (true) {
            c27464z = c27464z.f77303k;
            if (c27464z == null) {
                break;
            }
            if (c27464z == this.f75651h) {
                this.f75651h = this.f75650g;
                z = true;
            }
            c27464z.m237g();
            this.f75653j--;
        }
        C27464z c27464z2 = this.f75652i;
        if (c27464z2.f77303k != null) {
            c27464z2.m242b();
            c27464z2.f77303k = null;
            c27464z2.m241c();
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* renamed from: k */
    public AbstractC27371t.C27372a m951k(Object obj, long j) {
        char c;
        int mo541b;
        int i = this.f75647d.mo537h(obj, this.f75644a).f75740c;
        Object obj2 = this.f75654k;
        if (obj2 == null || (mo541b = this.f75647d.mo541b(obj2)) == -1 || this.f75647d.m912f(mo541b, this.f75644a).f75740c != i) {
            C27464z c27464z = this.f75650g;
            while (true) {
                C27464z c27464z2 = c27464z;
                if (c27464z2 == null) {
                    C27464z c27464z3 = this.f75650g;
                    while (true) {
                        C27464z c27464z4 = c27464z3;
                        if (c27464z4 == null) {
                            c = this.f75646c;
                            this.f75646c = 1 + c;
                            break;
                        }
                        int mo541b2 = this.f75647d.mo541b(c27464z4.f77294b);
                        if (mo541b2 != -1 && this.f75647d.m912f(mo541b2, this.f75644a).f75740c == i) {
                            c = c27464z4.f77298f.f75637a.f77040d;
                            break;
                        }
                        c27464z3 = c27464z4.f77303k;
                    }
                } else if (c27464z2.f77294b.equals(obj)) {
                    c = c27464z2.f77298f.f75637a.f77040d;
                    break;
                } else {
                    c27464z = c27464z2.f77303k;
                }
            }
        } else {
            c = this.f75655l;
        }
        return m950l(obj, j, c);
    }

    /* renamed from: l */
    public final AbstractC27371t.C27372a m950l(Object obj, long j, long j2) {
        this.f75647d.mo537h(obj, this.f75644a);
        int m903c = this.f75644a.m903c(j);
        return m903c == -1 ? new AbstractC27371t.C27372a(obj, j2, this.f75644a.m904b(j)) : new AbstractC27371t.C27372a(obj, m903c, this.f75644a.m902d(m903c), j2);
    }

    /* renamed from: m */
    public final boolean m949m() {
        C27464z c27464z;
        C27464z c27464z2 = this.f75650g;
        if (c27464z2 == null) {
            return true;
        }
        int mo541b = this.f75647d.mo541b(c27464z2.f77294b);
        while (true) {
            mo541b = this.f75647d.m913d(mo541b, this.f75644a, this.f75645b, this.f75648e, this.f75649f);
            while (true) {
                c27464z = c27464z2.f77303k;
                if (c27464z == null || c27464z2.f77298f.f75642f) {
                    break;
                }
                c27464z2 = c27464z;
            }
            if (mo541b == -1 || c27464z == null || this.f75647d.mo541b(c27464z.f77294b) != mo541b) {
                break;
            }
            c27464z2 = c27464z;
        }
        boolean m952j = m952j(c27464z2);
        c27464z2.f77298f = m955g(c27464z2.f77298f);
        return !m952j;
    }
}
