package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Numeric$DoubleAsIfIntegral$.class */
public class Numeric$DoubleAsIfIntegral$ implements Numeric.DoubleAsIfIntegral, Ordering.DoubleOrdering {
    public static final Numeric$DoubleAsIfIntegral$ MODULE$ = null;

    static {
        new Numeric$DoubleAsIfIntegral$();
    }

    public Numeric$DoubleAsIfIntegral$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Numeric.Cclass.$init$(this);
        Numeric.DoubleIsConflicted.Cclass.$init$(this);
        Integral.Cclass.$init$(this);
        Numeric.DoubleAsIfIntegral.Cclass.$init$(this);
        Ordering.DoubleOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Numeric.DoubleIsConflicted
    public double abs(double d) {
        return Numeric.DoubleIsConflicted.Cclass.abs(this, d);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object abs(Object obj) {
        return BoxesRunTime.boxToDouble(abs(BoxesRunTime.unboxToDouble(obj)));
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

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, double] */
    @Override // scala.math.Numeric.DoubleIsConflicted, scala.math.Numeric
    public Object fromInt(int i) {
        return Numeric.DoubleIsConflicted.Cclass.fromInt(this, i);
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

    @Override // scala.math.Numeric.DoubleIsConflicted
    public double minus(double d, double d2) {
        return Numeric.DoubleIsConflicted.Cclass.minus(this, d, d2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object minus(Object obj, Object obj2) {
        return BoxesRunTime.boxToDouble(minus(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2)));
    }

    @Override // scala.math.Numeric
    /* renamed from: mkNumericOps */
    public Numeric<Object>.Ops mkNumericOps2(Object obj) {
        return Integral.Cclass.mkNumericOps(this, obj);
    }

    @Override // scala.math.Ordering
    public Ordering<Object>.Ops mkOrderingOps(Object obj) {
        return Ordering.Cclass.mkOrderingOps(this, obj);
    }

    @Override // scala.math.Numeric.DoubleIsConflicted
    public double negate(double d) {
        return Numeric.DoubleIsConflicted.Cclass.negate(this, d);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object negate(Object obj) {
        return BoxesRunTime.boxToDouble(negate(BoxesRunTime.unboxToDouble(obj)));
    }

    @Override // scala.math.Ordering
    /* renamed from: on */
    public <U> Ordering<U> mo49on(Function1<U, Object> function1) {
        return Ordering.Cclass.m38on(this, function1);
    }

    @Override // scala.math.Numeric
    public Object one() {
        return Numeric.Cclass.one(this);
    }

    @Override // scala.math.Numeric.DoubleIsConflicted
    public double plus(double d, double d2) {
        return Numeric.DoubleIsConflicted.Cclass.plus(this, d, d2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object plus(Object obj, Object obj2) {
        return BoxesRunTime.boxToDouble(plus(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2)));
    }

    @Override // scala.math.Numeric.DoubleAsIfIntegral
    public double quot(double d, double d2) {
        return Numeric.DoubleAsIfIntegral.Cclass.quot(this, d, d2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object quot(Object obj, Object obj2) {
        return BoxesRunTime.boxToDouble(quot(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2)));
    }

    @Override // scala.math.Numeric.DoubleAsIfIntegral
    public double rem(double d, double d2) {
        return Numeric.DoubleAsIfIntegral.Cclass.rem(this, d, d2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object rem(Object obj, Object obj2) {
        return BoxesRunTime.boxToDouble(rem(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2)));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<Object> reverse() {
        return Ordering.DoubleOrdering.Cclass.reverse(this);
    }

    @Override // scala.math.Numeric
    public int signum(Object obj) {
        return Numeric.Cclass.signum(this, obj);
    }

    @Override // scala.math.Numeric.DoubleIsConflicted
    public double times(double d, double d2) {
        return Numeric.DoubleIsConflicted.Cclass.times(this, d, d2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object times(Object obj, Object obj2) {
        return BoxesRunTime.boxToDouble(times(BoxesRunTime.unboxToDouble(obj), BoxesRunTime.unboxToDouble(obj2)));
    }

    @Override // scala.math.Numeric.DoubleIsConflicted
    public double toDouble(double d) {
        return Numeric.DoubleIsConflicted.Cclass.toDouble(this, d);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ double toDouble(Object obj) {
        return toDouble(BoxesRunTime.unboxToDouble(obj));
    }

    @Override // scala.math.Numeric.DoubleIsConflicted
    public float toFloat(double d) {
        return Numeric.DoubleIsConflicted.Cclass.toFloat(this, d);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ float toFloat(Object obj) {
        return toFloat(BoxesRunTime.unboxToDouble(obj));
    }

    @Override // scala.math.Numeric.DoubleIsConflicted
    public int toInt(double d) {
        return Numeric.DoubleIsConflicted.Cclass.toInt(this, d);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ int toInt(Object obj) {
        return toInt(BoxesRunTime.unboxToDouble(obj));
    }

    @Override // scala.math.Numeric.DoubleIsConflicted
    public long toLong(double d) {
        return Numeric.DoubleIsConflicted.Cclass.toLong(this, d);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ long toLong(Object obj) {
        return toLong(BoxesRunTime.unboxToDouble(obj));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Some tryCompare(Object obj, Object obj2) {
        return Ordering.Cclass.tryCompare(this, obj, obj2);
    }

    @Override // scala.math.Numeric
    public Object zero() {
        return Numeric.Cclass.zero(this);
    }
}
