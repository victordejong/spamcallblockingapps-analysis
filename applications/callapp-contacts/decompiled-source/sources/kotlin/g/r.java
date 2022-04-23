package kotlin.g;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0002\b��\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00020\u0003B'\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J3\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0003\"\u0004\b\u0002\u0010\t2\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\t0\u000b0\u0006H��¢\u0006\u0002\b\fJ\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0096\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lkotlin/sequences/TransformingSequence;", "T", "R", "Lkotlin/sequences/Sequence;", "sequence", "transformer", "Lkotlin/Function1;", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V", "flatten", "E", "iterator", "", "flatten$kotlin_stdlib", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/g/r.class */
public final class r<T, R> implements h<R> {

    /* renamed from: a  reason: collision with root package name */
    private final h<T> f36715a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<T, R> f36716b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0015\n��\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\t\u0010\u0005\u001a\u00020\u0006H\u0096\u0002J\u000e\u0010\u0007\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\bR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001¢\u0006\b\n��\u001a\u0004\b\u0003\u0010\u0004¨\u0006\t"}, d2 = {"kotlin/sequences/TransformingSequence$iterator$1", "", "iterator", "getIterator", "()Ljava/util/Iterator;", "hasNext", "", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/g/r$a.class */
    public static final class a implements Iterator<R>, kotlin.jvm.internal.a.a {

        /* renamed from: b  reason: collision with root package name */
        private final Iterator<T> f36718b;

        a() {
            this.f36718b = r.this.f36715a.a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f36718b.hasNext();
        }

        @Override // java.util.Iterator
        public final R next() {
            return (R) r.this.f36716b.invoke(this.f36718b.next());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public r(h<? extends T> sequence, Function1<? super T, ? extends R> transformer) {
        p.d(sequence, "sequence");
        p.d(transformer, "transformer");
        this.f36715a = sequence;
        this.f36716b = transformer;
    }

    @Override // kotlin.g.h
    public final Iterator<R> a() {
        return new a();
    }

    public final <E> h<E> a(Function1<? super R, ? extends Iterator<? extends E>> iterator) {
        p.d(iterator, "iterator");
        return new f(this.f36715a, this.f36716b, iterator);
    }
}
