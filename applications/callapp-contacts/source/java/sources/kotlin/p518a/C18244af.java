package kotlin.p518a;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.p534a.AbstractC18481a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\b��\u0018��*\u0006\b��\u0010\u0001 \u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00030\u0002B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0002¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\tH\u0086\u0002J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0086\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lkotlin/collections/IndexingIterator;", "T", "", "Lkotlin/collections/IndexedValue;", "iterator", "(Ljava/util/Iterator;)V", "index", "", "hasNext", "", "next", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.a.af */
/* loaded from: classes5-dex2jar.jar:kotlin/a/af.class */
public final class C18244af<T> implements Iterator<C18242ad<? extends T>>, AbstractC18481a {

    /* renamed from: a */
    private int f63355a;

    /* renamed from: b */
    private final Iterator<T> f63356b;

    /* JADX WARN: Multi-variable type inference failed */
    public C18244af(Iterator<? extends T> iterator) {
        C18524p.m3840d(iterator, "iterator");
        this.f63356b = iterator;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f63356b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        int i = this.f63355a;
        this.f63355a = i + 1;
        if (i < 0) {
            C18282n.m4175a();
        }
        return new C18242ad(i, this.f63356b.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
