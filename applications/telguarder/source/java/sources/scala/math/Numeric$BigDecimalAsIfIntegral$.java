package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.PartialOrdering;
/* loaded from: classes3-dex2jar.jar:scala/math/Numeric$BigDecimalAsIfIntegral$.class */
public class Numeric$BigDecimalAsIfIntegral$ implements Numeric.BigDecimalAsIfIntegral, Ordering.BigDecimalOrdering {
    public static final Numeric$BigDecimalAsIfIntegral$ MODULE$ = null;

    static {
        new Numeric$BigDecimalAsIfIntegral$();
    }

    public Numeric$BigDecimalAsIfIntegral$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Numeric.Cclass.$init$(this);
        Numeric.BigDecimalIsConflicted.Cclass.$init$(this);
        Integral.Cclass.$init$(this);
        Numeric.BigDecimalAsIfIntegral.Cclass.$init$(this);
        Ordering.BigDecimalOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.math.BigDecimal] */
    @Override // scala.math.Numeric
    public BigDecimal abs(BigDecimal bigDecimal) {
        return Numeric.Cclass.abs(this, bigDecimal);
    }

    @Override // scala.math.Ordering.BigDecimalOrdering
    public int compare(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return Ordering.BigDecimalOrdering.Cclass.compare(this, bigDecimal, bigDecimal2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public boolean equiv(Object obj, Object obj2) {
        return Ordering.Cclass.equiv(this, obj, obj2);
    }

    @Override // scala.math.Numeric.BigDecimalIsConflicted, scala.math.Numeric
    public BigDecimal fromInt(int i) {
        return Numeric.BigDecimalIsConflicted.Cclass.fromInt(this, i);
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

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.math.BigDecimal] */
    @Override // scala.math.Ordering
    public BigDecimal max(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return Ordering.Cclass.max(this, bigDecimal, bigDecimal2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.math.BigDecimal] */
    @Override // scala.math.Ordering
    public BigDecimal min(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return Ordering.Cclass.min(this, bigDecimal, bigDecimal2);
    }

    @Override // scala.math.Numeric.BigDecimalIsConflicted
    public BigDecimal minus(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return Numeric.BigDecimalIsConflicted.Cclass.minus(this, bigDecimal, bigDecimal2);
    }

    @Override // scala.math.Numeric
    public Numeric<BigDecimal>.Ops mkNumericOps(BigDecimal bigDecimal) {
        return Integral.Cclass.mkNumericOps(this, bigDecimal);
    }

    @Override // scala.math.Ordering
    public Ordering<BigDecimal>.Ops mkOrderingOps(BigDecimal bigDecimal) {
        return Ordering.Cclass.mkOrderingOps(this, bigDecimal);
    }

    @Override // scala.math.Numeric.BigDecimalIsConflicted
    public BigDecimal negate(BigDecimal bigDecimal) {
        return Numeric.BigDecimalIsConflicted.Cclass.negate(this, bigDecimal);
    }

    @Override // scala.math.Ordering
    /* renamed from: on */
    public <U> Ordering<U> mo49on(Function1<U, BigDecimal> function1) {
        return Ordering.Cclass.m38on(this, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.math.BigDecimal] */
    @Override // scala.math.Numeric
    public BigDecimal one() {
        return Numeric.Cclass.one(this);
    }

    @Override // scala.math.Numeric.BigDecimalIsConflicted
    public BigDecimal plus(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return Numeric.BigDecimalIsConflicted.Cclass.plus(this, bigDecimal, bigDecimal2);
    }

    @Override // scala.math.Numeric.BigDecimalAsIfIntegral
    public BigDecimal quot(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return Numeric.BigDecimalAsIfIntegral.Cclass.quot(this, bigDecimal, bigDecimal2);
    }

    @Override // scala.math.Numeric.BigDecimalAsIfIntegral
    public BigDecimal rem(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return Numeric.BigDecimalAsIfIntegral.Cclass.rem(this, bigDecimal, bigDecimal2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<BigDecimal> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Numeric
    public int signum(BigDecimal bigDecimal) {
        return Numeric.Cclass.signum(this, bigDecimal);
    }

    @Override // scala.math.Numeric.BigDecimalIsConflicted
    public BigDecimal times(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return Numeric.BigDecimalIsConflicted.Cclass.times(this, bigDecimal, bigDecimal2);
    }

    @Override // scala.math.Numeric.BigDecimalIsConflicted
    public double toDouble(BigDecimal bigDecimal) {
        return Numeric.BigDecimalIsConflicted.Cclass.toDouble(this, bigDecimal);
    }

    @Override // scala.math.Numeric.BigDecimalIsConflicted
    public float toFloat(BigDecimal bigDecimal) {
        return Numeric.BigDecimalIsConflicted.Cclass.toFloat(this, bigDecimal);
    }

    @Override // scala.math.Numeric.BigDecimalIsConflicted
    public int toInt(BigDecimal bigDecimal) {
        return Numeric.BigDecimalIsConflicted.Cclass.toInt(this, bigDecimal);
    }

    @Override // scala.math.Numeric.BigDecimalIsConflicted
    public long toLong(BigDecimal bigDecimal) {
        return Numeric.BigDecimalIsConflicted.Cclass.toLong(this, bigDecimal);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Some tryCompare(Object obj, Object obj2) {
        return Ordering.Cclass.tryCompare(this, obj, obj2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.math.BigDecimal] */
    @Override // scala.math.Numeric
    public BigDecimal zero() {
        return Numeric.Cclass.zero(this);
    }
}
