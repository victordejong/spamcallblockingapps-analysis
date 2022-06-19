package scala.collection;

import java.util.Objects;
import scala.collection.BufferedIterator;
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$$anon$1.class */
public final class Iterator$$anon$1 extends AbstractIterator<A> implements BufferedIterator<A> {
    private final /* synthetic */ Iterator $outer;

    /* renamed from: hd */
    private A f1512hd;
    private boolean hdDefined = false;

    public Iterator$$anon$1(Iterator<A> iterator) {
        Objects.requireNonNull(iterator);
        this.$outer = iterator;
        BufferedIterator.Cclass.$init$(this);
    }

    /* renamed from: hd */
    private A m195hd() {
        return this.f1512hd;
    }

    private boolean hdDefined() {
        return this.hdDefined;
    }

    private void hdDefined_$eq(boolean z) {
        this.hdDefined = z;
    }

    private void hd_$eq(A a) {
        this.f1512hd = a;
    }

    @Override // scala.collection.AbstractIterator, scala.collection.Iterator
    public BufferedIterator<A> buffered() {
        return BufferedIterator.Cclass.buffered(this);
    }

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return hdDefined() || this.$outer.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [A, java.lang.Object] */
    @Override // scala.collection.BufferedIterator
    public A head() {
        if (!hdDefined()) {
            hd_$eq(next());
            hdDefined_$eq(true);
        }
        return m195hd();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.Iterator
    public A next() {
        Object obj;
        if (hdDefined()) {
            hdDefined_$eq(false);
            obj = m195hd();
        } else {
            obj = this.$outer.next();
        }
        return obj;
    }
}
