package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.util.Objects;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23958z;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23921k;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.t.m */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/m.class */
public class C23838m extends AbstractC23849p0<Enum<?>> implements AbstractC23766i {

    /* renamed from: e */
    public static final /* synthetic */ int f65975e = 0;

    /* renamed from: c */
    public final C23921k f65976c;

    /* renamed from: d */
    public final Boolean f65977d;

    public C23838m(C23921k c23921k, Boolean bool) {
        super(c23921k.f66175a, false);
        this.f65976c = c23921k;
        this.f65977d = bool;
    }

    /* renamed from: p */
    public static Boolean m6020p(Class<?> cls, AbstractC23311k.C23315d c23315d, boolean z, Boolean bool) {
        AbstractC23311k.EnumC23314c enumC23314c = c23315d == null ? null : c23315d.f64499b;
        if (enumC23314c == null) {
            return bool;
        }
        if (enumC23314c == AbstractC23311k.EnumC23314c.ANY || enumC23314c == AbstractC23311k.EnumC23314c.SCALAR) {
            return bool;
        }
        if (enumC23314c == AbstractC23311k.EnumC23314c.STRING || enumC23314c == AbstractC23311k.EnumC23314c.NATURAL) {
            return Boolean.FALSE;
        }
        if (enumC23314c.m7288a() || enumC23314c == AbstractC23311k.EnumC23314c.ARRAY) {
            return Boolean.TRUE;
        }
        throw new IllegalArgumentException(String.format("Unsupported serialization shape (%s) for Enum %s, not supported as %s annotation", enumC23314c, cls.getName(), z ? "class" : "property"));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    public AbstractC23890n<?> mo5992b(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23311k.C23315d m6014l = m6014l(abstractC23425a0, abstractC23462d, this.f65984a);
        if (m6014l != null) {
            Boolean m6020p = m6020p(this.f65984a, m6014l, false, this.f65977d);
            if (!Objects.equals(m6020p, this.f65977d)) {
                return new C23838m(this.f65976c, m6020p);
            }
        }
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        Enum r0 = (Enum) obj;
        Boolean bool = this.f65977d;
        if (bool != null ? bool.booleanValue() : abstractC23425a0.m6889M(EnumC23958z.WRITE_ENUMS_USING_INDEX)) {
            abstractC23372g.mo5880J0(r0.ordinal());
        } else if (abstractC23425a0.m6889M(EnumC23958z.WRITE_ENUMS_USING_TO_STRING)) {
            abstractC23372g.mo5868T1(r0.toString());
        } else {
            abstractC23372g.mo5869S1(this.f65976c.f66176b[r0.ordinal()]);
        }
    }
}
