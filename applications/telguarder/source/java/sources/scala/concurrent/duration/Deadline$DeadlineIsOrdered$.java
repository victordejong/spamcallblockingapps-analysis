package scala.concurrent.duration;

import scala.Function1;
import scala.Some;
import scala.math.Ordering;
import scala.math.PartialOrdering;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/Deadline$DeadlineIsOrdered$.class */
public class Deadline$DeadlineIsOrdered$ implements Ordering<Deadline> {
    public static final Deadline$DeadlineIsOrdered$ MODULE$ = null;

    static {
        new Deadline$DeadlineIsOrdered$();
    }

    public Deadline$DeadlineIsOrdered$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    public int compare(Deadline deadline, Deadline deadline2) {
        return deadline.compare(deadline2);
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

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.concurrent.duration.Deadline] */
    @Override // scala.math.Ordering
    public Deadline max(Deadline deadline, Deadline deadline2) {
        return Ordering.Cclass.max(this, deadline, deadline2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.concurrent.duration.Deadline] */
    @Override // scala.math.Ordering
    public Deadline min(Deadline deadline, Deadline deadline2) {
        return Ordering.Cclass.min(this, deadline, deadline2);
    }

    @Override // scala.math.Ordering
    public Ordering<Deadline>.Ops mkOrderingOps(Deadline deadline) {
        return Ordering.Cclass.mkOrderingOps(this, deadline);
    }

    @Override // scala.math.Ordering
    /* renamed from: on */
    public <U> Ordering<U> mo49on(Function1<U, Deadline> function1) {
        return Ordering.Cclass.m38on(this, function1);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<Deadline> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Some tryCompare(Object obj, Object obj2) {
        return Ordering.Cclass.tryCompare(this, obj, obj2);
    }
}
