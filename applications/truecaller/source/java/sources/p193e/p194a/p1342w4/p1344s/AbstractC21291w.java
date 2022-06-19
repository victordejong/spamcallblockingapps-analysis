package p193e.p194a.p1342w4.p1344s;

import com.truecaller.log.AssertionUtil;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
/* renamed from: e.a.w4.s.w */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/w.class */
public abstract class AbstractC21291w implements AbstractC21284s {

    /* renamed from: a */
    public int f59626a = 0;

    /* renamed from: b */
    public int f59627b;

    /* renamed from: c */
    public int f59628c;

    /* renamed from: d */
    public AbstractC21242e0 f59629d;

    /* renamed from: e */
    public boolean f59630e;

    /* renamed from: f */
    public AbstractC21284s f59631f;

    /* renamed from: g */
    public boolean f59632g;

    /* renamed from: h */
    public boolean f59633h;

    public AbstractC21291w(int i) {
        this.f59627b = i;
        this.f59628c = Math.min(0, i);
    }

    /* renamed from: a */
    public void m9972a(AbstractC21282r0 abstractC21282r0, int i) {
        AbstractC21284s abstractC21284s;
        int m9967g = m9967g(i);
        boolean z = true;
        if (!this.f59630e && this.f59629d != null && m9967g != 2131364004 && i == m9971c() - 1) {
            this.f59629d.mo9994k2(this);
        }
        if (i != m9971c() - 1) {
            z = false;
        }
        abstractC21282r0.mo9974Y3(z);
        abstractC21282r0.mo9973n(i == 0 ? mo9941m() : null);
        if (m9967g == mo9946h() || m9967g == mo9944j() || m9967g == mo9945i() || m9967g == mo9943k() || m9967g == mo9940n()) {
            return;
        }
        if ((m9967g == mo9942l() && mo9947b((AbstractC13209t.C13211b) abstractC21282r0, i)) || (abstractC21284s = this.f59631f) == null) {
            return;
        }
        ((AbstractC21291w) abstractC21284s).m9972a(abstractC21282r0, m9969e(i));
    }

    /* renamed from: b */
    public abstract boolean mo9947b(AbstractC13209t.C13211b c13211b, int i);

    /* renamed from: c */
    public int m9971c() {
        int i = this.f59627b;
        if ((i == Integer.MAX_VALUE ? 1 : null) != null || !this.f59630e) {
            boolean z = this.f59630e;
            int i2 = this.f59628c;
            int i3 = this.f59626a > i ? 1 : 0;
            int i4 = 0;
            if (i2 == 0) {
                i4 = 0;
                if (!z) {
                    i4 = 0;
                    if (mo9943k() != 0) {
                        i4 = 1;
                    }
                }
            }
            return (z ? 1 : 0) + i2 + i3 + i4;
        }
        return 1;
    }

    /* renamed from: d */
    public int m9970d(int i) {
        if (i < m9971c()) {
            return i;
        }
        AbstractC21284s abstractC21284s = this.f59631f;
        if (abstractC21284s != null) {
            return ((AbstractC21291w) abstractC21284s).m9970d(i - m9971c());
        }
        AssertionUtil.shouldNeverHappen(new IllegalArgumentException(C22128a.m8599l2("Position ", i, "cannot be mapped as the delegate position.")), new String[0]);
        return -1;
    }

    /* renamed from: e */
    public int m9969e(int i) {
        int m9971c = i - m9971c();
        if (m9971c < 0) {
            AssertionUtil.shouldNeverHappen(new IllegalArgumentException(C22128a.m8543z2(" Position is -1. ", String.format(Locale.ENGLISH, "::getInnerPos:: %s  Original Adapter pos: %d adapter count: %d  is loading shown: %s", getClass().getSimpleName(), Integer.valueOf(i), Integer.valueOf(m9971c()), Boolean.valueOf(this.f59630e)))), new String[0]);
        }
        return m9971c;
    }

    /* renamed from: f */
    public int m9968f() {
        int i;
        int m9971c = m9971c();
        if (this.f59627b == Integer.MAX_VALUE) {
            i = 0;
        } else {
            AbstractC21284s abstractC21284s = this.f59631f;
            i = 0;
            if (abstractC21284s != null) {
                i = ((AbstractC21291w) abstractC21284s).m9968f();
            }
        }
        return m9971c + i;
    }

    /* renamed from: g */
    public int m9967g(int i) {
        int m9967g;
        AssertionUtil.isTrue(i >= 0, C22128a.m8611i2(" Position was ", i));
        if (this.f59633h) {
            return mo9945i();
        }
        if (this.f59632g) {
            return mo9944j();
        }
        if (this.f59630e && i == this.f59628c) {
            return mo9946h();
        }
        int mo9943k = mo9943k();
        if (i == 0 && this.f59628c == 0 && mo9943k > 0) {
            return mo9943k;
        }
        if (i == (this.f59630e ? this.f59628c + 1 : this.f59628c)) {
            if (this.f59626a > this.f59627b) {
                return mo9940n();
            }
        }
        if (i < this.f59628c) {
            return mo9942l();
        }
        AbstractC21284s abstractC21284s = this.f59631f;
        if (abstractC21284s != null && (m9967g = ((AbstractC21291w) abstractC21284s).m9967g(m9969e(i))) > 0) {
            return m9967g;
        }
        AssertionUtil.shouldNeverHappen(new IllegalStateException("View type for position " + i + " not handled. In adapter: " + this), new String[0]);
        return 0;
    }

    /* renamed from: h */
    public abstract int mo9946h();

    /* renamed from: i */
    public abstract int mo9945i();

    /* renamed from: j */
    public abstract int mo9944j();

    /* renamed from: k */
    public abstract int mo9943k();

    /* renamed from: l */
    public abstract int mo9942l();

    /* renamed from: m */
    public abstract String mo9941m();

    /* renamed from: n */
    public abstract int mo9940n();

    /* renamed from: o */
    public void m9966o(int i) {
        this.f59626a = i;
        this.f59628c = Math.min(i, this.f59627b);
    }

    /* renamed from: p */
    public void m9965p(AbstractC21284s abstractC21284s) {
        AssertionUtil.isFalse(abstractC21284s == this, "You cannot nest an adapter inside itself");
        this.f59631f = abstractC21284s;
    }

    /* renamed from: q */
    public void m9964q(int i) {
        this.f59627b = i;
        this.f59628c = Math.min(this.f59626a, i);
    }
}
