package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Numeric$IntIsIntegral$.class */
public class Numeric$IntIsIntegral$ implements Numeric.IntIsIntegral, Ordering.IntOrdering {
    public static final Numeric$IntIsIntegral$ MODULE$ = null;

    static {
        new Numeric$IntIsIntegral$();
    }

    public Numeric$IntIsIntegral$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Numeric.Cclass.$init$(this);
        Integral.Cclass.$init$(this);
        Numeric.IntIsIntegral.Cclass.$init$(this);
        Ordering.IntOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Numeric
    public Object abs(Object obj) {
        return Numeric.Cclass.abs(this, obj);
    }

    @Override // scala.math.Ordering.IntOrdering
    public int compare(int i, int i2) {
        return Ordering.IntOrdering.Cclass.compare(this, i, i2);
    }

    @Override // scala.math.Ordering, java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return compare(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public boolean equiv(Object obj, Object obj2) {
        return Ordering.Cclass.equiv(this, obj, obj2);
    }

    @Override // scala.math.Numeric.IntIsIntegral, scala.math.Numeric
    public int fromInt(int i) {
        return Numeric.IntIsIntegral.Cclass.fromInt(this, i);
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

    @Override // scala.math.Ordering
    public Object max(Object obj, Object obj2) {
        return Ordering.Cclass.max(this, obj, obj2);
    }

    @Override // scala.math.Ordering
    public Object min(Object obj, Object obj2) {
        return Ordering.Cclass.min(this, obj, obj2);
    }

    @Override // scala.math.Numeric.IntIsIntegral
    public int minus(int i, int i2) {
        return Numeric.IntIsIntegral.Cclass.minus(this, i, i2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object minus(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(minus(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2)));
    }

    @Override // scala.math.Integral, scala.math.Numeric
    public Integral.IntegralOps mkNumericOps(Object obj) {
        return Integral.Cclass.mkNumericOps(this, obj);
    }

    @Override // scala.math.Ordering
    public Ordering<Object>.Ops mkOrderingOps(Object obj) {
        return Ordering.Cclass.mkOrderingOps(this, obj);
    }

    @Override // scala.math.Numeric.IntIsIntegral
    public int negate(int i) {
        return Numeric.IntIsIntegral.Cclass.negate(this, i);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object negate(Object obj) {
        return BoxesRunTime.boxToInteger(negate(BoxesRunTime.unboxToInt(obj)));
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

    @Override // scala.math.Numeric.IntIsIntegral
    public int plus(int i, int i2) {
        return Numeric.IntIsIntegral.Cclass.plus(this, i, i2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object plus(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(plus(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2)));
    }

    @Override // scala.math.Numeric.IntIsIntegral
    public int quot(int i, int i2) {
        return Numeric.IntIsIntegral.Cclass.quot(this, i, i2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object quot(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(quot(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2)));
    }

    @Override // scala.math.Numeric.IntIsIntegral
    public int rem(int i, int i2) {
        return Numeric.IntIsIntegral.Cclass.rem(this, i, i2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object rem(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(rem(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2)));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<Object> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Numeric
    public int signum(Object obj) {
        return Numeric.Cclass.signum(this, obj);
    }

    @Override // scala.math.Numeric.IntIsIntegral
    public int times(int i, int i2) {
        return Numeric.IntIsIntegral.Cclass.times(this, i, i2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object times(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(times(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2)));
    }

    @Override // scala.math.Numeric.IntIsIntegral
    public double toDouble(int i) {
        return Numeric.IntIsIntegral.Cclass.toDouble(this, i);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ double toDouble(Object obj) {
        return toDouble(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.math.Numeric.IntIsIntegral
    public float toFloat(int i) {
        return Numeric.IntIsIntegral.Cclass.toFloat(this, i);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ float toFloat(Object obj) {
        return toFloat(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.math.Numeric.IntIsIntegral
    public int toInt(int i) {
        return Numeric.IntIsIntegral.Cclass.toInt(this, i);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ int toInt(Object obj) {
        return toInt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.math.Numeric.IntIsIntegral
    public long toLong(int i) {
        return Numeric.IntIsIntegral.Cclass.toLong(this, i);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ long toLong(Object obj) {
        return toLong(BoxesRunTime.unboxToInt(obj));
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
