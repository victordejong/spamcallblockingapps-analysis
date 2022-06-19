package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.util.Pair;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.r5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r5.class */
public final class C6911r5 {

    /* renamed from: a */
    private final C6728m7 f28769a = new C6728m7();

    /* renamed from: b */
    private final C6802o7 f28770b = new C6802o7();

    /* renamed from: c */
    private final rz0 f28771c;

    /* renamed from: d */
    private final Handler f28772d;

    /* renamed from: e */
    private long f28773e;

    /* renamed from: f */
    private int f28774f;

    /* renamed from: g */
    private boolean f28775g;

    /* renamed from: h */
    private C6800o5 f28776h;

    /* renamed from: i */
    private C6800o5 f28777i;

    /* renamed from: j */
    private C6800o5 f28778j;

    /* renamed from: k */
    private int f28779k;

    /* renamed from: l */
    private Object f28780l;

    /* renamed from: m */
    private long f28781m;

    public C6911r5(rz0 rz0Var, Handler handler) {
        this.f28771c = rz0Var;
        this.f28772d = handler;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* renamed from: A */
    private final C6837p5 m11721A(AbstractC6839p7 abstractC6839p7, Object obj, int i, int i2, long j, long j2) {
        mk3 mk3Var = new mk3(obj, i, i2, j2);
        long m13347h = abstractC6839p7.mo12360o(mk3Var.f20100a, this.f28769a).m13347h(mk3Var.f20101b, mk3Var.f20102c);
        if (i2 == this.f28769a.m13352c(i)) {
            this.f28769a.m13346i();
        }
        this.f28769a.m13345j(mk3Var.f20101b);
        ?? r23 = false;
        if (m13347h != -9223372036854775807L) {
            r23 = false;
            if (m13347h <= 0) {
                r23 = Math.max(0L, (-1) + m13347h);
            }
        }
        return new C6837p5(mk3Var, r23 == true ? 1L : 0L, j, -9223372036854775807L, m13347h, false, false, false, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: B */
    private final C6837p5 m11720B(AbstractC6839p7 abstractC6839p7, Object obj, long j, long j2, long j3) {
        char c;
        abstractC6839p7.mo12360o(obj, this.f28769a);
        int m13349f = this.f28769a.m13349f(j);
        mk3 mk3Var = new mk3(obj, j3, m13349f);
        boolean m11716c = m11716c(mk3Var);
        boolean m11719C = m11719C(abstractC6839p7, mk3Var);
        boolean m11718a = m11718a(abstractC6839p7, mk3Var, m11716c);
        if (m13349f != -1) {
            this.f28769a.m13345j(m13349f);
        }
        if (m13349f != -1) {
            this.f28769a.m13353b(m13349f);
            c = 0;
        } else {
            c = 1;
        }
        char c2 = c != -9223372036854775807L ? c : this.f28769a.f26454e;
        char c3 = j;
        if (c2 != -9223372036854775807L) {
            c3 = j;
            if (j >= c2) {
                c3 = Math.max(0L, 65535 + c2);
            }
        }
        return new C6837p5(mk3Var, c3, j2, c, c2, false, m11716c, m11719C, m11718a);
    }

    /* renamed from: C */
    private final boolean m11719C(AbstractC6839p7 abstractC6839p7, mk3 mk3Var) {
        if (!m11716c(mk3Var)) {
            return false;
        }
        return abstractC6839p7.mo12368f(abstractC6839p7.mo12360o(mk3Var.f20100a, this.f28769a).f26453d, this.f28770b, 0L).f27467r == abstractC6839p7.mo12366i(mk3Var.f20100a);
    }

    /* renamed from: a */
    private final boolean m11718a(AbstractC6839p7 abstractC6839p7, mk3 mk3Var, boolean z) {
        int mo12366i = abstractC6839p7.mo12366i(mk3Var.f20100a);
        return !abstractC6839p7.mo12368f(abstractC6839p7.mo12367h(mo12366i, this.f28769a, false).f26453d, this.f28770b, 0L).f27460k && abstractC6839p7.m12363l(mo12366i, this.f28769a, this.f28770b, this.f28774f, this.f28775g) == -1 && z;
    }

    /* renamed from: b */
    private final long m11717b(AbstractC6839p7 abstractC6839p7, Object obj, int i) {
        abstractC6839p7.mo12360o(obj, this.f28769a);
        this.f28769a.m13353b(i);
        this.f28769a.m13344k(i);
        return 0L;
    }

    /* renamed from: c */
    private static final boolean m11716c(mk3 mk3Var) {
        return !mk3Var.m16491b() && mk3Var.f20104e == -1;
    }

    /* renamed from: v */
    private final void m11697v() {
        ax2 zzu = zzfoj.zzu();
        C6800o5 c6800o5 = this.f28776h;
        while (true) {
            C6800o5 c6800o52 = c6800o5;
            if (c6800o52 == null) {
                break;
            }
            zzu.m16468f(c6800o52.f27421f.f27870a);
            c6800o5 = c6800o52.m12736o();
        }
        C6800o5 c6800o53 = this.f28777i;
        this.f28772d.post(new Runnable(this, zzu, c6800o53 == null ? null : c6800o53.f27421f.f27870a) { // from class: com.google.android.gms.internal.ads.q5

            /* renamed from: d */
            private final C6911r5 f28313d;

            /* renamed from: e */
            private final ax2 f28314e;

            /* renamed from: f */
            private final mk3 f28315f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28313d = this;
                this.f28314e = zzu;
                this.f28315f = mk3Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28313d.m11699t(this.f28314e, this.f28315f);
            }
        });
    }

    /* renamed from: w */
    private static mk3 m11696w(AbstractC6839p7 abstractC6839p7, Object obj, long j, long j2, C6728m7 c6728m7) {
        abstractC6839p7.mo12360o(obj, c6728m7);
        int m13350e = c6728m7.m13350e(j);
        return m13350e == -1 ? new mk3(obj, j2, c6728m7.m13349f(j)) : new mk3(obj, m13350e, c6728m7.m13352c(m13350e), j2);
    }

    /* renamed from: x */
    private final boolean m11695x(AbstractC6839p7 abstractC6839p7) {
        C6800o5 c6800o5 = this.f28776h;
        if (c6800o5 == null) {
            return true;
        }
        int mo12366i = abstractC6839p7.mo12366i(c6800o5.f27417b);
        while (true) {
            mo12366i = abstractC6839p7.m12363l(mo12366i, this.f28769a, this.f28770b, this.f28774f, this.f28775g);
            while (c6800o5.m12736o() != null && !c6800o5.f27421f.f27876g) {
                c6800o5 = c6800o5.m12736o();
            }
            C6800o5 m12736o = c6800o5.m12736o();
            if (mo12366i == -1 || m12736o == null || abstractC6839p7.mo12366i(m12736o.f27417b) != mo12366i) {
                break;
            }
            c6800o5 = m12736o;
        }
        boolean m11704o = m11704o(c6800o5);
        c6800o5.f27421f = m11701r(abstractC6839p7, c6800o5.f27421f);
        return !m11704o;
    }

    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* renamed from: y */
    private final C6837p5 m11694y(AbstractC6839p7 abstractC6839p7, C6800o5 c6800o5, long j) {
        char c;
        Object obj;
        char c2;
        C6837p5 c6837p5 = c6800o5.f27421f;
        long m12750a = (c6800o5.m12750a() + c6837p5.f27874e) - j;
        if (!c6837p5.f27876g) {
            mk3 mk3Var = c6837p5.f27870a;
            abstractC6839p7.mo12360o(mk3Var.f20100a, this.f28769a);
            if (!mk3Var.m16491b()) {
                int m13352c = this.f28769a.m13352c(mk3Var.f20104e);
                if (m13352c != this.f28769a.m13348g(mk3Var.f20104e)) {
                    return m11721A(abstractC6839p7, mk3Var.f20100a, mk3Var.f20104e, m13352c, c6837p5.f27874e, mk3Var.f20103d);
                }
                m11717b(abstractC6839p7, mk3Var.f20100a, mk3Var.f20104e);
                return m11720B(abstractC6839p7, mk3Var.f20100a, 0L, c6837p5.f27874e, mk3Var.f20103d);
            }
            int i = mk3Var.f20101b;
            if (this.f28769a.m13348g(i) == -1) {
                return null;
            }
            int m13351d = this.f28769a.m13351d(i, mk3Var.f20102c);
            if (m13351d < 0) {
                return m11721A(abstractC6839p7, mk3Var.f20100a, i, m13351d, c6837p5.f27872c, mk3Var.f20103d);
            }
            ?? r0 = c6837p5.f27872c;
            char c3 = r0;
            if (r0 == -9223372036854775807L) {
                C6802o7 c6802o7 = this.f28770b;
                C6728m7 c6728m7 = this.f28769a;
                Pair<Object, Long> m12361n = abstractC6839p7.m12361n(c6802o7, c6728m7, c6728m7.f26453d, -9223372036854775807L, Math.max(0L, m12750a));
                if (m12361n == null) {
                    return null;
                }
                c3 = ((Long) m12361n.second).longValue();
            }
            m11717b(abstractC6839p7, mk3Var.f20100a, mk3Var.f20101b);
            return m11720B(abstractC6839p7, mk3Var.f20100a, Math.max(0L, (long) c3), c6837p5.f27872c, mk3Var.f20103d);
        }
        boolean z = false;
        int m12363l = abstractC6839p7.m12363l(abstractC6839p7.mo12366i(c6837p5.f27870a.f20100a), this.f28769a, this.f28770b, this.f28774f, this.f28775g);
        if (m12363l == -1) {
            return null;
        }
        int i2 = abstractC6839p7.mo12367h(m12363l, this.f28769a, true).f26453d;
        Object obj2 = this.f28769a.f26452c;
        char c4 = c6837p5.f27870a.f20103d;
        if (abstractC6839p7.mo12368f(i2, this.f28770b, 0L).f27466q == m12363l) {
            Pair<Object, Long> m12361n2 = abstractC6839p7.m12361n(this.f28770b, this.f28769a, i2, -9223372036854775807L, Math.max(0L, m12750a));
            if (m12361n2 == null) {
                return null;
            }
            Object obj3 = m12361n2.first;
            c = ((Long) m12361n2.second).longValue();
            C6800o5 m12736o = c6800o5.m12736o();
            if (m12736o == null || !m12736o.f27417b.equals(obj3)) {
                char c5 = this.f28773e;
                this.f28773e = 1 + c5;
                c2 = c5;
            } else {
                c2 = m12736o.f27421f.f27870a.f20103d;
            }
            z = true;
            obj = obj3;
            c4 = c2;
        } else {
            c = 0;
            obj = obj2;
        }
        return m11693z(abstractC6839p7, m11696w(abstractC6839p7, obj, c, c4, this.f28769a), z ? 1L : 0L, c);
    }

    /* renamed from: z */
    private final C6837p5 m11693z(AbstractC6839p7 abstractC6839p7, mk3 mk3Var, long j, long j2) {
        abstractC6839p7.mo12360o(mk3Var.f20100a, this.f28769a);
        return mk3Var.m16491b() ? m11721A(abstractC6839p7, mk3Var.f20100a, mk3Var.f20101b, mk3Var.f20102c, j, mk3Var.f20103d) : m11720B(abstractC6839p7, mk3Var.f20100a, j2, j, mk3Var.f20103d);
    }

    /* renamed from: d */
    public final boolean m11715d(AbstractC6839p7 abstractC6839p7, int i) {
        this.f28774f = i;
        return m11695x(abstractC6839p7);
    }

    /* renamed from: e */
    public final boolean m11714e(AbstractC6839p7 abstractC6839p7, boolean z) {
        this.f28775g = z;
        return m11695x(abstractC6839p7);
    }

    /* renamed from: f */
    public final boolean m11713f(lk3 lk3Var) {
        C6800o5 c6800o5 = this.f28778j;
        return c6800o5 != null && c6800o5.f27416a == lk3Var;
    }

    /* renamed from: g */
    public final void m11712g(long j) {
        C6800o5 c6800o5 = this.f28778j;
        if (c6800o5 != null) {
            c6800o5.m12743h(j);
        }
    }

    /* renamed from: h */
    public final boolean m11711h() {
        C6800o5 c6800o5 = this.f28778j;
        boolean z = true;
        if (c6800o5 != null) {
            if (c6800o5.f27421f.f27878i || !c6800o5.m12747d() || this.f28778j.f27421f.f27874e == -9223372036854775807L) {
                z = false;
            } else if (this.f28779k >= 100) {
                return false;
            } else {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: i */
    public final C6837p5 m11710i(long j, C6318b6 c6318b6) {
        C6800o5 c6800o5 = this.f28778j;
        return c6800o5 == null ? m11693z(c6318b6.f20278b, c6318b6.f20279c, c6318b6.f20280d, c6318b6.f20296t) : m11694y(c6318b6.f20278b, c6800o5, j);
    }

    /* renamed from: j */
    public final C6800o5 m11709j() {
        return this.f28778j;
    }

    /* renamed from: k */
    public final C6800o5 m11708k() {
        return this.f28776h;
    }

    /* renamed from: l */
    public final C6800o5 m11707l() {
        return this.f28777i;
    }

    /* renamed from: m */
    public final C6800o5 m11706m() {
        C6800o5 c6800o5 = this.f28777i;
        boolean z = false;
        if (c6800o5 != null) {
            z = false;
            if (c6800o5.m12736o() != null) {
                z = true;
            }
        }
        C7173y8.m8895d(z);
        this.f28777i = this.f28777i.m12736o();
        m11697v();
        return this.f28777i;
    }

    /* renamed from: n */
    public final C6800o5 m11705n() {
        C6800o5 c6800o5 = this.f28776h;
        if (c6800o5 == null) {
            return null;
        }
        if (c6800o5 == this.f28777i) {
            this.f28777i = c6800o5.m12736o();
        }
        this.f28776h.m12738m();
        int i = this.f28779k - 1;
        this.f28779k = i;
        if (i == 0) {
            this.f28778j = null;
            C6800o5 c6800o52 = this.f28776h;
            this.f28780l = c6800o52.f27417b;
            this.f28781m = c6800o52.f27421f.f27870a.f20103d;
        }
        this.f28776h = this.f28776h.m12736o();
        m11697v();
        return this.f28776h;
    }

    /* renamed from: o */
    public final boolean m11704o(C6800o5 c6800o5) {
        C7173y8.m8895d(c6800o5 != null);
        if (c6800o5.equals(this.f28778j)) {
            return false;
        }
        this.f28778j = c6800o5;
        boolean z = false;
        while (c6800o5.m12736o() != null) {
            c6800o5 = c6800o5.m12736o();
            if (c6800o5 == this.f28777i) {
                this.f28777i = this.f28776h;
                z = true;
            }
            c6800o5.m12738m();
            this.f28779k--;
        }
        this.f28778j.m12737n(null);
        m11697v();
        return z;
    }

    /* renamed from: p */
    public final void m11703p() {
        if (this.f28779k == 0) {
            return;
        }
        C6800o5 c6800o5 = this.f28776h;
        C7173y8.m8894e(c6800o5);
        this.f28780l = c6800o5.f27417b;
        this.f28781m = c6800o5.f27421f.f27870a.f20103d;
        while (c6800o5 != null) {
            c6800o5.m12738m();
            c6800o5 = c6800o5.m12736o();
        }
        this.f28776h = null;
        this.f28778j = null;
        this.f28777i = null;
        this.f28779k = 0;
        m11697v();
    }

    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* renamed from: q */
    public final boolean m11702q(AbstractC6839p7 abstractC6839p7, long j, long j2) {
        C6837p5 c6837p5;
        boolean z;
        C6800o5 c6800o5 = null;
        for (C6800o5 c6800o52 = this.f28776h; c6800o52 != null; c6800o52 = c6800o52.m12736o()) {
            C6837p5 c6837p52 = c6800o52.f27421f;
            if (c6800o5 == null) {
                c6837p5 = m11701r(abstractC6839p7, c6837p52);
            } else {
                C6837p5 m11694y = m11694y(abstractC6839p7, c6800o5, j);
                if (m11694y == null) {
                    return !m11704o(c6800o5);
                } else if (c6837p52.f27871b != m11694y.f27871b || !c6837p52.f27870a.equals(m11694y.f27870a)) {
                    return !m11704o(c6800o5);
                } else {
                    c6837p5 = m11694y;
                }
            }
            c6800o52.f27421f = c6837p5.m12378b(c6837p52.f27872c);
            long j3 = c6837p52.f27874e;
            long j4 = c6837p5.f27874e;
            if (j3 != -9223372036854775807L && j3 != j4) {
                c6800o52.m12733r();
                long j5 = c6837p5.f27874e;
                char m12750a = j5 == -9223372036854775807L ? (char) 65535 : j5 + c6800o52.m12750a();
                if (c6800o52 == this.f28777i) {
                    boolean z2 = c6800o52.f27421f.f27875f;
                    if (j2 == Long.MIN_VALUE || j2 >= m12750a) {
                        z = true;
                        return !m11704o(c6800o52) && !z;
                    }
                }
                z = false;
                if (!m11704o(c6800o52)) {
                    return false;
                }
            }
            c6800o5 = c6800o52;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* renamed from: r */
    public final C6837p5 m11701r(AbstractC6839p7 abstractC6839p7, C6837p5 c6837p5) {
        char c;
        int i;
        mk3 mk3Var = c6837p5.f27870a;
        boolean m11716c = m11716c(mk3Var);
        boolean m11719C = m11719C(abstractC6839p7, mk3Var);
        boolean m11718a = m11718a(abstractC6839p7, mk3Var, m11716c);
        abstractC6839p7.mo12360o(c6837p5.f27870a.f20100a, this.f28769a);
        if (mk3Var.m16491b() || (i = mk3Var.f20104e) == -1) {
            c = 1;
        } else {
            this.f28769a.m13353b(i);
            c = 0;
        }
        char m13347h = mk3Var.m16491b() ? this.f28769a.m13347h(mk3Var.f20101b, mk3Var.f20102c) : c != -9223372036854775807L ? c : this.f28769a.f26454e;
        if (mk3Var.m16491b()) {
            this.f28769a.m13345j(mk3Var.f20101b);
        } else {
            int i2 = mk3Var.f20104e;
            if (i2 != -1) {
                this.f28769a.m13345j(i2);
            }
        }
        return new C6837p5(mk3Var, c6837p5.f27871b, c6837p5.f27872c, c, m13347h, false, m11716c, m11719C, m11718a);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* renamed from: s */
    public final mk3 m11700s(AbstractC6839p7 abstractC6839p7, Object obj, long j) {
        char c;
        int mo12366i;
        int i = abstractC6839p7.mo12360o(obj, this.f28769a).f26453d;
        Object obj2 = this.f28780l;
        if (obj2 == null || (mo12366i = abstractC6839p7.mo12366i(obj2)) == -1 || abstractC6839p7.mo12367h(mo12366i, this.f28769a, false).f26453d != i) {
            C6800o5 c6800o5 = this.f28776h;
            while (true) {
                C6800o5 c6800o52 = c6800o5;
                if (c6800o52 == null) {
                    C6800o5 c6800o53 = this.f28776h;
                    while (true) {
                        C6800o5 c6800o54 = c6800o53;
                        if (c6800o54 != null) {
                            int mo12366i2 = abstractC6839p7.mo12366i(c6800o54.f27417b);
                            if (mo12366i2 != -1 && abstractC6839p7.mo12367h(mo12366i2, this.f28769a, false).f26453d == i) {
                                c = c6800o54.f27421f.f27870a.f20103d;
                                break;
                            }
                            c6800o53 = c6800o54.m12736o();
                        } else {
                            ?? r0 = this.f28773e;
                            this.f28773e = 1 + r0;
                            c = r0;
                            if (this.f28776h == null) {
                                this.f28780l = obj;
                                this.f28781m = r0;
                                c = r0;
                            }
                        }
                    }
                } else if (c6800o52.f27417b.equals(obj)) {
                    c = c6800o52.f27421f.f27870a.f20103d;
                    break;
                } else {
                    c6800o5 = c6800o52.m12736o();
                }
            }
        } else {
            c = this.f28781m;
        }
        return m11696w(abstractC6839p7, obj, j, c, this.f28769a);
    }

    /* renamed from: t */
    public final /* synthetic */ void m11699t(ax2 ax2Var, mk3 mk3Var) {
        this.f28771c.m11227R(ax2Var.m16467g(), mk3Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r20 != (-9223372036854775807L)) goto L10;
     */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.C6800o5 m11698u(com.google.android.gms.internal.ads.AbstractC7023u6[] r13, com.google.android.gms.internal.ads.fn3 r14, com.google.android.gms.internal.ads.tn3 r15, com.google.android.gms.internal.ads.C7170y5 r16, com.google.android.gms.internal.ads.C6837p5 r17, com.google.android.gms.internal.ads.hn3 r18) {
        /*
            r12 = this;
            r0 = r12
            com.google.android.gms.internal.ads.o5 r0 = r0.f28778j
            r19 = r0
            r0 = r19
            if (r0 != 0) goto L2f
            r0 = r17
            com.google.android.gms.internal.ads.mk3 r0 = r0.f27870a
            boolean r0 = r0.m16491b()
            if (r0 == 0) goto L29
            r0 = r17
            long r0 = r0.f27872c
            r20 = r0
            r0 = r20
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L29
            goto L47
        L29:
            r0 = 0
            r20 = r0
            goto L47
        L2f:
            r0 = r19
            long r0 = r0.m12750a()
            r1 = r12
            com.google.android.gms.internal.ads.o5 r1 = r1.f28778j
            com.google.android.gms.internal.ads.p5 r1 = r1.f27421f
            long r1 = r1.f27874e
            long r0 = r0 + r1
            r1 = r17
            long r1 = r1.f27871b
            long r0 = r0 - r1
            r20 = r0
        L47:
            com.google.android.gms.internal.ads.o5 r0 = new com.google.android.gms.internal.ads.o5
            r1 = r0
            r2 = r13
            r3 = r20
            r4 = r14
            r5 = r15
            r6 = r16
            r7 = r17
            r8 = r18
            r9 = 0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            r14 = r0
            r0 = r12
            com.google.android.gms.internal.ads.o5 r0 = r0.f28778j
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L6c
            r0 = r13
            r1 = r14
            r0.m12737n(r1)
            goto L76
        L6c:
            r0 = r12
            r1 = r14
            r0.f28776h = r1
            r0 = r12
            r1 = r14
            r0.f28777i = r1
        L76:
            r0 = r12
            r1 = 0
            r0.f28780l = r1
            r0 = r12
            r1 = r14
            r0.f28778j = r1
            r0 = r12
            r1 = r12
            int r1 = r1.f28779k
            r2 = 1
            int r1 = r1 + r2
            r0.f28779k = r1
            r0 = r12
            r0.m11697v()
            r0 = r14
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6911r5.m11698u(com.google.android.gms.internal.ads.u6[], com.google.android.gms.internal.ads.fn3, com.google.android.gms.internal.ads.tn3, com.google.android.gms.internal.ads.y5, com.google.android.gms.internal.ads.p5, com.google.android.gms.internal.ads.hn3):com.google.android.gms.internal.ads.o5");
    }
}
