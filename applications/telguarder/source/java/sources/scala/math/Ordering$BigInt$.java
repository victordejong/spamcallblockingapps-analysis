package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Ordering;
import scala.math.PartialOrdering;
/* loaded from: classes3-dex2jar.jar:scala/math/Ordering$BigInt$.class */
public class Ordering$BigInt$ implements Ordering.BigIntOrdering {
    public static final Ordering$BigInt$ MODULE$ = null;

    static {
        new Ordering$BigInt$();
    }

    public Ordering$BigInt$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Ordering.BigIntOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Ordering.BigIntOrdering
    public int compare(BigInt bigInt, BigInt bigInt2) {
        return Ordering.BigIntOrdering.Cclass.compare(this, bigInt, bigInt2);
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

    @Override // scala.math.Ordering
    public Ordering<BigInt>.Ops mkOrderingOps(BigInt bigInt) {
        return Ordering.Cclass.mkOrderingOps(this, bigInt);
    }

    @Override // scala.math.Ordering
    /* renamed from: on */
    public <U> Ordering<U> mo49on(Function1<U, BigInt> function1) {
        return Ordering.Cclass.m38on(this, function1);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<BigInt> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Some tryCompare(Object obj, Object obj2) {
        return Ordering.Cclass.tryCompare(this, obj, obj2);
    }
}
