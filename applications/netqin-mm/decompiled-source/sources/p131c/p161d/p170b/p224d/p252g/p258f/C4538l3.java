package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzik;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.l3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/l3.class */
public final class C4538l3<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    public Iterator<Map.Entry<K, Object>> f16806a;

    public C4538l3(Iterator<Map.Entry<K, Object>> it) {
        this.f16806a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16806a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f16806a.next();
        return next.getValue() instanceof zzik ? new C4520j3(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f16806a.remove();
    }
}
