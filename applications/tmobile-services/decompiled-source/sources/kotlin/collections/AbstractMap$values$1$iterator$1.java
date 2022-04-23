package kotlin.collections;

import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0015\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0010\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"kotlin/collections/AbstractMap$values$1$iterator$1", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractMap$values$1$iterator$1.class */
public final class AbstractMap$values$1$iterator$1 implements Iterator<V>, KMappedMarker {

    /* renamed from: f */
    final /* synthetic */ Iterator f20468f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractMap$values$1$iterator$1(Iterator it) {
        this.f20468f = it;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f20468f.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [V, java.lang.Object] */
    @Override // java.util.Iterator
    public V next() {
        return ((Map.Entry) this.f20468f.next()).getValue();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
