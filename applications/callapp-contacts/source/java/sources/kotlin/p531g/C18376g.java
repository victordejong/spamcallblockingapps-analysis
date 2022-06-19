package kotlin.p531g;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.p534a.AbstractC18481a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n��\b\u0002\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B+\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0005\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0006\u0012\u0004\u0018\u00018��0\u0007¢\u0006\u0002\u0010\bJ\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\nH\u0096\u0002R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0005X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028��\u0012\u0006\u0012\u0004\u0018\u00018��0\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lkotlin/sequences/GeneratorSequence;", "T", "", "Lkotlin/sequences/Sequence;", "getInitialValue", "Lkotlin/Function0;", "getNextValue", "Lkotlin/Function1;", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "iterator", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.g.g */
/* loaded from: classes5-dex2jar.jar:kotlin/g/g.class */
public final class C18376g<T> implements AbstractC18378h<T> {

    /* renamed from: a */
    private final Function0<T> f63489a;

    /* renamed from: b */
    private final Function1<T, T> f63490b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��#\n��\n\u0002\u0010(\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\b\u0010\u000e\u001a\u00020\u000fH\u0002J\t\u0010\u0010\u001a\u00020\u0011H\u0096\u0002J\u000e\u0010\u0012\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u0004R\u001e\u0010\u0002\u001a\u0004\u0018\u00018��X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0007\u001a\u0004\b\u0003\u0010\u0004\"\u0004\b\u0005\u0010\u0006R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0013"}, m4298d2 = {"kotlin/sequences/GeneratorSequence$iterator$1", "", "nextItem", "getNextItem", "()Ljava/lang/Object;", "setNextItem", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "nextState", "", "getNextState", "()I", "setNextState", "(I)V", "calcNext", "", "hasNext", "", "next", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.g.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/g/g$a.class */
    public static final class C18377a implements Iterator<T>, AbstractC18481a {

        /* renamed from: b */
        private T f63492b;

        /* renamed from: c */
        private int f63493c = -2;

        C18377a() {
            C18376g.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        private final void m4034a() {
            T t;
            if (this.f63493c == -2) {
                t = C18376g.this.f63489a.invoke();
            } else {
                Function1 function1 = C18376g.this.f63490b;
                T t2 = this.f63492b;
                C18524p.m3851a(t2);
                t = function1.invoke(t2);
            }
            this.f63492b = t;
            this.f63493c = t == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f63493c < 0) {
                m4034a();
            }
            return this.f63493c == 1;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.f63493c < 0) {
                m4034a();
            }
            if (this.f63493c != 0) {
                T t = this.f63492b;
                Objects.requireNonNull(t, "null cannot be cast to non-null type T");
                this.f63493c = -1;
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
    public C18376g(Function0<? extends T> getInitialValue, Function1<? super T, ? extends T> getNextValue) {
        C18524p.m3840d(getInitialValue, "getInitialValue");
        C18524p.m3840d(getNextValue, "getNextValue");
        this.f63489a = getInitialValue;
        this.f63490b = getNextValue;
    }

    @Override // kotlin.p531g.AbstractC18378h
    /* renamed from: a */
    public final Iterator<T> mo3908a() {
        return new C18377a();
    }
}
