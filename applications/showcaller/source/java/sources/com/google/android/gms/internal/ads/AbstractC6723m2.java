package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.m2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m2.class */
public abstract class AbstractC6723m2 extends AbstractC6839p7 {

    /* renamed from: c */
    private final int f26381c;

    /* renamed from: d */
    private final em3 f26382d;

    public AbstractC6723m2(boolean z, em3 em3Var, byte[] bArr) {
        this.f26382d = em3Var;
        this.f26381c = em3Var.m15432a();
    }

    /* renamed from: w */
    private final int m13377w(int i, boolean z) {
        int i2;
        if (z) {
            i2 = this.f26382d.m15431b(i);
        } else if (i < this.f26381c - 1) {
            return i + 1;
        } else {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: x */
    private final int m13376x(int i, boolean z) {
        int i2;
        if (z) {
            i2 = this.f26382d.m15430c(i);
        } else if (i > 0) {
            return i - 1;
        } else {
            i2 = -1;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: b */
    public final int mo12372b(int i, int i2, boolean z) {
        int i3;
        int mo11684q = mo11684q(i);
        int mo11680u = mo11680u(mo11684q);
        int mo12372b = mo11682s(mo11684q).mo12372b(i - mo11680u, i2 == 2 ? 0 : i2, z);
        if (mo12372b != -1) {
            return mo11680u + mo12372b;
        }
        int m13377w = m13377w(mo11684q, z);
        while (true) {
            i3 = m13377w;
            if (i3 == -1 || !mo11682s(i3).m12364k()) {
                break;
            }
            m13377w = m13377w(i3, z);
        }
        if (i3 != -1) {
            return mo11680u(i3) + mo11682s(i3).mo12369e(z);
        }
        if (i2 != 2) {
            return -1;
        }
        return mo12369e(z);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: c */
    public final int mo12371c(int i, int i2, boolean z) {
        int i3;
        int mo11684q = mo11684q(i);
        int mo11680u = mo11680u(mo11684q);
        int mo12371c = mo11682s(mo11684q).mo12371c(i - mo11680u, 0, false);
        if (mo12371c != -1) {
            return mo11680u + mo12371c;
        }
        int m13376x = m13376x(mo11684q, false);
        while (true) {
            i3 = m13376x;
            if (i3 == -1 || !mo11682s(i3).m12364k()) {
                break;
            }
            m13376x = m13376x(i3, false);
        }
        if (i3 == -1) {
            return -1;
        }
        return mo11680u(i3) + mo11682s(i3).mo12370d(false);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: d */
    public final int mo12370d(boolean z) {
        int i = this.f26381c;
        if (i == 0) {
            return -1;
        }
        int m15429d = z ? this.f26382d.m15429d() : i - 1;
        while (mo11682s(m15429d).m12364k()) {
            int m13376x = m13376x(m15429d, z);
            m15429d = m13376x;
            if (m13376x == -1) {
                return -1;
            }
        }
        return mo11680u(m15429d) + mo11682s(m15429d).mo12370d(z);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: e */
    public final int mo12369e(boolean z) {
        if (this.f26381c == 0) {
            return -1;
        }
        int m15428e = z ? this.f26382d.m15428e() : 0;
        while (mo11682s(m15428e).m12364k()) {
            int m13377w = m13377w(m15428e, z);
            m15428e = m13377w;
            if (m13377w == -1) {
                return -1;
            }
        }
        return mo11680u(m15428e) + mo11682s(m15428e).mo12369e(z);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: f */
    public final C6802o7 mo12368f(int i, C6802o7 c6802o7, long j) {
        int mo11684q = mo11684q(i);
        int mo11680u = mo11680u(mo11684q);
        int mo11681t = mo11681t(mo11684q);
        mo11682s(mo11684q).mo12368f(i - mo11680u, c6802o7, j);
        Object mo11679v = mo11679v(mo11684q);
        Pair pair = mo11679v;
        if (!C6802o7.f27450a.equals(c6802o7.f27454e)) {
            pair = Pair.create(mo11679v, c6802o7.f27454e);
        }
        c6802o7.f27454e = pair;
        c6802o7.f27466q += mo11681t;
        c6802o7.f27467r += mo11681t;
        return c6802o7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: h */
    public final C6728m7 mo12367h(int i, C6728m7 c6728m7, boolean z) {
        int mo11685p = mo11685p(i);
        int mo11680u = mo11680u(mo11685p);
        mo11682s(mo11685p).mo12367h(i - mo11681t(mo11685p), c6728m7, z);
        c6728m7.f26453d += mo11680u;
        if (z) {
            Object mo11679v = mo11679v(mo11685p);
            Object obj = c6728m7.f26452c;
            Objects.requireNonNull(obj);
            c6728m7.f26452c = Pair.create(mo11679v, obj);
        }
        return c6728m7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: i */
    public final int mo12366i(Object obj) {
        int mo12366i;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            int mo11683r = mo11683r(obj2);
            if (mo11683r != -1 && (mo12366i = mo11682s(mo11683r).mo12366i(obj3)) != -1) {
                return mo11681t(mo11683r) + mo12366i;
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: j */
    public final Object mo12365j(int i) {
        int mo11685p = mo11685p(i);
        return Pair.create(mo11679v(mo11685p), mo11682s(mo11685p).mo12365j(i - mo11681t(mo11685p)));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: o */
    public final C6728m7 mo12360o(Object obj, C6728m7 c6728m7) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int mo11683r = mo11683r(obj2);
        int mo11680u = mo11680u(mo11683r);
        mo11682s(mo11683r).mo12360o(obj3, c6728m7);
        c6728m7.f26453d += mo11680u;
        c6728m7.f26452c = obj;
        return c6728m7;
    }

    /* renamed from: p */
    protected abstract int mo11685p(int i);

    /* renamed from: q */
    protected abstract int mo11684q(int i);

    /* renamed from: r */
    protected abstract int mo11683r(Object obj);

    /* renamed from: s */
    protected abstract AbstractC6839p7 mo11682s(int i);

    /* renamed from: t */
    protected abstract int mo11681t(int i);

    /* renamed from: u */
    protected abstract int mo11680u(int i);

    /* renamed from: v */
    protected abstract Object mo11679v(int i);
}
