package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Ordering;
import scala.math.PartialOrdering;
/* loaded from: classes3-dex2jar.jar:scala/math/Ordering$BigDecimal$.class */
public class Ordering$BigDecimal$ implements Ordering.BigDecimalOrdering {
    public static final Ordering$BigDecimal$ MODULE$ = null;

    static {
        new Ordering$BigDecimal$();
    }

    public Ordering$BigDecimal$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Ordering.BigDecimalOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Ordering.BigDecimalOrdering
    public int compare(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return Ordering.BigDecimalOrdering.Cclass.compare(this, bigDecimal, bigDecimal2);
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

    @Override // scala.math.Ordering
    public Ordering<BigDecimal>.Ops mkOrderingOps(BigDecimal bigDecimal) {
        return Ordering.Cclass.mkOrderingOps(this, bigDecimal);
    }

    @Override // scala.math.Ordering
    /* renamed from: on */
    public <U> Ordering<U> mo49on(Function1<U, BigDecimal> function1) {
        return Ordering.Cclass.m38on(this, function1);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<BigDecimal> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Some tryCompare(Object obj, Object obj2) {
        return Ordering.Cclass.tryCompare(this, obj, obj2);
    }
}
