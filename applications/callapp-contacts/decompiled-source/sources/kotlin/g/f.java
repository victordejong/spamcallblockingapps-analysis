package kotlin.g;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010(\n\u0002\b\u0002\b��\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u0002H\u00030\u0004BA\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t0\u0007¢\u0006\u0002\u0010\nJ\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00020\tH\u0096\u0002R \u0010\b\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lkotlin/sequences/FlatteningSequence;", "T", "R", "E", "Lkotlin/sequences/Sequence;", "sequence", "transformer", "Lkotlin/Function1;", "iterator", "", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/g/f.class */
public final class f<T, R, E> implements h<E> {

    /* renamed from: a  reason: collision with root package name */
    private final h<T> f36686a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<T, R> f36687b;

    /* renamed from: c  reason: collision with root package name */
    private final Function1<R, Iterator<E>> f36688c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0015\n��\n\u0002\u0010(\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\b\u0010\t\u001a\u00020\nH\u0002J\t\u0010\u000b\u001a\u00020\nH\u0096\u0002J\u000e\u0010\f\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\rR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0003\u0010\u0004\"\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0004¨\u0006\u000e"}, d2 = {"kotlin/sequences/FlatteningSequence$iterator$1", "", "itemIterator", "getItemIterator", "()Ljava/util/Iterator;", "setItemIterator", "(Ljava/util/Iterator;)V", "iterator", "getIterator", "ensureItemIterator", "", "hasNext", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/g/f$a.class */
    public static final class a implements Iterator<E>, kotlin.jvm.internal.a.a {

        /* renamed from: b  reason: collision with root package name */
        private final Iterator<T> f36690b;

        /* renamed from: c  reason: collision with root package name */
        private Iterator<? extends E> f36691c;

        a() {
            this.f36690b = f.this.f36686a.a();
        }

        private final boolean a() {
            Iterator<? extends E> it2 = this.f36691c;
            if (it2 != null && !it2.hasNext()) {
                this.f36691c = null;
            }
            while (this.f36691c == null) {
                if (!this.f36690b.hasNext()) {
                    return false;
                }
                Iterator<? extends E> it3 = (Iterator) f.this.f36688c.invoke(f.this.f36687b.invoke(this.f36690b.next()));
                if (it3.hasNext()) {
                    this.f36691c = it3;
                    return true;
                }
            }
            return true;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return a();
        }

        @Override // java.util.Iterator
        public final E next() {
            if (a()) {
                Iterator<? extends E> it2 = this.f36691c;
                p.a(it2);
                return (E) it2.next();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(h<? extends T> sequence, Function1<? super T, ? extends R> transformer, Function1<? super R, ? extends Iterator<? extends E>> iterator) {
        p.d(sequence, "sequence");
        p.d(transformer, "transformer");
        p.d(iterator, "iterator");
        this.f36686a = sequence;
        this.f36687b = transformer;
        this.f36688c = iterator;
    }

    @Override // kotlin.g.h
    public final Iterator<E> a() {
        return new a();
    }
}
