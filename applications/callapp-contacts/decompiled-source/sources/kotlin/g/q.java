package kotlin.g;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010(\n��\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B'\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\tH\u0096\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lkotlin/sequences/TakeWhileSequence;", "T", "Lkotlin/sequences/Sequence;", "sequence", "predicate", "Lkotlin/Function1;", "", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V", "iterator", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/g/q.class */
public final class q<T> implements h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final h<T> f36709a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<T, Boolean> f36710b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��#\n��\n\u0002\u0010(\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\b\u0010\u0011\u001a\u00020\u0012H\u0002J\t\u0010\u0013\u001a\u00020\u0014H\u0096\u0002J\u000e\u0010\u0015\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001¢\u0006\b\n��\u001a\u0004\b\u0003\u0010\u0004R\u001e\u0010\u0005\u001a\u0004\u0018\u00018��X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"kotlin/sequences/TakeWhileSequence$iterator$1", "", "iterator", "getIterator", "()Ljava/util/Iterator;", "nextItem", "getNextItem", "()Ljava/lang/Object;", "setNextItem", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "nextState", "", "getNextState", "()I", "setNextState", "(I)V", "calcNext", "", "hasNext", "", "next", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/g/q$a.class */
    public static final class a implements Iterator<T>, kotlin.jvm.internal.a.a {

        /* renamed from: b  reason: collision with root package name */
        private final Iterator<T> f36712b;

        /* renamed from: c  reason: collision with root package name */
        private int f36713c = -1;

        /* renamed from: d  reason: collision with root package name */
        private T f36714d;

        a() {
            this.f36712b = q.this.f36709a.a();
        }

        private final void a() {
            if (this.f36712b.hasNext()) {
                T next = this.f36712b.next();
                if (((Boolean) q.this.f36710b.invoke(next)).booleanValue()) {
                    this.f36713c = 1;
                    this.f36714d = next;
                    return;
                }
            }
            this.f36713c = 0;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f36713c == -1) {
                a();
            }
            return this.f36713c == 1;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.f36713c == -1) {
                a();
            }
            if (this.f36713c != 0) {
                T t = this.f36714d;
                this.f36714d = null;
                this.f36713c = -1;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public q(h<? extends T> sequence, Function1<? super T, Boolean> predicate) {
        p.d(sequence, "sequence");
        p.d(predicate, "predicate");
        this.f36709a = sequence;
        this.f36710b = predicate;
    }

    @Override // kotlin.g.h
    public final Iterator<T> a() {
        return new a();
    }
}
