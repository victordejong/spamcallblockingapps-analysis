package p193e.p1545k.p1546a.p1556c.p1567j0.p1568i;

import java.io.IOException;
import java.util.Objects;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
/* renamed from: e.k.a.c.j0.i.t */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/i/t.class */
public abstract class AbstractC23732t extends AbstractC23712h {

    /* renamed from: a */
    public final AbstractC23710f f65775a;

    /* renamed from: b */
    public final AbstractC23462d f65776b;

    public AbstractC23732t(AbstractC23710f abstractC23710f, AbstractC23462d abstractC23462d) {
        this.f65775a = abstractC23710f;
        this.f65776b = abstractC23462d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h
    /* renamed from: b */
    public String mo6004b() {
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h
    /* renamed from: e */
    public C23422b mo6002e(AbstractC23372g abstractC23372g, C23422b c23422b) throws IOException {
        if (c23422b.f64978c == null) {
            Object obj = c23422b.f64976a;
            Class<?> cls = c23422b.f64977b;
            c23422b.f64978c = cls == null ? this.f65775a.mo6170a(obj) : this.f65775a.mo6167e(obj, cls);
        }
        Objects.requireNonNull(abstractC23372g);
        Object obj2 = c23422b.f64978c;
        EnumC23381m enumC23381m = c23422b.f64981f;
        boolean z = false;
        if (abstractC23372g.mo5856k()) {
            c23422b.f64982g = false;
            abstractC23372g.mo5863Z1(obj2);
        } else {
            String valueOf = obj2 instanceof String ? (String) obj2 : String.valueOf(obj2);
            c23422b.f64982g = true;
            C23422b.EnumC23423a enumC23423a = c23422b.f64980e;
            C23422b.EnumC23423a enumC23423a2 = enumC23423a;
            if (enumC23381m != EnumC23381m.START_OBJECT) {
                Objects.requireNonNull(enumC23423a);
                if (enumC23423a == C23422b.EnumC23423a.METADATA_PROPERTY || enumC23423a == C23422b.EnumC23423a.PAYLOAD_PROPERTY) {
                    z = true;
                }
                enumC23423a2 = enumC23423a;
                if (z) {
                    enumC23423a2 = C23422b.EnumC23423a.WRAPPER_ARRAY;
                    c23422b.f64980e = enumC23423a2;
                }
            }
            int ordinal = enumC23423a2.ordinal();
            if (ordinal == 1) {
                abstractC23372g.mo5875M1();
                abstractC23372g.mo5889B0(valueOf);
            } else if (ordinal == 2) {
                abstractC23372g.mo5874O1(c23422b.f64976a);
                abstractC23372g.mo5889B0(c23422b.f64979d);
                abstractC23372g.mo5868T1(valueOf);
                return c23422b;
            } else if (ordinal != 3 && ordinal != 4) {
                abstractC23372g.mo5884F1();
                abstractC23372g.mo5868T1(valueOf);
            }
        }
        if (enumC23381m == EnumC23381m.START_OBJECT) {
            abstractC23372g.mo5874O1(c23422b.f64976a);
        } else if (enumC23381m == EnumC23381m.START_ARRAY) {
            abstractC23372g.mo5884F1();
        }
        return c23422b;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h
    /* renamed from: f */
    public C23422b mo6001f(AbstractC23372g abstractC23372g, C23422b c23422b) throws IOException {
        Objects.requireNonNull(abstractC23372g);
        EnumC23381m enumC23381m = c23422b.f64981f;
        if (enumC23381m == EnumC23381m.START_OBJECT) {
            abstractC23372g.mo5840t0();
        } else if (enumC23381m == EnumC23381m.START_ARRAY) {
            abstractC23372g.mo5848p0();
        }
        if (c23422b.f64982g) {
            int ordinal = c23422b.f64980e.ordinal();
            if (ordinal == 0) {
                abstractC23372g.mo5848p0();
            } else if (ordinal != 2 && ordinal != 3) {
                if (ordinal != 4) {
                    abstractC23372g.mo5840t0();
                } else {
                    Object obj = c23422b.f64978c;
                    String valueOf = obj instanceof String ? (String) obj : String.valueOf(obj);
                    abstractC23372g.mo5889B0(c23422b.f64979d);
                    abstractC23372g.mo5868T1(valueOf);
                }
            }
        }
        return c23422b;
    }
}
