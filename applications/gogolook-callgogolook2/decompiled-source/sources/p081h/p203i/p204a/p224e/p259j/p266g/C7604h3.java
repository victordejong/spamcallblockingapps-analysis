package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.g.h3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/h3.class */
public final class C7604h3 extends C7654n3 {

    /* renamed from: b */
    public final /* synthetic */ C7578e3 f17866b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7604h3(C7578e3 e3Var) {
        super(e3Var, null);
        this.f17866b = e3Var;
    }

    public /* synthetic */ C7604h3(C7578e3 e3Var, C7590f3 f3Var) {
        this(e3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7654n3, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new C7597g3(this.f17866b, null);
    }
}
