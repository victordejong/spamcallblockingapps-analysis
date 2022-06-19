package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.util.Collections;
import java.util.Iterator;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23949u;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23657g;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23664j;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23669m;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
/* renamed from: e.k.a.c.n0.y */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/y.class */
public class C23938y extends AbstractC23681s {

    /* renamed from: b */
    public final AbstractC23426b f66204b;

    /* renamed from: c */
    public final AbstractC23663i f66205c;

    /* renamed from: d */
    public final C23949u f66206d;

    /* renamed from: e */
    public final C23951v f66207e;

    /* renamed from: f */
    public final AbstractC23331r.C23333b f66208f;

    public C23938y(AbstractC23426b abstractC23426b, AbstractC23663i abstractC23663i, C23951v c23951v, C23949u c23949u, AbstractC23331r.C23333b c23333b) {
        this.f66204b = abstractC23426b;
        this.f66205c = abstractC23663i;
        this.f66207e = c23951v;
        this.f66206d = c23949u == null ? C23949u.f66291i : c23949u;
        this.f66208f = c23333b;
    }

    /* renamed from: E */
    public static C23938y m5709E(AbstractC23458k<?> abstractC23458k, AbstractC23663i abstractC23663i, C23951v c23951v, C23949u c23949u, AbstractC23331r.EnumC23332a enumC23332a) {
        AbstractC23331r.EnumC23332a enumC23332a2;
        return new C23938y(abstractC23458k.m6864e(), abstractC23663i, c23951v, c23949u, (enumC23332a == null || enumC23332a == (enumC23332a2 = AbstractC23331r.EnumC23332a.USE_DEFAULTS)) ? AbstractC23681s.f65663a : enumC23332a != enumC23332a2 ? new AbstractC23331r.C23333b(enumC23332a, null, null, null) : AbstractC23331r.C23333b.f64537e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: A */
    public boolean mo5712A() {
        return mo5699v() != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: B */
    public boolean mo5711B() {
        return false;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: C */
    public boolean mo5710C() {
        return false;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: d */
    public C23951v mo5708d() {
        return this.f66207e;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    public C23949u getMetadata() {
        return this.f66206d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s, p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23932t
    public String getName() {
        return this.f66207e.f66304a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: h */
    public AbstractC23331r.C23333b mo5707h() {
        return this.f66208f;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: o */
    public C23669m mo5706o() {
        AbstractC23663i abstractC23663i = this.f66205c;
        return abstractC23663i instanceof C23669m ? (C23669m) abstractC23663i : null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: p */
    public Iterator<C23669m> mo5705p() {
        AbstractC23663i abstractC23663i = this.f66205c;
        C23669m c23669m = abstractC23663i instanceof C23669m ? (C23669m) abstractC23663i : null;
        return c23669m == null ? C23914g.f66158c : Collections.singleton(c23669m).iterator();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: q */
    public C23657g mo5704q() {
        AbstractC23663i abstractC23663i = this.f66205c;
        return abstractC23663i instanceof C23657g ? (C23657g) abstractC23663i : null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: r */
    public C23664j mo5703r() {
        AbstractC23663i abstractC23663i = this.f66205c;
        if (!(abstractC23663i instanceof C23664j) || ((C23664j) abstractC23663i).mo6368q() != 0) {
            return null;
        }
        return (C23664j) this.f66205c;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: s */
    public AbstractC23663i mo5702s() {
        return this.f66205c;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: t */
    public AbstractC23698i mo5701t() {
        AbstractC23663i abstractC23663i = this.f66205c;
        return abstractC23663i == null ? C23887o.m5900p() : abstractC23663i.mo6377e();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: u */
    public Class<?> mo5700u() {
        AbstractC23663i abstractC23663i = this.f66205c;
        return abstractC23663i == null ? Object.class : abstractC23663i.mo6378d();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: v */
    public C23664j mo5699v() {
        AbstractC23663i abstractC23663i = this.f66205c;
        if (!(abstractC23663i instanceof C23664j) || ((C23664j) abstractC23663i).mo6368q() != 1) {
            return null;
        }
        return (C23664j) this.f66205c;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: w */
    public C23951v mo5698w() {
        AbstractC23426b abstractC23426b = this.f66204b;
        if (abstractC23426b == null || this.f66205c == null) {
            return null;
        }
        return abstractC23426b.m6874d0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: x */
    public boolean mo5697x() {
        return this.f66205c instanceof C23669m;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: y */
    public boolean mo5696y() {
        return this.f66205c instanceof C23657g;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: z */
    public boolean mo5695z(C23951v c23951v) {
        return this.f66207e.equals(c23951v);
    }
}
