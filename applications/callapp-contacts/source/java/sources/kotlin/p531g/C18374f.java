package kotlin.p531g;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.p534a.AbstractC18481a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010(\n\u0002\b\u0002\b��\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u0002H\u00030\u0004BA\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t0\u0007¢\u0006\u0002\u0010\nJ\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00020\tH\u0096\u0002R \u0010\b\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lkotlin/sequences/FlatteningSequence;", "T", "R", "E", "Lkotlin/sequences/Sequence;", "sequence", "transformer", "Lkotlin/Function1;", "iterator", "", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.g.f */
/* loaded from: classes5-dex2jar.jar:kotlin/g/f.class */
public final class C18374f<T, R, E> implements AbstractC18378h<E> {

    /* renamed from: a */
    private final AbstractC18378h<T> f63483a;

    /* renamed from: b */
    private final Function1<T, R> f63484b;

    /* renamed from: c */
    private final Function1<R, Iterator<E>> f63485c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0015\n��\n\u0002\u0010(\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\b\u0010\t\u001a\u00020\nH\u0002J\t\u0010\u000b\u001a\u00020\nH\u0096\u0002J\u000e\u0010\f\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\rR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0003\u0010\u0004\"\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0004¨\u0006\u000e"}, m4298d2 = {"kotlin/sequences/FlatteningSequence$iterator$1", "", "itemIterator", "getItemIterator", "()Ljava/util/Iterator;", "setItemIterator", "(Ljava/util/Iterator;)V", "iterator", "getIterator", "ensureItemIterator", "", "hasNext", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.g.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/g/f$a.class */
    public static final class C18375a implements Iterator<E>, AbstractC18481a {

        /* renamed from: b */
        private final Iterator<T> f63487b;

        /* renamed from: c */
        private Iterator<? extends E> f63488c;

        C18375a() {
            C18374f.this = r4;
            this.f63487b = r4.f63483a.mo3908a();
        }

        /* renamed from: a */
        private final boolean m4037a() {
            Iterator<? extends E> it2 = this.f63488c;
            if (it2 != null && !it2.hasNext()) {
                this.f63488c = null;
            }
            while (this.f63488c == null) {
                if (!this.f63487b.hasNext()) {
                    return false;
                }
                Iterator<? extends E> it3 = (Iterator) C18374f.this.f63485c.invoke(C18374f.this.f63484b.invoke(this.f63487b.next()));
                if (it3.hasNext()) {
                    this.f63488c = it3;
                    return true;
                }
            }
            return true;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return m4037a();
        }

        @Override // java.util.Iterator
        public final E next() {
            if (m4037a()) {
                Iterator<? extends E> it2 = this.f63488c;
                C18524p.m3851a(it2);
                return it2.next();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C18374f(AbstractC18378h<? extends T> sequence, Function1<? super T, ? extends R> transformer, Function1<? super R, ? extends Iterator<? extends E>> iterator) {
        C18524p.m3840d(sequence, "sequence");
        C18524p.m3840d(transformer, "transformer");
        C18524p.m3840d(iterator, "iterator");
        this.f63483a = sequence;
        this.f63484b = transformer;
        this.f63485c = iterator;
    }

    @Override // kotlin.p531g.AbstractC18378h
    /* renamed from: a */
    public final Iterator<E> mo3908a() {
        return new C18375a();
    }
}
