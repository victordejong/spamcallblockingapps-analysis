package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23446b;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23448d;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23917h;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23920j;
@AbstractC23429a
/* renamed from: e.k.a.c.d0.z.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/k.class */
public class C23568k extends AbstractC23552e0<Object> implements AbstractC23474i {

    /* renamed from: i */
    public static final /* synthetic */ int f65371i = 0;

    /* renamed from: d */
    public Object[] f65372d;

    /* renamed from: e */
    public final Enum<?> f65373e;

    /* renamed from: f */
    public final C23917h f65374f;

    /* renamed from: g */
    public C23917h f65375g;

    /* renamed from: h */
    public final Boolean f65376h;

    public C23568k(C23568k c23568k, Boolean bool) {
        super(c23568k);
        this.f65374f = c23568k.f65374f;
        this.f65372d = c23568k.f65372d;
        this.f65373e = c23568k.f65373e;
        this.f65376h = bool;
    }

    public C23568k(C23920j c23920j, Boolean bool) {
        super(c23920j.f66170a);
        this.f65374f = c23920j.m5733c();
        this.f65372d = c23920j.f66171b;
        this.f65373e = c23920j.f66173d;
        this.f65376h = bool;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
        Class<?> cls = this.f65309a;
        AbstractC23311k.EnumC23312a enumC23312a = AbstractC23311k.EnumC23312a.ACCEPT_CASE_INSENSITIVE_PROPERTIES;
        AbstractC23311k.C23315d m6644h0 = m6644h0(abstractC23632g, abstractC23462d, cls);
        Boolean m7286b = m6644h0 != null ? m6644h0.m7286b(enumC23312a) : null;
        Boolean bool = m7286b;
        if (m7286b == null) {
            bool = this.f65376h;
        }
        return Objects.equals(this.f65376h, bool) ? this : new C23568k(this, bool);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_STRING)) {
            return m6578m0(abstractC23376j, abstractC23632g, abstractC23376j.mo5817U0());
        }
        if (!abstractC23376j.mo7150O1(EnumC23381m.VALUE_NUMBER_INT)) {
            if (abstractC23376j.mo7144Y1()) {
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
            } else if (abstractC23376j.mo7150O1(EnumC23381m.START_ARRAY)) {
                return mo6676A(abstractC23376j, abstractC23632g);
            } else {
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
            }
        }
        int mo5800z0 = abstractC23376j.mo5800z0();
        EnumC23446b m6463q = abstractC23632g.m6463q(EnumC23876f.Enum, this.f65309a, EnumC23448d.Integer);
        if (m6463q == EnumC23446b.Fail) {
            if (abstractC23632g.m6488R(EnumC23694h.FAIL_ON_NUMBERS_FOR_ENUMS)) {
                abstractC23632g.m6493M(this.f65309a, Integer.valueOf(mo5800z0), "not allowed to deserialize Enum value out of number: disable DeserializationConfig.DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS to allow", new Object[0]);
                throw null;
            }
            m6641r(abstractC23632g, m6463q, this.f65309a, Integer.valueOf(mo5800z0), C22128a.m8599l2("Integer value (", mo5800z0, ")"));
        }
        int ordinal = m6463q.ordinal();
        Enum<?> r11 = null;
        if (ordinal != 2) {
            if (ordinal != 3) {
                if (mo5800z0 >= 0) {
                    Object[] objArr = this.f65372d;
                    if (mo5800z0 < objArr.length) {
                        r11 = objArr[mo5800z0];
                    }
                }
                if (this.f65373e != null && abstractC23632g.m6488R(EnumC23694h.READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE)) {
                    r11 = this.f65373e;
                } else if (!abstractC23632g.m6488R(EnumC23694h.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                    abstractC23632g.m6493M(this.f65309a, Integer.valueOf(mo5800z0), "index value outside legal index range [0..%s]", Integer.valueOf(this.f65372d.length - 1));
                    throw null;
                } else {
                    r11 = null;
                }
            } else {
                r11 = this.f65373e;
            }
        }
        return r11;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        return this.f65373e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0065, code lost:
        if (r0 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0132, code lost:
        if (r0 != null) goto L82;
     */
    /* renamed from: m0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m6578m0(p193e.p1545k.p1546a.p1548b.AbstractC23376j r10, p193e.p1545k.p1546a.p1556c.AbstractC23632g r11, java.lang.String r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23568k.m6578m0(e.k.a.b.j, e.k.a.c.g, java.lang.String):java.lang.Object");
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: n */
    public boolean mo6222n() {
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Enum;
    }
}
