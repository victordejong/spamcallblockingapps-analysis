package scala.math;

import scala.Function1;
import scala.Function2;
import scala.Some;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Ordering$$anon$9.class */
public final class Ordering$$anon$9 implements Ordering<T> {
    private final Function2 cmp$1;

    public Ordering$$anon$9(Function2 function2) {
        this.cmp$1 = function2;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
    }

    @Override // scala.math.Ordering, java.util.Comparator
    public int compare(T t, T t2) {
        return BoxesRunTime.unboxToBoolean(this.cmp$1.apply(t, t2)) ? -1 : BoxesRunTime.unboxToBoolean(this.cmp$1.apply(t2, t)) ? 1 : 0;
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public boolean equiv(T t, T t2) {
        return Ordering.Cclass.equiv(this, t, t2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    /* renamed from: gt */
    public boolean mo37gt(T t, T t2) {
        return BoxesRunTime.unboxToBoolean(this.cmp$1.apply(t2, t));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public boolean gteq(T t, T t2) {
        return !BoxesRunTime.unboxToBoolean(this.cmp$1.apply(t, t2));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    /* renamed from: lt */
    public boolean mo36lt(T t, T t2) {
        return BoxesRunTime.unboxToBoolean(this.cmp$1.apply(t, t2));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public boolean lteq(T t, T t2) {
        return !BoxesRunTime.unboxToBoolean(this.cmp$1.apply(t2, t));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @Override // scala.math.Ordering
    public T max(T t, T t2) {
        return Ordering.Cclass.max(this, t, t2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @Override // scala.math.Ordering
    public T min(T t, T t2) {
        return Ordering.Cclass.min(this, t, t2);
    }

    @Override // scala.math.Ordering
    public Ordering<T>.Ops mkOrderingOps(T t) {
        return Ordering.Cclass.mkOrderingOps(this, t);
    }

    @Override // scala.math.Ordering
    /* renamed from: on */
    public <U> Ordering<U> mo49on(Function1<U, T> function1) {
        return Ordering.Cclass.m38on(this, function1);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<T> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Some<Object> tryCompare(T t, T t2) {
        return Ordering.Cclass.tryCompare(this, t, t2);
    }
}
