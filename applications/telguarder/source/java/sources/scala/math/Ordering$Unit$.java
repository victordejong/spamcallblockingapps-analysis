package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/math/Ordering$Unit$.class */
public class Ordering$Unit$ implements Ordering.UnitOrdering {
    public static final Ordering$Unit$ MODULE$ = null;

    static {
        new Ordering$Unit$();
    }

    public Ordering$Unit$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Ordering.UnitOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Ordering.UnitOrdering
    public int compare(BoxedUnit boxedUnit, BoxedUnit boxedUnit2) {
        return Ordering.UnitOrdering.Cclass.compare(this, boxedUnit, boxedUnit2);
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

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.runtime.BoxedUnit] */
    @Override // scala.math.Ordering
    public BoxedUnit max(BoxedUnit boxedUnit, BoxedUnit boxedUnit2) {
        return Ordering.Cclass.max(this, boxedUnit, boxedUnit2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.runtime.BoxedUnit] */
    @Override // scala.math.Ordering
    public BoxedUnit min(BoxedUnit boxedUnit, BoxedUnit boxedUnit2) {
        return Ordering.Cclass.min(this, boxedUnit, boxedUnit2);
    }

    @Override // scala.math.Ordering
    public Ordering<BoxedUnit>.Ops mkOrderingOps(BoxedUnit boxedUnit) {
        return Ordering.Cclass.mkOrderingOps(this, boxedUnit);
    }

    @Override // scala.math.Ordering
    /* renamed from: on */
    public <U> Ordering<U> mo49on(Function1<U, BoxedUnit> function1) {
        return Ordering.Cclass.m38on(this, function1);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<BoxedUnit> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Some tryCompare(Object obj, Object obj2) {
        return Ordering.Cclass.tryCompare(this, obj, obj2);
    }
}
