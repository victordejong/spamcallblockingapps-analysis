package p1727n3.p1758e.p1767b;

import android.graphics.Rect;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Size;
import java.util.HashSet;
import java.util.Set;
import n3.e.b.j1.a1;
import n3.e.b.j1.q0;
import n3.e.b.j1.r1;
import n3.e.b.k1.f;
import p1727n3.p1758e.p1767b.C25898c1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26010s1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26059z;
import p1727n3.p1758e.p1767b.p1768j1.C25949d1;
import p1727n3.p1758e.p1767b.p1768j1.C25972j1;
import p1727n3.p1758e.p1767b.p1768j1.r1$a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.g1 */
/* loaded from: classes-dex2jar.jar:n3/e/b/g1.class */
public abstract class AbstractC25921g1 {

    /* renamed from: d */
    public r1<?> f72503d;

    /* renamed from: e */
    public r1<?> f72504e;

    /* renamed from: f */
    public r1<?> f72505f;

    /* renamed from: g */
    public Size f72506g;

    /* renamed from: h */
    public r1<?> f72507h;

    /* renamed from: i */
    public Rect f72508i;

    /* renamed from: j */
    public AbstractC25938b0 f72509j;

    /* renamed from: a */
    public final Set<AbstractC25924c> f72500a = new HashSet();

    /* renamed from: b */
    public final Object f72501b = new Object();

    /* renamed from: c */
    public EnumC25923b f72502c = EnumC25923b.INACTIVE;

    /* renamed from: k */
    public C25972j1 f72510k = C25972j1.m2843a();

    /* renamed from: n3.e.b.g1$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/g1$a.class */
    public interface AbstractC25922a {
        /* renamed from: a */
        void m2891a();

        /* renamed from: b */
        void m2890b(AbstractC26075l0 abstractC26075l0);
    }

    /* renamed from: n3.e.b.g1$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/g1$b.class */
    public enum EnumC25923b {
        ACTIVE,
        INACTIVE
    }

    /* renamed from: n3.e.b.g1$c */
    /* loaded from: classes-dex2jar.jar:n3/e/b/g1$c.class */
    public interface AbstractC25924c {
        /* renamed from: c */
        void m2889c(AbstractC25921g1 abstractC25921g1);

        /* renamed from: f */
        void m2888f(AbstractC25921g1 abstractC25921g1);

        /* renamed from: j */
        void m2887j(AbstractC25921g1 abstractC25921g1);

        /* renamed from: k */
        void m2886k(AbstractC25921g1 abstractC25921g1);
    }

    public AbstractC25921g1(r1<?> r1Var) {
        this.f72504e = r1Var;
        this.f72505f = r1Var;
    }

    /* renamed from: a */
    public AbstractC25938b0 m2905a() {
        AbstractC25938b0 abstractC25938b0;
        synchronized (this.f72501b) {
            abstractC25938b0 = this.f72509j;
        }
        return abstractC25938b0;
    }

    /* renamed from: b */
    public String m2904b() {
        AbstractC25938b0 m2905a = m2905a();
        MediaSessionCompat.m43196u(m2905a, "No camera attached to use case: " + this);
        return m2905a.m2878d().m2766a();
    }

    /* renamed from: c */
    public abstract r1<?> mo2903c(boolean z, AbstractC26010s1 abstractC26010s1);

    /* renamed from: d */
    public String m2902d() {
        r1<?> r1Var = this.f72505f;
        StringBuilder m8728C = C22128a.m8728C("<UnknownUseCase-");
        m8728C.append(hashCode());
        m8728C.append(">");
        return r1Var.k(m8728C.toString());
    }

    /* renamed from: e */
    public abstract r1$a<?, ?, ?> mo2901e(AbstractC25968j0 abstractC25968j0);

    /* renamed from: f */
    public r1<?> m2900f(AbstractC26059z abstractC26059z, r1<?> r1Var, r1<?> r1Var2) {
        C25949d1 c25949d1;
        if (r1Var2 != null) {
            c25949d1 = a1.y(r1Var2);
            c25949d1.f72560q.remove(f.n);
        } else {
            c25949d1 = a1.x();
        }
        for (AbstractC25968j0.AbstractC25969a<?> abstractC25969a : this.f72504e.mo2848d()) {
            c25949d1.z(abstractC25969a, this.f72504e.mo2847e(abstractC25969a), this.f72504e.mo2851a(abstractC25969a));
        }
        if (r1Var != null) {
            for (AbstractC25968j0.AbstractC25969a<?> abstractC25969a2 : r1Var.mo2848d()) {
                if (!abstractC25969a2.mo2823a().equals(f.n.mo2823a())) {
                    c25949d1.z(abstractC25969a2, r1Var.mo2847e(abstractC25969a2), r1Var.mo2851a(abstractC25969a2));
                }
            }
        }
        if (c25949d1.mo2849c(q0.d)) {
            AbstractC25968j0.AbstractC25969a<?> abstractC25969a3 = q0.b;
            if (c25949d1.mo2849c(abstractC25969a3)) {
                c25949d1.f72560q.remove(abstractC25969a3);
            }
        }
        return mo2894l(abstractC26059z, mo2901e(c25949d1));
    }

    /* renamed from: g */
    public final void m2899g() {
        for (AbstractC25924c abstractC25924c : this.f72500a) {
            abstractC25924c.m2887j(this);
        }
    }

    /* renamed from: h */
    public final void m2898h() {
        int ordinal = this.f72502c.ordinal();
        if (ordinal == 0) {
            for (AbstractC25924c abstractC25924c : this.f72500a) {
                abstractC25924c.m2888f(this);
            }
        } else if (ordinal == 1) {
            for (AbstractC25924c abstractC25924c2 : this.f72500a) {
                abstractC25924c2.m2886k(this);
            }
        }
    }

    /* renamed from: i */
    public void m2897i(AbstractC25938b0 abstractC25938b0, r1<?> r1Var, r1<?> r1Var2) {
        synchronized (this.f72501b) {
            this.f72509j = abstractC25938b0;
            this.f72500a.add(abstractC25938b0);
        }
        this.f72503d = r1Var;
        this.f72507h = r1Var2;
        r1<?> m2900f = m2900f(abstractC25938b0.m2878d(), this.f72503d, this.f72507h);
        this.f72505f = m2900f;
        AbstractC25922a u = m2900f.u((AbstractC25922a) null);
        if (u != null) {
            u.m2890b(abstractC25938b0.m2878d());
        }
    }

    /* renamed from: j */
    public void m2896j(AbstractC25938b0 abstractC25938b0) {
        mo2895k();
        AbstractC25922a u = this.f72505f.u((AbstractC25922a) null);
        if (u != null) {
            u.m2891a();
        }
        synchronized (this.f72501b) {
            MediaSessionCompat.m43217n(abstractC25938b0 == this.f72509j);
            this.f72500a.remove(this.f72509j);
            this.f72509j = null;
        }
        this.f72506g = null;
        this.f72508i = null;
        this.f72505f = this.f72504e;
        this.f72503d = null;
        this.f72507h = null;
    }

    /* renamed from: k */
    public void mo2895k() {
    }

    /* renamed from: l */
    public r1<?> mo2894l(AbstractC26059z abstractC26059z, r1$a<?, ?, ?> r1_a) {
        return ((C25898c1.C25900b) r1_a).m2915b();
    }

    /* renamed from: m */
    public abstract Size mo2893m(Size size);

    /* renamed from: n */
    public void mo2892n(Rect rect) {
        this.f72508i = rect;
    }
}
