package scala.concurrent.duration;

import scala.Function1;
import scala.Some;
import scala.math.Ordering;
import scala.math.PartialOrdering;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/FiniteDuration$FiniteDurationIsOrdered$.class */
public class FiniteDuration$FiniteDurationIsOrdered$ implements Ordering<FiniteDuration> {
    public static final FiniteDuration$FiniteDurationIsOrdered$ MODULE$ = null;

    static {
        new FiniteDuration$FiniteDurationIsOrdered$();
    }

    public FiniteDuration$FiniteDurationIsOrdered$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    public int compare(FiniteDuration finiteDuration, FiniteDuration finiteDuration2) {
        return finiteDuration.compare((Duration) finiteDuration2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public boolean equiv(Object obj, Object obj2) {
        return Ordering.Cclass.equiv(this, obj, obj2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    /* renamed from: gt */
    public boolean mo37gt(Object obj, Object obj2) {
        return Ordering.Cclass.m40gt(this, obj, obj2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public boolean gteq(Object obj, Object obj2) {
        return Ordering.Cclass.gteq(this, obj, obj2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    /* renamed from: lt */
    public boolean mo36lt(Object obj, Object obj2) {
        return Ordering.Cclass.m39lt(this, obj, obj2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public boolean lteq(Object obj, Object obj2) {
        return Ordering.Cclass.lteq(this, obj, obj2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.concurrent.duration.FiniteDuration, java.lang.Object] */
    @Override // scala.math.Ordering
    public FiniteDuration max(FiniteDuration finiteDuration, FiniteDuration finiteDuration2) {
        return Ordering.Cclass.max(this, finiteDuration, finiteDuration2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.concurrent.duration.FiniteDuration, java.lang.Object] */
    @Override // scala.math.Ordering
    public FiniteDuration min(FiniteDuration finiteDuration, FiniteDuration finiteDuration2) {
        return Ordering.Cclass.min(this, finiteDuration, finiteDuration2);
    }

    @Override // scala.math.Ordering
    public Ordering<FiniteDuration>.Ops mkOrderingOps(FiniteDuration finiteDuration) {
        return Ordering.Cclass.mkOrderingOps(this, finiteDuration);
    }

    @Override // scala.math.Ordering
    /* renamed from: on */
    public <U> Ordering<U> mo49on(Function1<U, FiniteDuration> function1) {
        return Ordering.Cclass.m38on(this, function1);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<FiniteDuration> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Some tryCompare(Object obj, Object obj2) {
        return Ordering.Cclass.tryCompare(this, obj, obj2);
    }
}
