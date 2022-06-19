package p193e.p194a.p1406z3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import e.f.a.n.q.d.j;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.AbstractC22271m;
import p193e.p1451f.p1452a.p1457n.C22264h;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m;
import p193e.p1451f.p1452a.p1476r.AbstractC22585a;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.C22591h;
/* renamed from: e.a.z3.d */
/* loaded from: classes9-dex2jar.jar:e/a/z3/d.class */
public class C21852d<TranscodeType> extends C22234h<TranscodeType> implements Cloneable {
    public C21852d(ComponentCallbacks2C22222c componentCallbacks2C22222c, ComponentCallbacks2C22236i componentCallbacks2C22236i, Class<TranscodeType> cls, Context context) {
        super(componentCallbacks2C22222c, componentCallbacks2C22236i, cls, context);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: A */
    public AbstractC22585a mo8113A(boolean z) {
        return (C21852d) super.mo8113A(z);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: B */
    public AbstractC22585a mo8112B(AbstractC22271m abstractC22271m) {
        return (C21852d) m8111C(abstractC22271m, true);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: F */
    public AbstractC22585a mo8108F(AbstractC22271m[] abstractC22271mArr) {
        return (C21852d) super.mo8108F(abstractC22271mArr);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: G */
    public AbstractC22585a mo8107G(boolean z) {
        return (C21852d) super.mo8107G(z);
    }

    @Override // p193e.p1451f.p1452a.C22234h
    /* renamed from: H */
    public C22234h mo8433H(AbstractC22590g abstractC22590g) {
        super.mo8433H(abstractC22590g);
        return this;
    }

    @Override // p193e.p1451f.p1452a.C22234h
    /* renamed from: J */
    public C22234h mo8432J(AbstractC22585a abstractC22585a) {
        return (C21852d) super.mo8106a(abstractC22585a);
    }

    @Override // p193e.p1451f.p1452a.C22234h
    /* renamed from: P */
    public C22234h mo8426P(AbstractC22590g abstractC22590g) {
        this.f61768K = null;
        mo8433H(abstractC22590g);
        return this;
    }

    @Override // p193e.p1451f.p1452a.C22234h
    /* renamed from: Q */
    public C22234h mo8425Q(Bitmap bitmap) {
        this.f61767J = bitmap;
        this.f61771N = true;
        return (C21852d) mo8432J(C22591h.m8073J(AbstractC22364k.f62125b));
    }

    @Override // p193e.p1451f.p1452a.C22234h
    /* renamed from: R */
    public C22234h mo8424R(Drawable drawable) {
        this.f61767J = drawable;
        this.f61771N = true;
        return (C21852d) mo8432J(C22591h.m8073J(AbstractC22364k.f62125b));
    }

    @Override // p193e.p1451f.p1452a.C22234h
    /* renamed from: S */
    public C22234h mo8423S(Uri uri) {
        this.f61767J = uri;
        this.f61771N = true;
        return this;
    }

    @Override // p193e.p1451f.p1452a.C22234h
    /* renamed from: T */
    public C22234h mo8422T(Integer num) {
        return (C21852d) super.mo8422T(num);
    }

    @Override // p193e.p1451f.p1452a.C22234h
    /* renamed from: U */
    public C22234h mo8421U(Object obj) {
        this.f61767J = obj;
        this.f61771N = true;
        return this;
    }

    @Override // p193e.p1451f.p1452a.C22234h
    /* renamed from: V */
    public C22234h mo8420V(String str) {
        this.f61767J = str;
        this.f61771N = true;
        return this;
    }

    /* renamed from: Z */
    public C21852d<TranscodeType> m8984Z(AbstractC22590g<TranscodeType> abstractC22590g) {
        super.mo8433H(abstractC22590g);
        return this;
    }

    @Override // p193e.p1451f.p1452a.C22234h, p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: a */
    public AbstractC22585a mo8106a(AbstractC22585a abstractC22585a) {
        return (C21852d) super.mo8106a(abstractC22585a);
    }

    /* renamed from: a0 */
    public C21852d<TranscodeType> m8983a0(AbstractC22585a<?> abstractC22585a) {
        return (C21852d) super.mo8106a(abstractC22585a);
    }

    /* renamed from: b0 */
    public C21852d<TranscodeType> mo8104c() {
        return (C21852d) super.mo8104c();
    }

    /* renamed from: c0 */
    public C21852d<TranscodeType> mo8103e() {
        C22234h<TranscodeType> m8110D = m8110D(AbstractC22505m.f62377c, new j());
        m8110D.f62549y = true;
        return (C21852d) m8110D;
    }

    /* renamed from: d0 */
    public C21852d<TranscodeType> mo8102f() {
        return (C21852d) super.mo8102f();
    }

    /* renamed from: e0 */
    public C21852d<TranscodeType> mo8101g() {
        return (C21852d) super.mo8101g();
    }

    /* renamed from: f0 */
    public C21852d<TranscodeType> m8978f0(AbstractC22364k abstractC22364k) {
        return (C21852d) super.mo8099i(abstractC22364k);
    }

    /* renamed from: g0 */
    public C21852d<TranscodeType> m8977g0(AbstractC22505m abstractC22505m) {
        return (C21852d) super.mo8098j(abstractC22505m);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: h */
    public AbstractC22585a mo8100h(Class cls) {
        return (C21852d) super.mo8100h(cls);
    }

    /* renamed from: h0 */
    public C21852d<TranscodeType> mo8097k(int i) {
        return (C21852d) super.mo8097k(i);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: i */
    public AbstractC22585a mo8099i(AbstractC22364k abstractC22364k) {
        return (C21852d) super.mo8099i(abstractC22364k);
    }

    /* renamed from: i0 */
    public C21852d<TranscodeType> mo8096l(Drawable drawable) {
        return (C21852d) super.mo8096l(drawable);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: j */
    public AbstractC22585a mo8098j(AbstractC22505m abstractC22505m) {
        return (C21852d) super.mo8098j(abstractC22505m);
    }

    /* renamed from: j0 */
    public C21852d<TranscodeType> m8974j0(Uri uri) {
        this.f61767J = uri;
        this.f61771N = true;
        return this;
    }

    /* renamed from: k0 */
    public C21852d<TranscodeType> m8973k0(Integer num) {
        return (C21852d) super.mo8422T(num);
    }

    /* renamed from: l0 */
    public C21852d<TranscodeType> m8972l0(String str) {
        this.f61767J = str;
        this.f61771N = true;
        return this;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: m */
    public AbstractC22585a mo8095m() {
        return (C21852d) super.mo8095m();
    }

    /* renamed from: m0 */
    public C21852d<TranscodeType> m8971m0(int i) {
        return (C21852d) mo8088t(i, i);
    }

    /* renamed from: n0 */
    public C21852d<TranscodeType> m8970n0(int i, int i2) {
        return (C21852d) super.mo8088t(i, i2);
    }

    /* renamed from: o0 */
    public C21852d<TranscodeType> mo8087u(int i) {
        return (C21852d) super.mo8087u(i);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: p */
    public AbstractC22585a mo8092p() {
        return (C21852d) super.mo8092p();
    }

    /* renamed from: p0 */
    public C21852d<TranscodeType> m8968p0(Drawable drawable) {
        return (C21852d) super.mo8086v(drawable);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: q */
    public AbstractC22585a mo8091q() {
        return (C21852d) super.mo8091q();
    }

    /* renamed from: q0 */
    public C21852d<TranscodeType> m8967q0(boolean z) {
        return (C21852d) super.mo8113A(z);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: r */
    public AbstractC22585a mo8090r() {
        return (C21852d) super.mo8090r();
    }

    /* renamed from: r0 */
    public C21852d<TranscodeType> m8966r0(AbstractC22271m<Bitmap>... abstractC22271mArr) {
        return (C21852d) super.mo8108F(abstractC22271mArr);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: t */
    public AbstractC22585a mo8088t(int i, int i2) {
        return (C21852d) super.mo8088t(i, i2);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: v */
    public AbstractC22585a mo8086v(Drawable drawable) {
        return (C21852d) super.mo8086v(drawable);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: w */
    public AbstractC22585a mo8085w(EnumC22227f enumC22227f) {
        return (C21852d) super.mo8085w(enumC22227f);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: y */
    public AbstractC22585a mo8083y(C22264h c22264h, Object obj) {
        return (C21852d) super.mo8083y(c22264h, obj);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22585a
    /* renamed from: z */
    public AbstractC22585a mo8082z(AbstractC22263f abstractC22263f) {
        return (C21852d) super.mo8082z(abstractC22263f);
    }
}
