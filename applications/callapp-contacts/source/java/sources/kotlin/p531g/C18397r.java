package kotlin.p531g;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.p534a.AbstractC18481a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0002\b��\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00020\u0003B'\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J3\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0003\"\u0004\b\u0002\u0010\t2\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\t0\u000b0\u0006H��¢\u0006\u0002\b\fJ\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0096\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lkotlin/sequences/TransformingSequence;", "T", "R", "Lkotlin/sequences/Sequence;", "sequence", "transformer", "Lkotlin/Function1;", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V", "flatten", "E", "iterator", "", "flatten$kotlin_stdlib", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.g.r */
/* loaded from: classes5-dex2jar.jar:kotlin/g/r.class */
public final class C18397r<T, R> implements AbstractC18378h<R> {

    /* renamed from: a */
    private final AbstractC18378h<T> f63512a;

    /* renamed from: b */
    private final Function1<T, R> f63513b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0015\n��\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\t\u0010\u0005\u001a\u00020\u0006H\u0096\u0002J\u000e\u0010\u0007\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\bR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001¢\u0006\b\n��\u001a\u0004\b\u0003\u0010\u0004¨\u0006\t"}, m4298d2 = {"kotlin/sequences/TransformingSequence$iterator$1", "", "iterator", "getIterator", "()Ljava/util/Iterator;", "hasNext", "", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.g.r$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/g/r$a.class */
    public static final class C18398a implements Iterator<R>, AbstractC18481a {

        /* renamed from: b */
        private final Iterator<T> f63515b;

        C18398a() {
            C18397r.this = r4;
            this.f63515b = r4.f63512a.mo3908a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f63515b.hasNext();
        }

        @Override // java.util.Iterator
        public final R next() {
            return (R) C18397r.this.f63513b.invoke(this.f63515b.next());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C18397r(AbstractC18378h<? extends T> sequence, Function1<? super T, ? extends R> transformer) {
        C18524p.m3840d(sequence, "sequence");
        C18524p.m3840d(transformer, "transformer");
        this.f63512a = sequence;
        this.f63513b = transformer;
    }

    @Override // kotlin.p531g.AbstractC18378h
    /* renamed from: a */
    public final Iterator<R> mo3908a() {
        return new C18398a();
    }

    /* renamed from: a */
    public final <E> AbstractC18378h<E> m4004a(Function1<? super R, ? extends Iterator<? extends E>> iterator) {
        C18524p.m3840d(iterator, "iterator");
        return new C18374f(this.f63512a, this.f63513b, iterator);
    }
}
