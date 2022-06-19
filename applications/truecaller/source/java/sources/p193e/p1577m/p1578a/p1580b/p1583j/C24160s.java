package p193e.p1577m.p1578a.p1580b.p1583j;

import java.util.Set;
import p193e.p1577m.p1578a.p1580b.AbstractC23990e;
import p193e.p1577m.p1578a.p1580b.AbstractC23991f;
import p193e.p1577m.p1578a.p1580b.AbstractC23992g;
import p193e.p1577m.p1578a.p1580b.C23987b;
/* renamed from: e.m.a.b.j.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/s.class */
public final class C24160s implements AbstractC23992g {

    /* renamed from: a */
    public final Set<C23987b> f66885a;

    /* renamed from: b */
    public final AbstractC24158r f66886b;

    /* renamed from: c */
    public final AbstractC24162u f66887c;

    public C24160s(Set<C23987b> set, AbstractC24158r abstractC24158r, AbstractC24162u abstractC24162u) {
        this.f66885a = set;
        this.f66886b = abstractC24158r;
        this.f66887c = abstractC24162u;
    }

    @Override // p193e.p1577m.p1578a.p1580b.AbstractC23992g
    /* renamed from: a */
    public <T> AbstractC23991f<T> mo5520a(String str, Class<T> cls, C23987b c23987b, AbstractC23990e<T, byte[]> abstractC23990e) {
        if (this.f66885a.contains(c23987b)) {
            return new C24161t(this.f66886b, str, c23987b, abstractC23990e, this.f66887c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", c23987b, this.f66885a));
    }
}
