package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.q.f6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/f6.class */
public final class C8602f6 extends C8667l6 {

    /* renamed from: b */
    public final /* synthetic */ C8575c6 f19679b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8602f6(C8575c6 c6Var) {
        super(c6Var, null);
        this.f19679b = c6Var;
    }

    public /* synthetic */ C8602f6(C8575c6 c6Var, C8584d6 d6Var) {
        this(c6Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8667l6, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new C8593e6(this.f19679b, null);
    }
}
