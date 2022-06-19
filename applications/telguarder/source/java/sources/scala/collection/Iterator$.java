package scala.collection;

import java.util.NoSuchElementException;
import scala.Function0;
import scala.Function1;
import scala.collection.TraversableOnce;
import scala.collection.mutable.ArrayBuffer;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$.class */
public final class Iterator$ {
    public static final Iterator$ MODULE$ = null;
    private final Iterator<Nothing$> empty = new AbstractIterator<Nothing$>() { // from class: scala.collection.Iterator$$anon$2
        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // scala.collection.Iterator
        public Nothing$ next() {
            throw new NoSuchElementException("next on empty iterator");
        }
    };

    static {
        new Iterator$();
    }

    private Iterator$() {
        MODULE$ = this;
    }

    public <A> TraversableOnce.BufferedCanBuildFrom<A, Iterator> IteratorCanBuildFrom() {
        return new TraversableOnce.BufferedCanBuildFrom<A, Iterator>() { // from class: scala.collection.Iterator$$anon$24
            @Override // scala.collection.TraversableOnce.BufferedCanBuildFrom
            /* renamed from: bufferToColl */
            public <B> Iterator bufferToColl2(ArrayBuffer<B> arrayBuffer) {
                return arrayBuffer.iterator();
            }

            @Override // scala.collection.TraversableOnce.BufferedCanBuildFrom
            /* renamed from: traversableToColl */
            public <B> Iterator traversableToColl2(GenTraversable<B> genTraversable) {
                return genTraversable.toIterator();
            }
        };
    }

    public <A> Iterator<A> apply(Seq<A> seq) {
        return seq.iterator();
    }

    public <A> Iterator<A> continually(Function0<A> function0) {
        return new Iterator$$anon$9(function0);
    }

    public Iterator<Nothing$> empty() {
        return this.empty;
    }

    public <A> Iterator<A> fill(int i, Function0<A> function0) {
        return new AbstractIterator<A>(i, function0) { // from class: scala.collection.Iterator$$anon$4
            private final Function0 elem$2;

            /* renamed from: i */
            private int f1517i = 0;
            private final int len$1;

            {
                this.len$1 = i;
                this.elem$2 = function0;
            }

            /* renamed from: i */
            private int m190i() {
                return this.f1517i;
            }

            private void i_$eq(int i2) {
                this.f1517i = i2;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return m190i() < this.len$1;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // scala.collection.Iterator
            public A next() {
                Nothing$ nothing$;
                if (hasNext()) {
                    i_$eq(m190i() + 1);
                    nothing$ = this.elem$2.apply();
                } else {
                    nothing$ = Iterator$.MODULE$.empty().next();
                }
                return nothing$;
            }
        };
    }

    public Iterator<Object> from(int i) {
        return from(i, 1);
    }

    public Iterator<Object> from(int i, int i2) {
        return new AbstractIterator<Object>(i, i2) { // from class: scala.collection.Iterator$$anon$8

            /* renamed from: i */
            private int f1520i;
            private final int step$2;

            {
                this.step$2 = i2;
                this.f1520i = i;
            }

            /* renamed from: i */
            private int m187i() {
                return this.f1520i;
            }

            private void i_$eq(int i3) {
                this.f1520i = i3;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return true;
            }

            @Override // scala.collection.Iterator
            public int next() {
                int m187i = m187i();
                i_$eq(m187i() + this.step$2);
                return m187i;
            }
        };
    }

    public <T> Iterator<T> iterate(T t, Function1<T, T> function1) {
        return new Iterator$$anon$7(t, function1);
    }

    public Iterator<Object> range(int i, int i2) {
        return range(i, i2, 1);
    }

    public Iterator<Object> range(int i, int i2, int i3) {
        return new AbstractIterator<Object>(i, i2, i3) { // from class: scala.collection.Iterator$$anon$6
            private final int end$2;

            /* renamed from: i */
            private int f1519i;
            private final int step$1;

            {
                this.end$2 = i2;
                this.step$1 = i3;
                if (i3 != 0) {
                    this.f1519i = i;
                    return;
                }
                throw new IllegalArgumentException("zero step");
            }

            /* renamed from: i */
            private int m188i() {
                return this.f1519i;
            }

            private void i_$eq(int i4) {
                this.f1519i = i4;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return (this.step$1 <= 0 || m188i() < this.end$2) && (this.step$1 >= 0 || m188i() > this.end$2);
            }

            @Override // scala.collection.Iterator
            public int next() {
                int i4;
                if (hasNext()) {
                    i4 = m188i();
                    i_$eq(m188i() + this.step$1);
                } else {
                    i4 = BoxesRunTime.unboxToInt(Iterator$.MODULE$.empty().next());
                }
                return i4;
            }
        };
    }

    public <A> Iterator<A> single(A a) {
        return new AbstractIterator<A>(a) { // from class: scala.collection.Iterator$$anon$3
            private final Object elem$1;
            private boolean hasnext = true;

            {
                this.elem$1 = a;
            }

            private boolean hasnext() {
                return this.hasnext;
            }

            private void hasnext_$eq(boolean z) {
                this.hasnext = z;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return hasnext();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // scala.collection.Iterator
            public A next() {
                Nothing$ nothing$;
                if (hasnext()) {
                    hasnext_$eq(false);
                    nothing$ = this.elem$1;
                } else {
                    nothing$ = Iterator$.MODULE$.empty().next();
                }
                return nothing$;
            }
        };
    }

    public <A> Iterator<A> tabulate(int i, Function1<Object, A> function1) {
        return new AbstractIterator<A>(i, function1) { // from class: scala.collection.Iterator$$anon$5
            private final int end$1;
            private final Function1 f$1;

            /* renamed from: i */
            private int f1518i = 0;

            {
                this.end$1 = i;
                this.f$1 = function1;
            }

            /* renamed from: i */
            private int m189i() {
                return this.f1518i;
            }

            private void i_$eq(int i2) {
                this.f1518i = i2;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return m189i() < this.end$1;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // scala.collection.Iterator
            public A next() {
                Nothing$ nothing$;
                if (hasNext()) {
                    nothing$ = this.f$1.apply(BoxesRunTime.boxToInteger(m189i()));
                    i_$eq(m189i() + 1);
                } else {
                    nothing$ = Iterator$.MODULE$.empty().next();
                }
                return nothing$;
            }
        };
    }
}
