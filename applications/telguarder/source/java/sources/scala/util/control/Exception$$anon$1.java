package scala.util.control;

import scala.Function1;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Some;
import scala.reflect.ClassTag;
import scala.reflect.package$;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anon$1.class */
public final class Exception$$anon$1 implements PartialFunction<Throwable, T> {
    private final ClassTag evidence$1$1;
    private final Function1 f$1;
    private final Function1 isDef$1;

    public Exception$$anon$1(Function1 function1, Function1 function12, ClassTag classTag) {
        this.isDef$1 = function1;
        this.f$1 = function12;
        this.evidence$1$1 = classTag;
        Function1.Cclass.$init$(this);
        PartialFunction.Cclass.$init$(this);
    }

    private Option<Ex> downcast(Throwable th) {
        return package$.MODULE$.classTag(this.evidence$1$1).runtimeClass().isAssignableFrom(th.getClass()) ? new Some(th) : None$.MODULE$;
    }

    @Override // scala.PartialFunction, scala.Function1
    public <C> PartialFunction<Throwable, C> andThen(Function1<T, C> function1) {
        return PartialFunction.Cclass.andThen(this, function1);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    public T apply(Throwable th) {
        return this.f$1.apply(downcast(th).get());
    }

    @Override // scala.Function1
    public double apply$mcDD$sp(double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((Exception$$anon$1) BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDF$sp(float f) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((Exception$$anon$1) BoxesRunTime.boxToFloat(f)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDI$sp(int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((Exception$$anon$1) BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDJ$sp(long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((Exception$$anon$1) BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public float apply$mcFD$sp(double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((Exception$$anon$1) BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFF$sp(float f) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((Exception$$anon$1) BoxesRunTime.boxToFloat(f)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFI$sp(int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((Exception$$anon$1) BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFJ$sp(long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((Exception$$anon$1) BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public int apply$mcID$sp(double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((Exception$$anon$1) BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIF$sp(float f) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((Exception$$anon$1) BoxesRunTime.boxToFloat(f)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcII$sp(int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((Exception$$anon$1) BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIJ$sp(long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((Exception$$anon$1) BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public long apply$mcJD$sp(double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((Exception$$anon$1) BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJF$sp(float f) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((Exception$$anon$1) BoxesRunTime.boxToFloat(f)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJI$sp(int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((Exception$$anon$1) BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJJ$sp(long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((Exception$$anon$1) BoxesRunTime.boxToLong(j)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public void apply$mcVD$sp(double d) {
        apply((Exception$$anon$1) BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function1
    public void apply$mcVF$sp(float f) {
        apply((Exception$$anon$1) BoxesRunTime.boxToFloat(f));
    }

    @Override // scala.Function1
    public void apply$mcVI$sp(int i) {
        apply((Exception$$anon$1) BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public void apply$mcVJ$sp(long j) {
        apply((Exception$$anon$1) BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function1
    public boolean apply$mcZD$sp(double d) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Exception$$anon$1) BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZF$sp(float f) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Exception$$anon$1) BoxesRunTime.boxToFloat(f)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZI$sp(int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Exception$$anon$1) BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((Exception$$anon$1) BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.PartialFunction
    public Object applyOrElse(Object obj, Function1 function1) {
        return PartialFunction.Cclass.applyOrElse(this, obj, function1);
    }

    @Override // scala.Function1
    public <A> Function1<A, T> compose(Function1<A, Throwable> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    public boolean isDefinedAt(Throwable th) {
        Option downcast = downcast(th);
        return !downcast.isEmpty() && BoxesRunTime.unboxToBoolean(this.isDef$1.apply(downcast.get()));
    }

    @Override // scala.PartialFunction
    public Function1<Throwable, Option<T>> lift() {
        return PartialFunction.Cclass.lift(this);
    }

    @Override // scala.PartialFunction
    public <A1 extends Throwable, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
        return PartialFunction.Cclass.orElse(this, partialFunction);
    }

    @Override // scala.PartialFunction
    public <U> Function1<Throwable, Object> runWith(Function1<T, U> function1) {
        return PartialFunction.Cclass.runWith(this, function1);
    }

    @Override // scala.Function1
    public String toString() {
        return Function1.Cclass.toString(this);
    }
}
