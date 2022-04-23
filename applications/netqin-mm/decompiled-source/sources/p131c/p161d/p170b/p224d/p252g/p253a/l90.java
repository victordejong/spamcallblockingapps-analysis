package p131c.p161d.p170b.p224d.p252g.p253a;

import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.l90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/l90.class */
public final class l90 extends r90 {

    /* renamed from: b */
    public final /* synthetic */ k90 f13946b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l90(k90 k90Var) {
        super(k90Var, null);
        this.f13946b = k90Var;
    }

    public /* synthetic */ l90(k90 k90Var, j90 j90Var) {
        this(k90Var);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.r90, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new m90(this.f13946b, null);
    }
}
