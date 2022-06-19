package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Numeric$LongIsIntegral$.class */
public class Numeric$LongIsIntegral$ implements Numeric.LongIsIntegral, Ordering.LongOrdering {
    public static final Numeric$LongIsIntegral$ MODULE$ = null;

    static {
        new Numeric$LongIsIntegral$();
    }

    public Numeric$LongIsIntegral$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Numeric.Cclass.$init$(this);
        Integral.Cclass.$init$(this);
        Numeric.LongIsIntegral.Cclass.$init$(this);
        Ordering.LongOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Numeric
    public Object abs(Object obj) {
        return Numeric.Cclass.abs(this, obj);
    }

    @Override // scala.math.Ordering.LongOrdering
    public int compare(long j, long j2) {
        return Ordering.LongOrdering.Cclass.compare(this, j, j2);
    }

    @Override // scala.math.Ordering, java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return compare(BoxesRunTime.unboxToLong(obj), BoxesRunTime.unboxToLong(obj2));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public boolean equiv(Object obj, Object obj2) {
        return Ordering.Cclass.equiv(this, obj, obj2);
    }

    @Override // scala.math.Numeric.LongIsIntegral, scala.math.Numeric
    public long fromInt(int i) {
        return Numeric.LongIsIntegral.Cclass.fromInt(this, i);
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

    @Override // scala.math.Numeric.LongIsIntegral
    public long minus(long j, long j2) {
        return Numeric.LongIsIntegral.Cclass.minus(this, j, j2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object minus(Object obj, Object obj2) {
        return BoxesRunTime.boxToLong(minus(BoxesRunTime.unboxToLong(obj), BoxesRunTime.unboxToLong(obj2)));
    }

    @Override // scala.math.Integral, scala.math.Numeric
    public Integral.IntegralOps mkNumericOps(Object obj) {
        return Integral.Cclass.mkNumericOps(this, obj);
    }

    @Override // scala.math.Ordering
    public Ordering<Object>.Ops mkOrderingOps(Object obj) {
        return Ordering.Cclass.mkOrderingOps(this, obj);
    }

    @Override // scala.math.Numeric.LongIsIntegral
    public long negate(long j) {
        return Numeric.LongIsIntegral.Cclass.negate(this, j);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object negate(Object obj) {
        return BoxesRunTime.boxToLong(negate(BoxesRunTime.unboxToLong(obj)));
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

    @Override // scala.math.Numeric.LongIsIntegral
    public long plus(long j, long j2) {
        return Numeric.LongIsIntegral.Cclass.plus(this, j, j2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object plus(Object obj, Object obj2) {
        return BoxesRunTime.boxToLong(plus(BoxesRunTime.unboxToLong(obj), BoxesRunTime.unboxToLong(obj2)));
    }

    @Override // scala.math.Numeric.LongIsIntegral
    public long quot(long j, long j2) {
        return Numeric.LongIsIntegral.Cclass.quot(this, j, j2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object quot(Object obj, Object obj2) {
        return BoxesRunTime.boxToLong(quot(BoxesRunTime.unboxToLong(obj), BoxesRunTime.unboxToLong(obj2)));
    }

    @Override // scala.math.Numeric.LongIsIntegral
    public long rem(long j, long j2) {
        return Numeric.LongIsIntegral.Cclass.rem(this, j, j2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object rem(Object obj, Object obj2) {
        return BoxesRunTime.boxToLong(rem(BoxesRunTime.unboxToLong(obj), BoxesRunTime.unboxToLong(obj2)));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<Object> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Numeric
    public int signum(Object obj) {
        return Numeric.Cclass.signum(this, obj);
    }

    @Override // scala.math.Numeric.LongIsIntegral
    public long times(long j, long j2) {
        return Numeric.LongIsIntegral.Cclass.times(this, j, j2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object times(Object obj, Object obj2) {
        return BoxesRunTime.boxToLong(times(BoxesRunTime.unboxToLong(obj), BoxesRunTime.unboxToLong(obj2)));
    }

    @Override // scala.math.Numeric.LongIsIntegral
    public double toDouble(long j) {
        return Numeric.LongIsIntegral.Cclass.toDouble(this, j);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ double toDouble(Object obj) {
        return toDouble(BoxesRunTime.unboxToLong(obj));
    }

    @Override // scala.math.Numeric.LongIsIntegral
    public float toFloat(long j) {
        return Numeric.LongIsIntegral.Cclass.toFloat(this, j);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ float toFloat(Object obj) {
        return toFloat(BoxesRunTime.unboxToLong(obj));
    }

    @Override // scala.math.Numeric.LongIsIntegral
    public int toInt(long j) {
        return Numeric.LongIsIntegral.Cclass.toInt(this, j);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ int toInt(Object obj) {
        return toInt(BoxesRunTime.unboxToLong(obj));
    }

    @Override // scala.math.Numeric.LongIsIntegral
    public long toLong(long j) {
        return Numeric.LongIsIntegral.Cclass.toLong(this, j);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ long toLong(Object obj) {
        return toLong(BoxesRunTime.unboxToLong(obj));
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
