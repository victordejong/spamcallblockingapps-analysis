package p000;

import java.util.Iterator;
/* renamed from: hl1 */
/* loaded from: classes3-dex2jar.jar:hl1.class */
public final class hl1<T, R> implements bl1<R> {

    /* renamed from: a */
    public final bl1<T> f6737a;

    /* renamed from: b */
    public final jk1<T, R> f6738b;

    /* renamed from: hl1$a */
    /* loaded from: classes3-dex2jar.jar:hl1$a.class */
    public static final class C1444a implements Iterator<R> {

        /* renamed from: a */
        public final Iterator<T> f6739a;

        public C1444a() {
            hl1.this = r4;
            this.f6739a = r4.f6737a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f6739a.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) hl1.this.f6738b.mo451a(this.f6739a.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public hl1(bl1<? extends T> bl1Var, jk1<? super T, ? extends R> jk1Var) {
        qk1.m744c(bl1Var, "sequence");
        qk1.m744c(jk1Var, "transformer");
        this.f6737a = bl1Var;
        this.f6738b = jk1Var;
    }

    @Override // p000.bl1
    public Iterator<R> iterator() {
        return new C1444a();
    }
}
