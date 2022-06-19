package kotlin.p518a;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.p534a.AbstractC18481a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b��\u0018��*\u0006\b��\u0010\u0001 \u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00030\u0002B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0015\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00030\u0006H\u0096\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lkotlin/collections/IndexingIterable;", "T", "", "Lkotlin/collections/IndexedValue;", "iteratorFactory", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)V", "iterator", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.a.ae */
/* loaded from: classes5-dex2jar.jar:kotlin/a/ae.class */
public final class C18243ae<T> implements Iterable<C18242ad<? extends T>>, AbstractC18481a {

    /* renamed from: a */
    private final Function0<Iterator<T>> f63354a;

    /* JADX WARN: Multi-variable type inference failed */
    public C18243ae(Function0<? extends Iterator<? extends T>> iteratorFactory) {
        C18524p.m3840d(iteratorFactory, "iteratorFactory");
        this.f63354a = iteratorFactory;
    }

    @Override // java.lang.Iterable
    public final Iterator<C18242ad<T>> iterator() {
        return new C18244af(this.f63354a.invoke());
    }
}
