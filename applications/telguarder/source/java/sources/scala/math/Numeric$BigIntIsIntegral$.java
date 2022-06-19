package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.PartialOrdering;
/* loaded from: classes3-dex2jar.jar:scala/math/Numeric$BigIntIsIntegral$.class */
public class Numeric$BigIntIsIntegral$ implements Numeric.BigIntIsIntegral, Ordering.BigIntOrdering {
    public static final Numeric$BigIntIsIntegral$ MODULE$ = null;

    static {
        new Numeric$BigIntIsIntegral$();
    }

    public Numeric$BigIntIsIntegral$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Numeric.Cclass.$init$(this);
        Integral.Cclass.$init$(this);
        Numeric.BigIntIsIntegral.Cclass.$init$(this);
        Ordering.BigIntOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Numeric
    public Object abs(Object obj) {
        return Numeric.Cclass.abs(this, obj);
    }

    @Override // scala.math.Ordering.BigIntOrdering
    public int compare(BigInt bigInt, BigInt bigInt2) {
        return Ordering.BigIntOrdering.Cclass.compare(this, bigInt, bigInt2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public boolean equiv(Object obj, Object obj2) {
        return Ordering.Cclass.equiv(this, obj, obj2);
    }

    @Override // scala.math.Numeric.BigIntIsIntegral, scala.math.Numeric
    public BigInt fromInt(int i) {
        return Numeric.BigIntIsIntegral.Cclass.fromInt(this, i);
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

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.math.BigInt] */
    @Override // scala.math.Ordering
    public BigInt max(BigInt bigInt, BigInt bigInt2) {
        return Ordering.Cclass.max(this, bigInt, bigInt2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.math.BigInt] */
    @Override // scala.math.Ordering
    public BigInt min(BigInt bigInt, BigInt bigInt2) {
        return Ordering.Cclass.min(this, bigInt, bigInt2);
    }

    @Override // scala.math.Numeric.BigIntIsIntegral
    public BigInt minus(BigInt bigInt, BigInt bigInt2) {
        return Numeric.BigIntIsIntegral.Cclass.minus(this, bigInt, bigInt2);
    }

    @Override // scala.math.Integral, scala.math.Numeric
    public Integral.IntegralOps mkNumericOps(Object obj) {
        return Integral.Cclass.mkNumericOps(this, obj);
    }

    @Override // scala.math.Ordering
    public Ordering<BigInt>.Ops mkOrderingOps(BigInt bigInt) {
        return Ordering.Cclass.mkOrderingOps(this, bigInt);
    }

    @Override // scala.math.Numeric.BigIntIsIntegral
    public BigInt negate(BigInt bigInt) {
        return Numeric.BigIntIsIntegral.Cclass.negate(this, bigInt);
    }

    @Override // scala.math.Ordering
    /* renamed from: on */
    public <U> Ordering<U> mo49on(Function1<U, BigInt> function1) {
        return Ordering.Cclass.m38on(this, function1);
    }

    @Override // scala.math.Numeric
    public Object one() {
        return Numeric.Cclass.one(this);
    }

    @Override // scala.math.Numeric.BigIntIsIntegral
    public BigInt plus(BigInt bigInt, BigInt bigInt2) {
        return Numeric.BigIntIsIntegral.Cclass.plus(this, bigInt, bigInt2);
    }

    @Override // scala.math.Numeric.BigIntIsIntegral
    public BigInt quot(BigInt bigInt, BigInt bigInt2) {
        return Numeric.BigIntIsIntegral.Cclass.quot(this, bigInt, bigInt2);
    }

    @Override // scala.math.Numeric.BigIntIsIntegral
    public BigInt rem(BigInt bigInt, BigInt bigInt2) {
        return Numeric.BigIntIsIntegral.Cclass.rem(this, bigInt, bigInt2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<BigInt> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Numeric
    public int signum(Object obj) {
        return Numeric.Cclass.signum(this, obj);
    }

    @Override // scala.math.Numeric.BigIntIsIntegral
    public BigInt times(BigInt bigInt, BigInt bigInt2) {
        return Numeric.BigIntIsIntegral.Cclass.times(this, bigInt, bigInt2);
    }

    @Override // scala.math.Numeric.BigIntIsIntegral
    public double toDouble(BigInt bigInt) {
        return Numeric.BigIntIsIntegral.Cclass.toDouble(this, bigInt);
    }

    @Override // scala.math.Numeric.BigIntIsIntegral
    public float toFloat(BigInt bigInt) {
        return Numeric.BigIntIsIntegral.Cclass.toFloat(this, bigInt);
    }

    @Override // scala.math.Numeric.BigIntIsIntegral
    public int toInt(BigInt bigInt) {
        return Numeric.BigIntIsIntegral.Cclass.toInt(this, bigInt);
    }

    @Override // scala.math.Numeric.BigIntIsIntegral
    public long toLong(BigInt bigInt) {
        return Numeric.BigIntIsIntegral.Cclass.toLong(this, bigInt);
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
