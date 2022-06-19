package p193e.p1545k.p1546a.p1556c.p1563f0;

import java.beans.ConstructorProperties;
import java.beans.Transient;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23669m;
/* renamed from: e.k.a.c.f0.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/f0/d.class */
public class C23628d extends AbstractC23627c {
    @Override // p193e.p1545k.p1546a.p1556c.p1563f0.AbstractC23627c
    /* renamed from: a */
    public C23951v mo6512a(C23669m c23669m) {
        ConstructorProperties mo6387c;
        AbstractC23670n abstractC23670n = c23669m.f65631c;
        if (abstractC23670n == null || (mo6387c = abstractC23670n.mo6387c(ConstructorProperties.class)) == null) {
            return null;
        }
        String[] value = mo6387c.value();
        int i = c23669m.f65633e;
        if (i >= value.length) {
            return null;
        }
        return C23951v.m5665a(value[i]);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1563f0.AbstractC23627c
    /* renamed from: b */
    public Boolean mo6511b(AbstractC23636b abstractC23636b) {
        Transient mo6387c = abstractC23636b.mo6387c(Transient.class);
        if (mo6387c != null) {
            return Boolean.valueOf(mo6387c.value());
        }
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1563f0.AbstractC23627c
    /* renamed from: c */
    public Boolean mo6510c(AbstractC23636b abstractC23636b) {
        if (abstractC23636b.mo6387c(ConstructorProperties.class) != null) {
            return Boolean.TRUE;
        }
        return null;
    }
}
