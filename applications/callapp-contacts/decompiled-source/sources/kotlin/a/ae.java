package kotlin.a;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.a.a;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b��\u0018��*\u0006\b��\u0010\u0001 \u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00030\u0002B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0015\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00030\u0006H\u0096\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lkotlin/collections/IndexingIterable;", "T", "", "Lkotlin/collections/IndexedValue;", "iteratorFactory", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)V", "iterator", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/a/ae.class */
public final class ae<T> implements Iterable<ad<? extends T>>, a {

    /* renamed from: a  reason: collision with root package name */
    private final Function0<Iterator<T>> f36570a;

    /* JADX WARN: Multi-variable type inference failed */
    public ae(Function0<? extends Iterator<? extends T>> iteratorFactory) {
        p.d(iteratorFactory, "iteratorFactory");
        this.f36570a = iteratorFactory;
    }

    @Override // java.lang.Iterable
    public final Iterator<ad<T>> iterator() {
        return new af(this.f36570a.invoke());
    }
}
