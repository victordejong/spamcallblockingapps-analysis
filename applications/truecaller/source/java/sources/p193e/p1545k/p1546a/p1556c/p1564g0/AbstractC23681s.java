package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.util.Iterator;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23949u;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23932t;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.s */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/s.class */
public abstract class AbstractC23681s implements AbstractC23932t {

    /* renamed from: a */
    public static final AbstractC23331r.C23333b f65663a = AbstractC23331r.C23333b.f64537e;

    static {
        AbstractC23331r.C23333b c23333b = AbstractC23331r.C23333b.f64537e;
    }

    /* renamed from: A */
    public abstract boolean mo5712A();

    /* renamed from: B */
    public abstract boolean mo5711B();

    /* renamed from: C */
    public boolean mo5710C() {
        return mo5711B();
    }

    /* renamed from: D */
    public boolean mo6344D() {
        return false;
    }

    /* renamed from: a */
    public boolean mo6343a() {
        C23669m mo5706o = mo5706o();
        C23669m c23669m = mo5706o;
        if (mo5706o == null) {
            C23664j mo5699v = mo5699v();
            c23669m = mo5699v;
            if (mo5699v == null) {
                c23669m = mo5704q();
            }
        }
        return c23669m != null;
    }

    /* renamed from: d */
    public abstract C23951v mo5708d();

    /* renamed from: g */
    public boolean mo6342g() {
        return m6338n() != null;
    }

    public abstract C23949u getMetadata();

    @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23932t
    public abstract String getName();

    /* renamed from: h */
    public abstract AbstractC23331r.C23333b mo5707h();

    /* renamed from: i */
    public C23635a0 mo6341i() {
        return null;
    }

    /* renamed from: j */
    public AbstractC23426b.C23427a mo6340j() {
        return null;
    }

    /* renamed from: m */
    public Class<?>[] mo6339m() {
        return null;
    }

    /* renamed from: n */
    public AbstractC23663i m6338n() {
        C23664j mo5703r = mo5703r();
        C23664j c23664j = mo5703r;
        if (mo5703r == null) {
            c23664j = mo5704q();
        }
        return c23664j;
    }

    /* renamed from: o */
    public abstract C23669m mo5706o();

    /* renamed from: p */
    public Iterator<C23669m> mo5705p() {
        return C23914g.f66158c;
    }

    /* renamed from: q */
    public abstract C23657g mo5704q();

    /* renamed from: r */
    public abstract C23664j mo5703r();

    /* renamed from: s */
    public abstract AbstractC23663i mo5702s();

    /* renamed from: t */
    public abstract AbstractC23698i mo5701t();

    /* renamed from: u */
    public abstract Class<?> mo5700u();

    /* renamed from: v */
    public abstract C23664j mo5699v();

    /* renamed from: w */
    public abstract C23951v mo5698w();

    /* renamed from: x */
    public abstract boolean mo5697x();

    /* renamed from: y */
    public abstract boolean mo5696y();

    /* renamed from: z */
    public boolean mo5695z(C23951v c23951v) {
        return mo5708d().equals(c23951v);
    }
}
