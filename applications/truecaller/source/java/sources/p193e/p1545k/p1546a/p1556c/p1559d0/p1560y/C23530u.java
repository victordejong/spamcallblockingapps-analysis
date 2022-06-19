package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23618d;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.y.u */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/u.class */
public class C23530u implements AbstractC23484r, Serializable {

    /* renamed from: a */
    public final C23951v f65288a;

    /* renamed from: b */
    public final AbstractC23698i f65289b;

    public C23530u(C23951v c23951v, AbstractC23698i abstractC23698i) {
        this.f65288a = c23951v;
        this.f65289b = abstractC23698i;
    }

    /* renamed from: a */
    public static C23530u m6692a(AbstractC23698i abstractC23698i) {
        return new C23530u(null, abstractC23698i);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r
    /* renamed from: c */
    public Object mo6233c(AbstractC23632g abstractC23632g) throws C23733k {
        C23951v c23951v = this.f65288a;
        int i = C23618d.f65475d;
        Annotation[] annotationArr = C23914g.f66156a;
        throw new C23618d(abstractC23632g, String.format("Invalid `null` value encountered for property %s", c23951v == null ? "<UNKNOWN>" : String.format("\"%s\"", c23951v)), c23951v);
    }
}
