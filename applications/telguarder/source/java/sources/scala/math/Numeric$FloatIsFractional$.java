package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Fractional;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Numeric$FloatIsFractional$.class */
public class Numeric$FloatIsFractional$ implements Numeric.FloatIsFractional, Ordering.FloatOrdering {
    public static final Numeric$FloatIsFractional$ MODULE$ = null;

    static {
        new Numeric$FloatIsFractional$();
    }

    public Numeric$FloatIsFractional$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Numeric.Cclass.$init$(this);
        Numeric.FloatIsConflicted.Cclass.$init$(this);
        Fractional.Cclass.$init$(this);
        Numeric.FloatIsFractional.Cclass.$init$(this);
        Ordering.FloatOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Numeric.FloatIsConflicted
    public float abs(float f) {
        return Numeric.FloatIsConflicted.Cclass.abs(this, f);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object abs(Object obj) {
        return BoxesRunTime.boxToFloat(abs(BoxesRunTime.unboxToFloat(obj)));
    }

    @Override // scala.math.Ordering.FloatOrdering
    public int compare(float f, float f2) {
        return Ordering.FloatOrdering.Cclass.compare(this, f, f2);
    }

    @Override // scala.math.Ordering, java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return compare(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
    }

    @Override // scala.math.Numeric.FloatIsFractional
    public float div(float f, float f2) {
        return Numeric.FloatIsFractional.Cclass.div(this, f, f2);
    }

    @Override // scala.math.Fractional
    public /* bridge */ /* synthetic */ Object div(Object obj, Object obj2) {
        return BoxesRunTime.boxToFloat(div(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2)));
    }

    @Override // scala.math.Ordering.FloatOrdering
    public boolean equiv(float f, float f2) {
        return Ordering.FloatOrdering.Cclass.equiv(this, f, f2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public /* bridge */ /* synthetic */ boolean equiv(Object obj, Object obj2) {
        return equiv(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, float] */
    @Override // scala.math.Numeric.FloatIsConflicted, scala.math.Numeric
    public Object fromInt(int i) {
        return Numeric.FloatIsConflicted.Cclass.fromInt(this, i);
    }

    @Override // scala.math.Ordering.FloatOrdering
    /* renamed from: gt */
    public boolean mo44gt(float f, float f2) {
        return Ordering.FloatOrdering.Cclass.m42gt(this, f, f2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    /* renamed from: gt */
    public /* bridge */ /* synthetic */ boolean mo37gt(Object obj, Object obj2) {
        return mo44gt(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
    }

    @Override // scala.math.Ordering.FloatOrdering
    public boolean gteq(float f, float f2) {
        return Ordering.FloatOrdering.Cclass.gteq(this, f, f2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public /* bridge */ /* synthetic */ boolean gteq(Object obj, Object obj2) {
        return gteq(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
    }

    @Override // scala.math.Ordering.FloatOrdering
    /* renamed from: lt */
    public boolean mo43lt(float f, float f2) {
        return Ordering.FloatOrdering.Cclass.m41lt(this, f, f2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    /* renamed from: lt */
    public /* bridge */ /* synthetic */ boolean mo36lt(Object obj, Object obj2) {
        return mo43lt(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
    }

    @Override // scala.math.Ordering.FloatOrdering
    public boolean lteq(float f, float f2) {
        return Ordering.FloatOrdering.Cclass.lteq(this, f, f2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public /* bridge */ /* synthetic */ boolean lteq(Object obj, Object obj2) {
        return lteq(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
    }

    @Override // scala.math.Ordering.FloatOrdering
    public float max(float f, float f2) {
        return Ordering.FloatOrdering.Cclass.max(this, f, f2);
    }

    @Override // scala.math.Ordering
    public /* bridge */ /* synthetic */ Object max(Object obj, Object obj2) {
        return BoxesRunTime.boxToFloat(max(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2)));
    }

    @Override // scala.math.Ordering.FloatOrdering
    public float min(float f, float f2) {
        return Ordering.FloatOrdering.Cclass.min(this, f, f2);
    }

    @Override // scala.math.Ordering
    public /* bridge */ /* synthetic */ Object min(Object obj, Object obj2) {
        return BoxesRunTime.boxToFloat(min(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2)));
    }

    @Override // scala.math.Numeric.FloatIsConflicted
    public float minus(float f, float f2) {
        return Numeric.FloatIsConflicted.Cclass.minus(this, f, f2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object minus(Object obj, Object obj2) {
        return BoxesRunTime.boxToFloat(minus(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2)));
    }

    @Override // scala.math.Numeric
    /* renamed from: mkNumericOps */
    public Numeric<Object>.Ops mkNumericOps2(Object obj) {
        return Fractional.Cclass.mkNumericOps(this, obj);
    }

    @Override // scala.math.Ordering
    public Ordering<Object>.Ops mkOrderingOps(Object obj) {
        return Ordering.Cclass.mkOrderingOps(this, obj);
    }

    @Override // scala.math.Numeric.FloatIsConflicted
    public float negate(float f) {
        return Numeric.FloatIsConflicted.Cclass.negate(this, f);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object negate(Object obj) {
        return BoxesRunTime.boxToFloat(negate(BoxesRunTime.unboxToFloat(obj)));
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

    @Override // scala.math.Numeric.FloatIsConflicted
    public float plus(float f, float f2) {
        return Numeric.FloatIsConflicted.Cclass.plus(this, f, f2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object plus(Object obj, Object obj2) {
        return BoxesRunTime.boxToFloat(plus(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2)));
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<Object> reverse() {
        return Ordering.FloatOrdering.Cclass.reverse(this);
    }

    @Override // scala.math.Numeric
    public int signum(Object obj) {
        return Numeric.Cclass.signum(this, obj);
    }

    @Override // scala.math.Numeric.FloatIsConflicted
    public float times(float f, float f2) {
        return Numeric.FloatIsConflicted.Cclass.times(this, f, f2);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ Object times(Object obj, Object obj2) {
        return BoxesRunTime.boxToFloat(times(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2)));
    }

    @Override // scala.math.Numeric.FloatIsConflicted
    public double toDouble(float f) {
        return Numeric.FloatIsConflicted.Cclass.toDouble(this, f);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ double toDouble(Object obj) {
        return toDouble(BoxesRunTime.unboxToFloat(obj));
    }

    @Override // scala.math.Numeric.FloatIsConflicted
    public float toFloat(float f) {
        return Numeric.FloatIsConflicted.Cclass.toFloat(this, f);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ float toFloat(Object obj) {
        return toFloat(BoxesRunTime.unboxToFloat(obj));
    }

    @Override // scala.math.Numeric.FloatIsConflicted
    public int toInt(float f) {
        return Numeric.FloatIsConflicted.Cclass.toInt(this, f);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ int toInt(Object obj) {
        return toInt(BoxesRunTime.unboxToFloat(obj));
    }

    @Override // scala.math.Numeric.FloatIsConflicted
    public long toLong(float f) {
        return Numeric.FloatIsConflicted.Cclass.toLong(this, f);
    }

    @Override // scala.math.Numeric
    public /* bridge */ /* synthetic */ long toLong(Object obj) {
        return toLong(BoxesRunTime.unboxToFloat(obj));
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
