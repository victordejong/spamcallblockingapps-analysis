package p131c.p161d.p170b.p173b.p176i;

import java.util.Set;
import p131c.p161d.p170b.p173b.AbstractC2495d;
import p131c.p161d.p170b.p173b.AbstractC2496e;
import p131c.p161d.p170b.p173b.AbstractC2497f;
import p131c.p161d.p170b.p173b.C2493b;
/* renamed from: c.d.b.b.i.n */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/n.class */
public final class C2573n implements AbstractC2497f {

    /* renamed from: a */
    public final Set<C2493b> f9620a;

    /* renamed from: b */
    public final AbstractC2571m f9621b;

    /* renamed from: c */
    public final AbstractC2576q f9622c;

    public C2573n(Set<C2493b> set, AbstractC2571m mVar, AbstractC2576q qVar) {
        this.f9620a = set;
        this.f9621b = mVar;
        this.f9622c = qVar;
    }

    @Override // p131c.p161d.p170b.p173b.AbstractC2497f
    /* renamed from: a */
    public <T> AbstractC2496e<T> mo29497a(String str, Class<T> cls, C2493b bVar, AbstractC2495d<T, byte[]> dVar) {
        if (this.f9620a.contains(bVar)) {
            return new C2575p(this.f9621b, str, bVar, dVar, this.f9622c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, this.f9620a));
    }

    @Override // p131c.p161d.p170b.p173b.AbstractC2497f
    /* renamed from: a */
    public <T> AbstractC2496e<T> mo29496a(String str, Class<T> cls, AbstractC2495d<T, byte[]> dVar) {
        return mo29497a(str, cls, C2493b.m29661a("proto"), dVar);
    }
}
