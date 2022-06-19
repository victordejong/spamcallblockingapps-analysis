package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23529t;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.EnumC23892a;
/* renamed from: e.k.a.c.d0.z.i */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/i.class */
public abstract class AbstractC23561i<T> extends AbstractC23541b0<T> {

    /* renamed from: d */
    public final AbstractC23698i f65361d;

    /* renamed from: e */
    public final AbstractC23484r f65362e;

    /* renamed from: f */
    public final boolean f65363f;

    /* renamed from: g */
    public final Boolean f65364g;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC23561i(p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23561i<?> r4, p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r r5, java.lang.Boolean r6) {
        /*
            r3 = this;
            r0 = r4
            e.k.a.c.i r0 = r0.f65361d
            r4 = r0
            r0 = r3
            r1 = r4
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.f65361d = r1
            r0 = r3
            r1 = r5
            r0.f65362e = r1
            r0 = r3
            r1 = r6
            r0.f65364g = r1
            r0 = r3
            r1 = r5
            boolean r1 = p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23529t.m6693a(r1)
            r0.f65363f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23561i.<init>(e.k.a.c.d0.z.i, e.k.a.c.d0.r, java.lang.Boolean):void");
    }

    public AbstractC23561i(AbstractC23698i abstractC23698i, AbstractC23484r abstractC23484r, Boolean bool) {
        super(abstractC23698i);
        this.f65361d = abstractC23698i;
        this.f65364g = bool;
        this.f65362e = abstractC23484r;
        this.f65363f = C23529t.m6693a(abstractC23484r);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: h */
    public AbstractC23488u mo6228h(String str) {
        AbstractC23700j<Object> mo6541m0 = mo6541m0();
        if (mo6541m0 != null) {
            return mo6541m0.mo6228h(str);
        }
        throw new IllegalArgumentException(String.format("Cannot handle managed/back reference '%s': type: container deserializer of type %s returned null for 'getContentDeserializer()'", str, getClass().getName()));
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: i */
    public EnumC23892a mo6227i() {
        return EnumC23892a.DYNAMIC;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        AbstractC23491w mo6533i0 = mo6533i0();
        if (mo6533i0 == null || !mo6533i0.mo6607j()) {
            AbstractC23698i mo6532j0 = mo6532j0();
            abstractC23632g.mo6466m(mo6532j0, String.format("Cannot create empty instance of %s, no default Creator", mo6532j0));
            throw null;
        }
        try {
            return mo6533i0.mo6596v(abstractC23632g);
        } catch (IOException e) {
            C23914g.m5773H(abstractC23632g, e);
            throw null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0
    /* renamed from: j0 */
    public AbstractC23698i mo6532j0() {
        return this.f65361d;
    }

    /* renamed from: m0 */
    public abstract AbstractC23700j<Object> mo6541m0();

    /* renamed from: n0 */
    public <BOGUS> BOGUS m6583n0(AbstractC23632g abstractC23632g, Throwable th, Object obj, String str) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        C23914g.m5772I(th);
        if (abstractC23632g != null && !abstractC23632g.m6488R(EnumC23694h.WRAP_EXCEPTIONS)) {
            C23914g.m5770K(th);
        }
        if (!(th instanceof IOException) || (th instanceof C23733k)) {
            String str2 = str;
            if (str == null) {
                str2 = "N/A";
            }
            throw C23733k.m6157j(th, obj, str2);
        }
        throw ((IOException) th);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return Boolean.TRUE;
    }
}
