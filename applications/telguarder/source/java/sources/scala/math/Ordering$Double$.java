package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Ordering$Double$.class */
public class Ordering$Double$ implements Ordering.DoubleOrdering {
    public static final Ordering$Double$ MODULE$ = null;

    static {
        new Ordering$Double$();
    }

    public Ordering$Double$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Ordering.DoubleOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Ordering.DoubleOrdering
    public int compare(double d, double d2) {
        return Ordering.DoubleOrdering.Cclass.compare(this, d, d2);
    }

    @Override // scala.math.Ordering, java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return compare(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
    }

    @Override // scala.math.Ordering.DoubleOrdering
    public boolean equiv(double d, double d2) {
        return Ordering.DoubleOrdering.Cclass.equiv(this, d, d2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public /* bridge */ /* synthetic */ boolean equiv(Object obj, Object obj2) {
        return equiv(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
    }

    @Override // scala.math.Ordering.DoubleOrdering
    /* renamed from: gt */
    public boolean mo48gt(double d, double d2) {
        return Ordering.DoubleOrdering.Cclass.m46gt(this, d, d2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    /* renamed from: gt */
    public /* bridge */ /* synthetic */ boolean mo37gt(Object obj, Object obj2) {
        return mo48gt(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
    }

    @Override // scala.math.Ordering.DoubleOrdering
    public boolean gteq(double d, double d2) {
        return Ordering.DoubleOrdering.Cclass.gteq(this, d, d2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public /* bridge */ /* synthetic */ boolean gteq(Object obj, Object obj2) {
        return gteq(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
    }

    @Override // scala.math.Ordering.DoubleOrdering
    /* renamed from: lt */
    public boolean mo47lt(double d, double d2) {
        return Ordering.DoubleOrdering.Cclass.m45lt(this, d, d2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    /* renamed from: lt */
    public /* bridge */ /* synthetic */ boolean mo36lt(Object obj, Object obj2) {
        return mo47lt(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
    }

    @Override // scala.math.Ordering.DoubleOrdering
    public boolean lteq(double d, double d2) {
        return Ordering.DoubleOrdering.Cclass.lteq(this, d, d2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public /* bridge */ /* synthetic */ boolean lteq(Object obj, Object obj2) {
        return lteq(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2));
    }

    @Override // scala.math.Ordering.DoubleOrdering
    public double max(double d, double d2) {
        return Ordering.DoubleOrdering.Cclass.max(this, d, d2);
    }

    @Override // scala.math.Ordering
    public /* bridge */ /* synthetic */ Object max(Object obj, Object obj2) {
        return BoxesRunTime.boxToDouble(max(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2)));
    }

    @Override // scala.math.Ordering.DoubleOrdering
    public double min(double d, double d2) {
        return Ordering.DoubleOrdering.Cclass.min(this, d, d2);
    }

    @Override // scala.math.Ordering
    public /* bridge */ /* synthetic */ Object min(Object obj, Object obj2) {
        return BoxesRunTime.boxToDouble(min(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2)));
    }

    @Override // scala.math.Ordering
    public Ordering<Object>.Ops mkOrderingOps(Object obj) {
        return Ordering.Cclass.mkOrderingOps(this, obj);
    }

    @Override // scala.math.Ordering
    /* renamed from: on */
    public <U> Ordering<U> mo49on(Function1<U, Object> function1) {
        return Ordering.Cclass.m38on(this, function1);
    }

    @Override // scala.math.Ordering.DoubleOrdering, scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<Object> reverse() {
        return Ordering.DoubleOrdering.Cclass.reverse(this);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Some tryCompare(Object obj, Object obj2) {
        return Ordering.Cclass.tryCompare(this, obj, obj2);
    }
}
