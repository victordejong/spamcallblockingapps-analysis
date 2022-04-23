package kotlin.a;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.a.a;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\b��\u0018��*\u0006\b��\u0010\u0001 \u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00030\u0002B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0002¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\tH\u0086\u0002J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0086\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lkotlin/collections/IndexingIterator;", "T", "", "Lkotlin/collections/IndexedValue;", "iterator", "(Ljava/util/Iterator;)V", "index", "", "hasNext", "", "next", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/a/af.class */
public final class af<T> implements Iterator<ad<? extends T>>, a {

    /* renamed from: a  reason: collision with root package name */
    private int f36571a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterator<T> f36572b;

    /* JADX WARN: Multi-variable type inference failed */
    public af(Iterator<? extends T> iterator) {
        p.d(iterator, "iterator");
        this.f36572b = iterator;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f36572b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        int i = this.f36571a;
        this.f36571a = i + 1;
        if (i < 0) {
            n.a();
        }
        return new ad(i, this.f36572b.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
