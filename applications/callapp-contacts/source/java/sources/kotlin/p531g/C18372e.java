package kotlin.p531g;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p534a.AbstractC18481a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n��\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B1\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\u0010\bJ\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\nH\u0096\u0002R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lkotlin/sequences/FilteringSequence;", "T", "Lkotlin/sequences/Sequence;", "sequence", "sendWhen", "", "predicate", "Lkotlin/Function1;", "(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V", "iterator", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.g.e */
/* loaded from: classes5-dex2jar.jar:kotlin/g/e.class */
public final class C18372e<T> implements AbstractC18378h<T> {

    /* renamed from: a */
    private final AbstractC18378h<T> f63476a;

    /* renamed from: b */
    private final boolean f63477b;

    /* renamed from: c */
    private final Function1<T, Boolean> f63478c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��#\n��\n\u0002\u0010(\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\b\u0010\u0011\u001a\u00020\u0012H\u0002J\t\u0010\u0013\u001a\u00020\u0014H\u0096\u0002J\u000e\u0010\u0015\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001¢\u0006\b\n��\u001a\u0004\b\u0003\u0010\u0004R\u001e\u0010\u0005\u001a\u0004\u0018\u00018��X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m4298d2 = {"kotlin/sequences/FilteringSequence$iterator$1", "", "iterator", "getIterator", "()Ljava/util/Iterator;", "nextItem", "getNextItem", "()Ljava/lang/Object;", "setNextItem", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "nextState", "", "getNextState", "()I", "setNextState", "(I)V", "calcNext", "", "hasNext", "", "next", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.g.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/g/e$a.class */
    public static final class C18373a implements Iterator<T>, AbstractC18481a {

        /* renamed from: b */
        private final Iterator<T> f63480b;

        /* renamed from: c */
        private int f63481c = -1;

        /* renamed from: d */
        private T f63482d;

        C18373a() {
            C18372e.this = r4;
            this.f63480b = r4.f63476a.mo3908a();
        }

        /* renamed from: a */
        private final void m4041a() {
            while (this.f63480b.hasNext()) {
                T next = this.f63480b.next();
                if (((Boolean) C18372e.this.f63478c.invoke(next)).booleanValue() == C18372e.this.f63477b) {
                    this.f63482d = next;
                    this.f63481c = 1;
                    return;
                }
            }
            this.f63481c = 0;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f63481c == -1) {
                m4041a();
            }
            return this.f63481c == 1;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.f63481c == -1) {
                m4041a();
            }
            if (this.f63481c != 0) {
                T t = this.f63482d;
                this.f63482d = null;
                this.f63481c = -1;
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
    public C18372e(AbstractC18378h<? extends T> sequence, boolean z, Function1<? super T, Boolean> predicate) {
        C18524p.m3840d(sequence, "sequence");
        C18524p.m3840d(predicate, "predicate");
        this.f63476a = sequence;
        this.f63477b = z;
        this.f63478c = predicate;
    }

    public /* synthetic */ C18372e(AbstractC18378h abstractC18378h, boolean z, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC18378h, (i & 2) != 0 ? true : z, function1);
    }

    @Override // kotlin.p531g.AbstractC18378h
    /* renamed from: a */
    public final Iterator<T> mo3908a() {
        return new C18373a();
    }
}
