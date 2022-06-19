package p193e.p1545k.p1546a.p1556c.p1559d0;

import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23285b;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23949u;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23616b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23669m;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/k.class */
public class C23476k extends AbstractC23488u {

    /* renamed from: o */
    public final C23669m f65150o;

    /* renamed from: p */
    public final AbstractC23285b.C23286a f65151p;

    /* renamed from: q */
    public AbstractC23488u f65152q;

    /* renamed from: r */
    public final int f65153r;

    /* renamed from: s */
    public boolean f65154s;

    public C23476k(C23476k c23476k, AbstractC23700j<?> abstractC23700j, AbstractC23484r abstractC23484r) {
        super(c23476k, abstractC23700j, abstractC23484r);
        this.f65150o = c23476k.f65150o;
        this.f65151p = c23476k.f65151p;
        this.f65152q = c23476k.f65152q;
        this.f65153r = c23476k.f65153r;
        this.f65154s = c23476k.f65154s;
    }

    public C23476k(C23476k c23476k, C23951v c23951v) {
        super(c23476k, c23951v);
        this.f65150o = c23476k.f65150o;
        this.f65151p = c23476k.f65151p;
        this.f65152q = c23476k.f65152q;
        this.f65153r = c23476k.f65153r;
        this.f65154s = c23476k.f65154s;
    }

    public C23476k(C23951v c23951v, AbstractC23698i abstractC23698i, C23951v c23951v2, AbstractC23709e abstractC23709e, AbstractC23896b abstractC23896b, C23669m c23669m, int i, AbstractC23285b.C23286a c23286a, C23949u c23949u) {
        super(c23951v, abstractC23698i, c23951v2, abstractC23709e, abstractC23896b, c23949u);
        this.f65150o = c23669m;
        this.f65153r = i;
        this.f65151p = c23286a;
        this.f65152q = null;
    }

    /* renamed from: I */
    public static C23476k m6788I(C23951v c23951v, AbstractC23698i abstractC23698i, C23951v c23951v2, AbstractC23709e abstractC23709e, AbstractC23896b abstractC23896b, C23669m c23669m, int i, AbstractC23285b.C23286a c23286a, C23949u c23949u) {
        return new C23476k(c23951v, abstractC23698i, c23951v2, abstractC23709e, abstractC23896b, c23669m, i, c23286a, c23949u);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: A */
    public Object mo6686A(Object obj, Object obj2) throws IOException {
        m6789H();
        return this.f65152q.mo6686A(obj, obj2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: D */
    public AbstractC23488u mo6685D(C23951v c23951v) {
        return new C23476k(this, c23951v);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: E */
    public AbstractC23488u mo6684E(AbstractC23484r abstractC23484r) {
        return new C23476k(this, this.f65175g, abstractC23484r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [e.k.a.c.d0.r] */
    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: G */
    public AbstractC23488u mo6683G(AbstractC23700j<?> abstractC23700j) {
        AbstractC23700j<?> abstractC23700j2 = this.f65175g;
        if (abstractC23700j2 == abstractC23700j) {
            return this;
        }
        ?? r0 = this.f65177i;
        AbstractC23700j<?> abstractC23700j3 = r0;
        if (abstractC23700j2 == r0) {
            abstractC23700j3 = abstractC23700j;
        }
        return new C23476k(this, abstractC23700j, abstractC23700j3);
    }

    /* renamed from: H */
    public final void m6789H() throws IOException {
        if (this.f65152q == null) {
            StringBuilder m8728C = C22128a.m8728C("No fallback setter/field defined for creator property ");
            m8728C.append(C23914g.m5777D(this.f65171c.f66304a));
            throw new C23616b((AbstractC23376j) null, m8728C.toString(), this.f65172d);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u, p193e.p1545k.p1546a.p1556c.AbstractC23462d
    /* renamed from: c */
    public AbstractC23663i mo6108c() {
        return this.f65150o;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23685v, p193e.p1545k.p1546a.p1556c.AbstractC23462d
    public C23949u getMetadata() {
        C23949u c23949u = this.f65667a;
        AbstractC23488u abstractC23488u = this.f65152q;
        C23949u c23949u2 = c23949u;
        if (abstractC23488u != null) {
            c23949u2 = c23949u.m5667b(abstractC23488u.getMetadata().f66297e);
        }
        return c23949u2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: i */
    public void mo6682i(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        m6789H();
        this.f65152q.mo6680z(obj, m6762h(abstractC23376j, abstractC23632g));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: j */
    public Object mo6681j(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        m6789H();
        return this.f65152q.mo6686A(obj, m6762h(abstractC23376j, abstractC23632g));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: l */
    public void mo6688l(C23624f c23624f) {
        AbstractC23488u abstractC23488u = this.f65152q;
        if (abstractC23488u != null) {
            abstractC23488u.mo6688l(c23624f);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: m */
    public int mo6687m() {
        return this.f65153r;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: o */
    public Object mo6754o() {
        AbstractC23285b.C23286a c23286a = this.f65151p;
        return c23286a == null ? null : c23286a.f64436a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[creator property, name ");
        m8728C.append(C23914g.m5777D(this.f65171c.f66304a));
        m8728C.append("; inject id '");
        m8728C.append(mo6754o());
        m8728C.append("']");
        return m8728C.toString();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: w */
    public boolean mo6760w() {
        return this.f65154s;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: x */
    public boolean mo6746x() {
        boolean z;
        AbstractC23285b.C23286a c23286a = this.f65151p;
        if (c23286a != null) {
            Boolean bool = c23286a.f64437b;
            if (!(bool == null ? true : bool.booleanValue())) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: y */
    public void mo6759y() {
        this.f65154s = true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u
    /* renamed from: z */
    public void mo6680z(Object obj, Object obj2) throws IOException {
        m6789H();
        this.f65152q.mo6680z(obj, obj2);
    }
}
