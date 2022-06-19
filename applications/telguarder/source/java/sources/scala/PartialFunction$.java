package scala;

import scala.Function1;
import scala.PartialFunction;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/PartialFunction$.class */
public final class PartialFunction$ {
    public static final PartialFunction$ MODULE$ = null;
    public final PartialFunction<Object, Object> scala$PartialFunction$$fallback_pf = new PartialFunction$$anonfun$1();
    public final Function1<Object, Object> scala$PartialFunction$$constFalse = new PartialFunction$$anonfun$2();
    private final PartialFunction<Object, Nothing$> empty_pf = new PartialFunction<Object, Nothing$>() { // from class: scala.PartialFunction$$anon$1
        private final Function1<Object, None$> lift = new PartialFunction$$anon$1$$anonfun$3(this);

        {
            Function1.Cclass.$init$(this);
            PartialFunction.Cclass.$init$(this);
        }

        @Override // scala.PartialFunction, scala.Function1
        public <C> PartialFunction$$anon$1 andThen(Function1<Nothing$, C> function1) {
            return this;
        }

        @Override // scala.Function1
        public Nothing$ apply(Object obj) {
            throw new MatchError(obj);
        }

        @Override // scala.Function1
        public double apply$mcDD$sp(double d) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((PartialFunction$$anon$1) BoxesRunTime.boxToDouble(d)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDF$sp(float f) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((PartialFunction$$anon$1) BoxesRunTime.boxToFloat(f)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDI$sp(int i) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((PartialFunction$$anon$1) BoxesRunTime.boxToInteger(i)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDJ$sp(long j) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((PartialFunction$$anon$1) BoxesRunTime.boxToLong(j)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public float apply$mcFD$sp(double d) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((PartialFunction$$anon$1) BoxesRunTime.boxToDouble(d)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFF$sp(float f) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((PartialFunction$$anon$1) BoxesRunTime.boxToFloat(f)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFI$sp(int i) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((PartialFunction$$anon$1) BoxesRunTime.boxToInteger(i)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFJ$sp(long j) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((PartialFunction$$anon$1) BoxesRunTime.boxToLong(j)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public int apply$mcID$sp(double d) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((PartialFunction$$anon$1) BoxesRunTime.boxToDouble(d)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcIF$sp(float f) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((PartialFunction$$anon$1) BoxesRunTime.boxToFloat(f)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcII$sp(int i) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((PartialFunction$$anon$1) BoxesRunTime.boxToInteger(i)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcIJ$sp(long j) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((PartialFunction$$anon$1) BoxesRunTime.boxToLong(j)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public long apply$mcJD$sp(double d) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((PartialFunction$$anon$1) BoxesRunTime.boxToDouble(d)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJF$sp(float f) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((PartialFunction$$anon$1) BoxesRunTime.boxToFloat(f)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJI$sp(int i) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((PartialFunction$$anon$1) BoxesRunTime.boxToInteger(i)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJJ$sp(long j) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((PartialFunction$$anon$1) BoxesRunTime.boxToLong(j)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public void apply$mcVD$sp(double d) {
            apply((PartialFunction$$anon$1) BoxesRunTime.boxToDouble(d));
        }

        @Override // scala.Function1
        public void apply$mcVF$sp(float f) {
            apply((PartialFunction$$anon$1) BoxesRunTime.boxToFloat(f));
        }

        @Override // scala.Function1
        public void apply$mcVI$sp(int i) {
            apply((PartialFunction$$anon$1) BoxesRunTime.boxToInteger(i));
        }

        @Override // scala.Function1
        public void apply$mcVJ$sp(long j) {
            apply((PartialFunction$$anon$1) BoxesRunTime.boxToLong(j));
        }

        @Override // scala.Function1
        public boolean apply$mcZD$sp(double d) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((PartialFunction$$anon$1) BoxesRunTime.boxToDouble(d)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZF$sp(float f) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((PartialFunction$$anon$1) BoxesRunTime.boxToFloat(f)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZI$sp(int i) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((PartialFunction$$anon$1) BoxesRunTime.boxToInteger(i)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZJ$sp(long j) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((PartialFunction$$anon$1) BoxesRunTime.boxToLong(j)));
            return unboxToBoolean;
        }

        @Override // scala.PartialFunction
        public <A1, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
            return (B1) PartialFunction.Cclass.applyOrElse(this, a1, function1);
        }

        @Override // scala.Function1
        public <A> Function1<A, Nothing$> compose(Function1<A, Object> function1) {
            return Function1.Cclass.compose(this, function1);
        }

        @Override // scala.PartialFunction
        public boolean isDefinedAt(Object obj) {
            return false;
        }

        @Override // scala.PartialFunction
        public Function1<Object, Option<Nothing$>> lift() {
            return this.lift;
        }

        @Override // scala.PartialFunction
        public <A1, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
            return partialFunction;
        }

        @Override // scala.PartialFunction
        public <U> Function1<Object, Object> runWith(Function1<Nothing$, U> function1) {
            return PartialFunction$.MODULE$.scala$PartialFunction$$constFalse;
        }

        @Override // scala.Function1
        public String toString() {
            return Function1.Cclass.toString(this);
        }
    };

    static {
        new PartialFunction$();
    }

    private PartialFunction$() {
        MODULE$ = this;
    }

    public <A, B> PartialFunction<A, B> apply(Function1<A, B> function1) {
        return new PartialFunction$$anonfun$apply$1(function1);
    }

    public <T> boolean cond(T t, PartialFunction<T, Object> partialFunction) {
        return BoxesRunTime.unboxToBoolean(partialFunction.applyOrElse(t, this.scala$PartialFunction$$constFalse));
    }

    public <T, U> Option<U> condOpt(T t, PartialFunction<T, U> partialFunction) {
        return partialFunction.lift().apply(t);
    }

    public <A, B> PartialFunction<A, B> empty() {
        return (PartialFunction<A, B>) this.empty_pf;
    }

    public <B> PartialFunction<Object, B> scala$PartialFunction$$checkFallback() {
        return (PartialFunction<Object, B>) this.scala$PartialFunction$$fallback_pf;
    }

    public <B> boolean scala$PartialFunction$$fallbackOccurred(B b) {
        return this.scala$PartialFunction$$fallback_pf == b;
    }

    public <A, B> PartialFunction<A, B> unlifted(Function1<A, Option<B>> function1) {
        return function1 instanceof PartialFunction.Lifted ? ((PartialFunction.Lifted) function1).m364pf() : new PartialFunction.Unlifted(function1);
    }
}
