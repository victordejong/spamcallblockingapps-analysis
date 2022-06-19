package scala.runtime;

import scala.Function1;
import scala.Option;
import scala.PartialFunction;
import scala.PartialFunction$;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001m3a!\u0001\u0002\u0002\u0002\u001d!&aF!cgR\u0014\u0018m\u0019;QCJ$\u0018.\u00197Gk:\u001cG/[8o\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!F\u0002\t%e\u001aB\u0001A\u0005\u000e\u001dB\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\t)q\u0001\u0003O\u0005\u0003\u001f\u0011\u0011\u0011BR;oGRLwN\\\u0019\u0011\u0005E\u0011B\u0002\u0001\u0003\n'\u0001\u0001\u000b\u0011!EC\u0002Q\u0011!\u0001V\u0019\u0012\u0005UA\u0002C\u0001\u0006\u0017\u0013\t9BAA\u0004O_RD\u0017N\\4\u0011\u0005)I\u0012B\u0001\u000e\u0005\u0005\r\te.\u001f\u0015\u0007%qy\u0012FL\u001a\u0011\u0005)i\u0012B\u0001\u0010\u0005\u0005-\u0019\b/Z2jC2L'0\u001a32\u000b\r\u0002c\u0005K\u0014\u000f\u0005\u00052cB\u0001\u0012&\u001b\u0005\u0019#B\u0001\u0013\u0007\u0003\u0019a$o\\8u}%\tQ!\u0003\u0002(\t\u0005\u0019\u0011J\u001c;2\t\u0011\nS%B\u0019\u0006G)ZS\u0006\f\b\u0003C-J!\u0001\f\u0003\u0002\t1{gnZ\u0019\u0005I\u0005*S!M\u0003$_A\u0012\u0014G\u0004\u0002\"a%\u0011\u0011\u0007B\u0001\u0006\r2|\u0017\r^\u0019\u0005I\u0005*S!M\u0003$iU:dG\u0004\u0002\"k%\u0011a\u0007B\u0001\u0007\t>,(\r\\32\t\u0011\nS%\u0002\t\u0003#e\"\u0011B\u000f\u0001!\u0002\u0003%)\u0019\u0001\u000b\u0003\u0003IC\u0003\"\u000f\u000f=\u0003\u001aC%\nT\u0019\u0006Gur\u0004i\u0010\b\u0003CyJ!a\u0010\u0003\u0002\tUs\u0017\u000e^\u0019\u0005I\u0005*S!M\u0003$\u0005\u000e+EI\u0004\u0002\"\u0007&\u0011A\tB\u0001\b\u0005>|G.Z1oc\u0011!\u0013%J\u00032\u000b\r\u0002ceR\u00142\t\u0011\nS%B\u0019\u0006G=\u0002\u0014*M\u0019\u0005I\u0005*S!M\u0003$U-ZE&\r\u0003%C\u0015*\u0011'B\u00125k53\u0014\u0007\u0002\u0013\"K\u0015\u0001BAC(\u0011q%\u0011\u0001\u000b\u0002\u0002\u0010!\u0006\u0014H/[1m\rVt7\r^5p]\")!\u000b\u0001C\u0001'\u00061A(\u001b8jiz\"\u0012\u0001\u0016\t\u0005+\u0002\u0001\u0002(D\u0001\u0003\u0011\u00159\u0006\u0001\"\u0001Y\u0003\u0015\t\u0007\u000f\u001d7z)\tA\u0014\fC\u0003[-\u0002\u0007\u0001#A\u0001y\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction.class */
public abstract class AbstractPartialFunction<T1, R> implements PartialFunction<T1, R> {
    public AbstractPartialFunction() {
        Function1.Cclass.$init$(this);
        PartialFunction.Cclass.$init$(this);
    }

    @Override // scala.PartialFunction, scala.Function1
    public <C> PartialFunction<T1, C> andThen(Function1<R, C> function1) {
        return PartialFunction.Cclass.andThen(this, function1);
    }

    @Override // scala.Function1
    public R apply(T1 t1) {
        return (R) applyOrElse(t1, PartialFunction$.MODULE$.empty());
    }

    @Override // scala.Function1
    public double apply$mcDD$sp(double d) {
        return BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToDouble(d)));
    }

    @Override // scala.Function1
    public double apply$mcDF$sp(float f) {
        return BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToFloat(f)));
    }

    @Override // scala.Function1
    public double apply$mcDI$sp(int i) {
        return BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToInteger(i)));
    }

    @Override // scala.Function1
    public double apply$mcDJ$sp(long j) {
        return BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToLong(j)));
    }

    @Override // scala.Function1
    public float apply$mcFD$sp(double d) {
        return BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToDouble(d)));
    }

    @Override // scala.Function1
    public float apply$mcFF$sp(float f) {
        return BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToFloat(f)));
    }

    @Override // scala.Function1
    public float apply$mcFI$sp(int i) {
        return BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToInteger(i)));
    }

    @Override // scala.Function1
    public float apply$mcFJ$sp(long j) {
        return BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToLong(j)));
    }

    @Override // scala.Function1
    public int apply$mcID$sp(double d) {
        return BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToDouble(d)));
    }

    @Override // scala.Function1
    public int apply$mcIF$sp(float f) {
        return BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToFloat(f)));
    }

    @Override // scala.Function1
    public int apply$mcII$sp(int i) {
        return BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToInteger(i)));
    }

    @Override // scala.Function1
    public int apply$mcIJ$sp(long j) {
        return BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToLong(j)));
    }

    @Override // scala.Function1
    public long apply$mcJD$sp(double d) {
        return BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToDouble(d)));
    }

    @Override // scala.Function1
    public long apply$mcJF$sp(float f) {
        return BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToFloat(f)));
    }

    @Override // scala.Function1
    public long apply$mcJI$sp(int i) {
        return BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToInteger(i)));
    }

    @Override // scala.Function1
    public long apply$mcJJ$sp(long j) {
        return BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToLong(j)));
    }

    @Override // scala.Function1
    public void apply$mcVD$sp(double d) {
        apply(BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function1
    public void apply$mcVF$sp(float f) {
        apply(BoxesRunTime.boxToFloat(f));
    }

    @Override // scala.Function1
    public void apply$mcVI$sp(int i) {
        apply(BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public void apply$mcVJ$sp(long j) {
        apply(BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function1
    public boolean apply$mcZD$sp(double d) {
        return BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToDouble(d)));
    }

    @Override // scala.Function1
    public boolean apply$mcZF$sp(float f) {
        return BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToFloat(f)));
    }

    @Override // scala.Function1
    public boolean apply$mcZI$sp(int i) {
        return BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToInteger(i)));
    }

    @Override // scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        return BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToLong(j)));
    }

    @Override // scala.PartialFunction
    public <A1 extends T1, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
        return (B1) PartialFunction.Cclass.applyOrElse(this, a1, function1);
    }

    @Override // scala.Function1
    public <A> Function1<A, R> compose(Function1<A, T1> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    @Override // scala.PartialFunction
    public Function1<T1, Option<R>> lift() {
        return PartialFunction.Cclass.lift(this);
    }

    @Override // scala.PartialFunction
    public <A1 extends T1, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
        return PartialFunction.Cclass.orElse(this, partialFunction);
    }

    @Override // scala.PartialFunction
    public <U> Function1<T1, Object> runWith(Function1<R, U> function1) {
        return PartialFunction.Cclass.runWith(this, function1);
    }

    @Override // scala.Function1
    public String toString() {
        return Function1.Cclass.toString(this);
    }
}
