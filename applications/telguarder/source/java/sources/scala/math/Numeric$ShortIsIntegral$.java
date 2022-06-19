package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Numeric$ShortIsIntegral$.class */
public class Numeric$ShortIsIntegral$ implements Numeric.ShortIsIntegral, Ordering.ShortOrdering {
    public static final Numeric$ShortIsIntegral$ MODULE$ = null;

    static {
        new Numeric$ShortIsIntegral$();
    }

    public Numeric$ShortIsIntegral$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Numeric.Cclass.$init$(this);
        Integral.Cclass.$init$(this);
        Numeric.ShortIsIntegral.Cclass.$init$(this);
        Ordering.ShortOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Numeric
    public Object abs(Object obj) {
        return Numeric.Cclass.abs(this, obj);
    }

    @Override // scala.math.Ordering, java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return compare(BoxesRunTime.unboxToShort(obj), BoxesRunTime.unboxToShort(obj2));
    }

    @Override // scala.math.Ordering.ShortOrdering
    public int compare(short s, short s2) {
        return Ordering.ShortOrdering.Cclass.compare(this, s, s2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public boolean equiv(Object obj, Object obj2) {
        return Ordering.Cclass.equiv(this, obj, obj2);
    }

    @Override // scala.math.Numeric.ShortIsIntegral, scala.math.Numeric
    public short fromInt(int i) {
        return Numeric.ShortIsIntegral.Cclass.fromInt(this, i);
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

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object minus(Object obj, Object obj2) {
        return BoxesRunTime.boxToShort(minus(BoxesRunTime.unboxToShort(obj), BoxesRunTime.unboxToShort(obj2)));
    }

    @Override // scala.math.Numeric.ShortIsIntegral
    public short minus(short s, short s2) {
        return Numeric.ShortIsIntegral.Cclass.minus(this, s, s2);
    }

    @Override // scala.math.Integral, scala.math.Numeric
    public Integral.IntegralOps mkNumericOps(Object obj) {
        return Integral.Cclass.mkNumericOps(this, obj);
    }

    @Override // scala.math.Ordering
    public Ordering<Object>.Ops mkOrderingOps(Object obj) {
        return Ordering.Cclass.mkOrderingOps(this, obj);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object negate(Object obj) {
        return BoxesRunTime.boxToShort(negate(BoxesRunTime.unboxToShort(obj)));
    }

    @Override // scala.math.Numeric.ShortIsIntegral
    public short negate(short s) {
        return Numeric.ShortIsIntegral.Cclass.negate(this, s);
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

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object plus(Object obj, Object obj2) {
        return BoxesRunTime.boxToShort(plus(BoxesRunTime.unboxToShort(obj), BoxesRunTime.unboxToShort(obj2)));
    }

    @Override // scala.math.Numeric.ShortIsIntegral
    public short plus(short s, short s2) {
        return Numeric.ShortIsIntegral.Cclass.plus(this, s, s2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object quot(Object obj, Object obj2) {
        return BoxesRunTime.boxToShort(quot(BoxesRunTime.unboxToShort(obj), BoxesRunTime.unboxToShort(obj2)));
    }

    @Override // scala.math.Numeric.ShortIsIntegral
    public short quot(short s, short s2) {
        return Numeric.ShortIsIntegral.Cclass.quot(this, s, s2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object rem(Object obj, Object obj2) {
        return BoxesRunTime.boxToShort(rem(BoxesRunTime.unboxToShort(obj), BoxesRunTime.unboxToShort(obj2)));
    }

    @Override // scala.math.Numeric.ShortIsIntegral
    public short rem(short s, short s2) {
        return Numeric.ShortIsIntegral.Cclass.rem(this, s, s2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<Object> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Numeric
    public int signum(Object obj) {
        return Numeric.Cclass.signum(this, obj);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object times(Object obj, Object obj2) {
        return BoxesRunTime.boxToShort(times(BoxesRunTime.unboxToShort(obj), BoxesRunTime.unboxToShort(obj2)));
    }

    @Override // scala.math.Numeric.ShortIsIntegral
    public short times(short s, short s2) {
        return Numeric.ShortIsIntegral.Cclass.times(this, s, s2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ double toDouble(Object obj) {
        return toDouble(BoxesRunTime.unboxToShort(obj));
    }

    @Override // scala.math.Numeric.ShortIsIntegral
    public double toDouble(short s) {
        return Numeric.ShortIsIntegral.Cclass.toDouble(this, s);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ float toFloat(Object obj) {
        return toFloat(BoxesRunTime.unboxToShort(obj));
    }

    @Override // scala.math.Numeric.ShortIsIntegral
    public float toFloat(short s) {
        return Numeric.ShortIsIntegral.Cclass.toFloat(this, s);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ int toInt(Object obj) {
        return toInt(BoxesRunTime.unboxToShort(obj));
    }

    @Override // scala.math.Numeric.ShortIsIntegral
    public int toInt(short s) {
        return Numeric.ShortIsIntegral.Cclass.toInt(this, s);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ long toLong(Object obj) {
        return toLong(BoxesRunTime.unboxToShort(obj));
    }

    @Override // scala.math.Numeric.ShortIsIntegral
    public long toLong(short s) {
        return Numeric.ShortIsIntegral.Cclass.toLong(this, s);
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
