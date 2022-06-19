package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Numeric$ByteIsIntegral$.class */
public class Numeric$ByteIsIntegral$ implements Numeric.ByteIsIntegral, Ordering.ByteOrdering {
    public static final Numeric$ByteIsIntegral$ MODULE$ = null;

    static {
        new Numeric$ByteIsIntegral$();
    }

    public Numeric$ByteIsIntegral$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Numeric.Cclass.$init$(this);
        Integral.Cclass.$init$(this);
        Numeric.ByteIsIntegral.Cclass.$init$(this);
        Ordering.ByteOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Numeric
    public Object abs(Object obj) {
        return Numeric.Cclass.abs(this, obj);
    }

    @Override // scala.math.Ordering.ByteOrdering
    public int compare(byte b, byte b2) {
        return Ordering.ByteOrdering.Cclass.compare(this, b, b2);
    }

    @Override // scala.math.Ordering, java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return compare(BoxesRunTime.unboxToByte(obj), BoxesRunTime.unboxToByte(obj2));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public boolean equiv(Object obj, Object obj2) {
        return Ordering.Cclass.equiv(this, obj, obj2);
    }

    @Override // scala.math.Numeric.ByteIsIntegral, scala.math.Numeric
    public byte fromInt(int i) {
        return Numeric.ByteIsIntegral.Cclass.fromInt(this, i);
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

    @Override // scala.math.Numeric.ByteIsIntegral
    public byte minus(byte b, byte b2) {
        return Numeric.ByteIsIntegral.Cclass.minus(this, b, b2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object minus(Object obj, Object obj2) {
        return BoxesRunTime.boxToByte(minus(BoxesRunTime.unboxToByte(obj), BoxesRunTime.unboxToByte(obj2)));
    }

    @Override // scala.math.Integral, scala.math.Numeric
    public Integral.IntegralOps mkNumericOps(Object obj) {
        return Integral.Cclass.mkNumericOps(this, obj);
    }

    @Override // scala.math.Ordering
    public Ordering<Object>.Ops mkOrderingOps(Object obj) {
        return Ordering.Cclass.mkOrderingOps(this, obj);
    }

    @Override // scala.math.Numeric.ByteIsIntegral
    public byte negate(byte b) {
        return Numeric.ByteIsIntegral.Cclass.negate(this, b);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object negate(Object obj) {
        return BoxesRunTime.boxToByte(negate(BoxesRunTime.unboxToByte(obj)));
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

    @Override // scala.math.Numeric.ByteIsIntegral
    public byte plus(byte b, byte b2) {
        return Numeric.ByteIsIntegral.Cclass.plus(this, b, b2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object plus(Object obj, Object obj2) {
        return BoxesRunTime.boxToByte(plus(BoxesRunTime.unboxToByte(obj), BoxesRunTime.unboxToByte(obj2)));
    }

    @Override // scala.math.Numeric.ByteIsIntegral
    public byte quot(byte b, byte b2) {
        return Numeric.ByteIsIntegral.Cclass.quot(this, b, b2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object quot(Object obj, Object obj2) {
        return BoxesRunTime.boxToByte(quot(BoxesRunTime.unboxToByte(obj), BoxesRunTime.unboxToByte(obj2)));
    }

    @Override // scala.math.Numeric.ByteIsIntegral
    public byte rem(byte b, byte b2) {
        return Numeric.ByteIsIntegral.Cclass.rem(this, b, b2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object rem(Object obj, Object obj2) {
        return BoxesRunTime.boxToByte(rem(BoxesRunTime.unboxToByte(obj), BoxesRunTime.unboxToByte(obj2)));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<Object> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Numeric
    public int signum(Object obj) {
        return Numeric.Cclass.signum(this, obj);
    }

    @Override // scala.math.Numeric.ByteIsIntegral
    public byte times(byte b, byte b2) {
        return Numeric.ByteIsIntegral.Cclass.times(this, b, b2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object times(Object obj, Object obj2) {
        return BoxesRunTime.boxToByte(times(BoxesRunTime.unboxToByte(obj), BoxesRunTime.unboxToByte(obj2)));
    }

    @Override // scala.math.Numeric.ByteIsIntegral
    public double toDouble(byte b) {
        return Numeric.ByteIsIntegral.Cclass.toDouble(this, b);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ double toDouble(Object obj) {
        return toDouble(BoxesRunTime.unboxToByte(obj));
    }

    @Override // scala.math.Numeric.ByteIsIntegral
    public float toFloat(byte b) {
        return Numeric.ByteIsIntegral.Cclass.toFloat(this, b);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ float toFloat(Object obj) {
        return toFloat(BoxesRunTime.unboxToByte(obj));
    }

    @Override // scala.math.Numeric.ByteIsIntegral
    public int toInt(byte b) {
        return Numeric.ByteIsIntegral.Cclass.toInt(this, b);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ int toInt(Object obj) {
        return toInt(BoxesRunTime.unboxToByte(obj));
    }

    @Override // scala.math.Numeric.ByteIsIntegral
    public long toLong(byte b) {
        return Numeric.ByteIsIntegral.Cclass.toLong(this, b);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ long toLong(Object obj) {
        return toLong(BoxesRunTime.unboxToByte(obj));
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
