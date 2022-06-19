package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Numeric$CharIsIntegral$.class */
public class Numeric$CharIsIntegral$ implements Numeric.CharIsIntegral, Ordering.CharOrdering {
    public static final Numeric$CharIsIntegral$ MODULE$ = null;

    static {
        new Numeric$CharIsIntegral$();
    }

    public Numeric$CharIsIntegral$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Numeric.Cclass.$init$(this);
        Integral.Cclass.$init$(this);
        Numeric.CharIsIntegral.Cclass.$init$(this);
        Ordering.CharOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Numeric
    public Object abs(Object obj) {
        return Numeric.Cclass.abs(this, obj);
    }

    @Override // scala.math.Ordering.CharOrdering
    public int compare(char c, char c2) {
        return Ordering.CharOrdering.Cclass.compare(this, c, c2);
    }

    @Override // scala.math.Ordering, java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return compare(BoxesRunTime.unboxToChar(obj), BoxesRunTime.unboxToChar(obj2));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public boolean equiv(Object obj, Object obj2) {
        return Ordering.Cclass.equiv(this, obj, obj2);
    }

    @Override // scala.math.Numeric.CharIsIntegral, scala.math.Numeric
    public char fromInt(int i) {
        return Numeric.CharIsIntegral.Cclass.fromInt(this, i);
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

    @Override // scala.math.Numeric.CharIsIntegral
    public char minus(char c, char c2) {
        return Numeric.CharIsIntegral.Cclass.minus(this, c, c2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object minus(Object obj, Object obj2) {
        return BoxesRunTime.boxToCharacter(minus(BoxesRunTime.unboxToChar(obj), BoxesRunTime.unboxToChar(obj2)));
    }

    @Override // scala.math.Integral, scala.math.Numeric
    public Integral.IntegralOps mkNumericOps(Object obj) {
        return Integral.Cclass.mkNumericOps(this, obj);
    }

    @Override // scala.math.Ordering
    public Ordering<Object>.Ops mkOrderingOps(Object obj) {
        return Ordering.Cclass.mkOrderingOps(this, obj);
    }

    @Override // scala.math.Numeric.CharIsIntegral
    public char negate(char c) {
        return Numeric.CharIsIntegral.Cclass.negate(this, c);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object negate(Object obj) {
        return BoxesRunTime.boxToCharacter(negate(BoxesRunTime.unboxToChar(obj)));
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

    @Override // scala.math.Numeric.CharIsIntegral
    public char plus(char c, char c2) {
        return Numeric.CharIsIntegral.Cclass.plus(this, c, c2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object plus(Object obj, Object obj2) {
        return BoxesRunTime.boxToCharacter(plus(BoxesRunTime.unboxToChar(obj), BoxesRunTime.unboxToChar(obj2)));
    }

    @Override // scala.math.Numeric.CharIsIntegral
    public char quot(char c, char c2) {
        return Numeric.CharIsIntegral.Cclass.quot(this, c, c2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object quot(Object obj, Object obj2) {
        return BoxesRunTime.boxToCharacter(quot(BoxesRunTime.unboxToChar(obj), BoxesRunTime.unboxToChar(obj2)));
    }

    @Override // scala.math.Numeric.CharIsIntegral
    public char rem(char c, char c2) {
        return Numeric.CharIsIntegral.Cclass.rem(this, c, c2);
    }

    @Override // scala.math.Integral
    public /* bridge */ /* synthetic */ Object rem(Object obj, Object obj2) {
        return BoxesRunTime.boxToCharacter(rem(BoxesRunTime.unboxToChar(obj), BoxesRunTime.unboxToChar(obj2)));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<Object> reverse() {
        return Ordering.Cclass.reverse(this);
    }

    @Override // scala.math.Numeric
    public int signum(Object obj) {
        return Numeric.Cclass.signum(this, obj);
    }

    @Override // scala.math.Numeric.CharIsIntegral
    public char times(char c, char c2) {
        return Numeric.CharIsIntegral.Cclass.times(this, c, c2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object times(Object obj, Object obj2) {
        return BoxesRunTime.boxToCharacter(times(BoxesRunTime.unboxToChar(obj), BoxesRunTime.unboxToChar(obj2)));
    }

    @Override // scala.math.Numeric.CharIsIntegral
    public double toDouble(char c) {
        return Numeric.CharIsIntegral.Cclass.toDouble(this, c);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ double toDouble(Object obj) {
        return toDouble(BoxesRunTime.unboxToChar(obj));
    }

    @Override // scala.math.Numeric.CharIsIntegral
    public float toFloat(char c) {
        return Numeric.CharIsIntegral.Cclass.toFloat(this, c);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ float toFloat(Object obj) {
        return toFloat(BoxesRunTime.unboxToChar(obj));
    }

    @Override // scala.math.Numeric.CharIsIntegral
    public int toInt(char c) {
        return Numeric.CharIsIntegral.Cclass.toInt(this, c);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ int toInt(Object obj) {
        return toInt(BoxesRunTime.unboxToChar(obj));
    }

    @Override // scala.math.Numeric.CharIsIntegral
    public long toLong(char c) {
        return Numeric.CharIsIntegral.Cclass.toLong(this, c);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ long toLong(Object obj) {
        return toLong(BoxesRunTime.unboxToChar(obj));
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
