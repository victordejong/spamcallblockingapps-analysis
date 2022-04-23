package kotlin.g;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n��\b\u0002\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B+\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0005\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0006\u0012\u0004\u0018\u00018��0\u0007¢\u0006\u0002\u0010\bJ\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\nH\u0096\u0002R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0005X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0006\u0012\u0004\u0018\u00018��0\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lkotlin/sequences/GeneratorSequence;", "T", "", "Lkotlin/sequences/Sequence;", "getInitialValue", "Lkotlin/Function0;", "getNextValue", "Lkotlin/Function1;", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "iterator", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/g/g.class */
public final class g<T> implements h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Function0<T> f36692a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<T, T> f36693b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��#\n��\n\u0002\u0010(\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\b\u0010\u000e\u001a\u00020\u000fH\u0002J\t\u0010\u0010\u001a\u00020\u0011H\u0096\u0002J\u000e\u0010\u0012\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u0004R\u001e\u0010\u0002\u001a\u0004\u0018\u00018��X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0007\u001a\u0004\b\u0003\u0010\u0004\"\u0004\b\u0005\u0010\u0006R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"kotlin/sequences/GeneratorSequence$iterator$1", "", "nextItem", "getNextItem", "()Ljava/lang/Object;", "setNextItem", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "nextState", "", "getNextState", "()I", "setNextState", "(I)V", "calcNext", "", "hasNext", "", "next", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/g/g$a.class */
    public static final class a implements Iterator<T>, kotlin.jvm.internal.a.a {

        /* renamed from: b  reason: collision with root package name */
        private T f36695b;

        /* renamed from: c  reason: collision with root package name */
        private int f36696c = -2;

        a() {
        }

        private final void a() {
            T t;
            if (this.f36696c == -2) {
                t = (T) g.this.f36692a.invoke();
            } else {
                Function1 function1 = g.this.f36693b;
                T t2 = this.f36695b;
                p.a(t2);
                t = (T) function1.invoke(t2);
            }
            this.f36695b = t;
            this.f36696c = t == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f36696c < 0) {
                a();
            }
            return this.f36696c == 1;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.f36696c < 0) {
                a();
            }
            if (this.f36696c != 0) {
                T t = this.f36695b;
                Objects.requireNonNull(t, "null cannot be cast to non-null type T");
                this.f36696c = -1;
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
    public g(Function0<? extends T> getInitialValue, Function1<? super T, ? extends T> getNextValue) {
        p.d(getInitialValue, "getInitialValue");
        p.d(getNextValue, "getNextValue");
        this.f36692a = getInitialValue;
        this.f36693b = getNextValue;
    }

    @Override // kotlin.g.h
    public final Iterator<T> a() {
        return new a();
    }
}
