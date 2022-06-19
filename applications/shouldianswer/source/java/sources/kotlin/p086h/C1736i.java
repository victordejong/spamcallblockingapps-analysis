package kotlin.p086h;

import java.util.Iterator;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.h.i */
/* loaded from: classes-dex2jar.jar:kotlin/h/i.class */
public final class C1736i<T, R> implements AbstractC1728b<R> {

    /* renamed from: a */
    private final AbstractC1728b<T> f4407a;

    /* renamed from: b */
    private final AbstractC1663b<T, R> f4408b;

    /* renamed from: kotlin.h.i$a */
    /* loaded from: classes-dex2jar.jar:kotlin/h/i$a.class */
    public static final class C1737a implements Iterator<R> {

        /* renamed from: b */
        private final Iterator<T> f4410b;

        C1737a() {
            C1736i.this = r4;
            this.f4410b = r4.f4407a.mo2994a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4410b.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) C1736i.this.f4408b.mo138a(this.f4410b.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1736i(AbstractC1728b<? extends T> abstractC1728b, AbstractC1663b<? super T, ? extends R> abstractC1663b) {
        C1694h.m3117b(abstractC1728b, "sequence");
        C1694h.m3117b(abstractC1663b, "transformer");
        this.f4407a = abstractC1728b;
        this.f4408b = abstractC1663b;
    }

    @Override // kotlin.p086h.AbstractC1728b
    /* renamed from: a */
    public Iterator<R> mo2994a() {
        return new C1737a();
    }
}
