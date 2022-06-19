package scala.math;

import scala.Function1;
import scala.Some;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Ordering$Float$.class */
public class Ordering$Float$ implements Ordering.FloatOrdering {
    public static final Ordering$Float$ MODULE$ = null;

    static {
        new Ordering$Float$();
    }

    public Ordering$Float$() {
        MODULE$ = this;
        PartialOrdering.Cclass.$init$(this);
        Ordering.Cclass.$init$(this);
        Ordering.FloatOrdering.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.math.Ordering.FloatOrdering
    public int compare(float f, float f2) {
        return Ordering.FloatOrdering.Cclass.compare(this, f, f2);
    }

    @Override // scala.math.Ordering, java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        return compare(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
    }

    @Override // scala.math.Ordering.FloatOrdering
    public boolean equiv(float f, float f2) {
        return Ordering.FloatOrdering.Cclass.equiv(this, f, f2);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
    public /* bridge */ /* synthetic */ boolean equiv(Object obj, Object obj2) {
        return equiv(BoxesRunTime.unboxToFloat(obj), BoxesRunTime.unboxToFloat(obj2));
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

    @Override // scala.math.Ordering
    public Ordering<Object>.Ops mkOrderingOps(Object obj) {
        return Ordering.Cclass.mkOrderingOps(this, obj);
    }

    @Override // scala.math.Ordering
    /* renamed from: on */
    public <U> Ordering<U> mo49on(Function1<U, Object> function1) {
        return Ordering.Cclass.m38on(this, function1);
    }

    @Override // scala.math.Ordering.FloatOrdering, scala.math.Ordering, scala.math.PartialOrdering
    public Ordering<Object> reverse() {
        return Ordering.FloatOrdering.Cclass.reverse(this);
    }

    @Override // scala.math.Ordering, scala.math.PartialOrdering
    public Some tryCompare(Object obj, Object obj2) {
        return Ordering.Cclass.tryCompare(this, obj, obj2);
    }
}
