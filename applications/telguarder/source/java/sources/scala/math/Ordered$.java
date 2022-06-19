package scala.math;

import scala.math.Ordered;
/* loaded from: classes3-dex2jar.jar:scala/math/Ordered$.class */
public final class Ordered$ {
    public static final Ordered$ MODULE$ = null;

    static {
        new Ordered$();
    }

    private Ordered$() {
        MODULE$ = this;
    }

    public <T> Ordered<T> orderingToOrdered(T t, Ordering<T> ordering) {
        return new Ordered<T>(t, ordering) { // from class: scala.math.Ordered$$anon$1
            private final Ordering ord$1;
            private final Object x$1;

            {
                this.x$1 = t;
                this.ord$1 = ordering;
                Ordered.Cclass.$init$(this);
            }

            @Override // scala.math.Ordered
            public boolean $greater(T t2) {
                return Ordered.Cclass.$greater(this, t2);
            }

            @Override // scala.math.Ordered
            public boolean $greater$eq(T t2) {
                return Ordered.Cclass.$greater$eq(this, t2);
            }

            @Override // scala.math.Ordered
            public boolean $less(T t2) {
                return Ordered.Cclass.$less(this, t2);
            }

            @Override // scala.math.Ordered
            public boolean $less$eq(T t2) {
                return Ordered.Cclass.$less$eq(this, t2);
            }

            @Override // scala.math.Ordered
            public int compare(T t2) {
                return this.ord$1.compare(this.x$1, t2);
            }

            @Override // scala.math.Ordered, java.lang.Comparable
            public int compareTo(T t2) {
                return Ordered.Cclass.compareTo(this, t2);
            }
        };
    }
}
