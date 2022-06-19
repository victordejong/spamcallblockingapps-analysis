package p193e.p1545k.p1546a.p1556c.p1567j0;

import java.io.IOException;
import p193e.p1545k.p1546a.p1547a.AbstractC23295e0;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23365p;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
/* renamed from: e.k.a.c.j0.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/h.class */
public abstract class AbstractC23712h {
    /* renamed from: a */
    public abstract AbstractC23712h mo6005a(AbstractC23462d abstractC23462d);

    /* renamed from: b */
    public abstract String mo6004b();

    /* renamed from: c */
    public abstract AbstractC23295e0.EnumC23296a mo6003c();

    /* renamed from: d */
    public C23422b m6216d(Object obj, EnumC23381m enumC23381m) {
        C23422b c23422b = new C23422b(obj, enumC23381m);
        int ordinal = mo6003c().ordinal();
        if (ordinal == 0) {
            c23422b.f64980e = C23422b.EnumC23423a.METADATA_PROPERTY;
            c23422b.f64979d = mo6004b();
        } else if (ordinal == 1) {
            c23422b.f64980e = C23422b.EnumC23423a.WRAPPER_OBJECT;
        } else if (ordinal == 2) {
            c23422b.f64980e = C23422b.EnumC23423a.WRAPPER_ARRAY;
        } else if (ordinal == 3) {
            c23422b.f64980e = C23422b.EnumC23423a.PARENT_PROPERTY;
            c23422b.f64979d = mo6004b();
        } else if (ordinal != 4) {
            C23365p.m7220a();
            throw null;
        } else {
            c23422b.f64980e = C23422b.EnumC23423a.PAYLOAD_PROPERTY;
            c23422b.f64979d = mo6004b();
        }
        return c23422b;
    }

    /* renamed from: e */
    public abstract C23422b mo6002e(AbstractC23372g abstractC23372g, C23422b c23422b) throws IOException;

    /* renamed from: f */
    public abstract C23422b mo6001f(AbstractC23372g abstractC23372g, C23422b c23422b) throws IOException;
}
