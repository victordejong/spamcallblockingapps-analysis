package scala.runtime;

import scala.Function1;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001M3Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c82\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!F\u0002\t%e\u001a2\u0001A\u0005\u000e!\tQ1\"D\u0001\u0005\u0013\taAA\u0001\u0004B]f\u0014VM\u001a\t\u0005\u00159\u0001\u0002(\u0003\u0002\u0010\t\tIa)\u001e8di&|g.\r\t\u0003#Ia\u0001\u0001B\u0005\u0014\u0001\u0001\u0006\t\u0011#b\u0001)\t\u0011A+M\t\u0003+a\u0001\"A\u0003\f\n\u0005]!!a\u0002(pi\"Lgn\u001a\t\u0003\u0015eI!A\u0007\u0003\u0003\u0007\u0005s\u0017\u0010\u000b\u0004\u00139}Icf\r\t\u0003\u0015uI!A\b\u0003\u0003\u0017M\u0004XmY5bY&TX\rZ\u0019\u0006G\u00012\u0003f\n\b\u0003C\u0019r!AI\u0013\u000e\u0003\rR!\u0001\n\u0004\u0002\rq\u0012xn\u001c;?\u0013\u0005)\u0011BA\u0014\u0005\u0003\rIe\u000e^\u0019\u0005I\u0005*S!M\u0003$U-jCF\u0004\u0002\"W%\u0011A\u0006B\u0001\u0005\u0019>tw-\r\u0003%C\u0015*\u0011'B\u00120aI\ndBA\u00111\u0013\t\tD!A\u0003GY>\fG/\r\u0003%C\u0015*\u0011'B\u00125k]2dBA\u00116\u0013\t1D!\u0001\u0004E_V\u0014G.Z\u0019\u0005I\u0005*S\u0001\u0005\u0002\u0012s\u0011I!\b\u0001Q\u0001\u0002\u0013\u0015\r\u0001\u0006\u0002\u0002%\"B\u0011\b\b\u001fB\r\"SE*M\u0003${y\u0002uH\u0004\u0002\"}%\u0011q\bB\u0001\u0005+:LG/\r\u0003%C\u0015*\u0011'B\u0012C\u0007\u0016#eBA\u0011D\u0013\t!E!A\u0004C_>dW-\u001982\t\u0011\nS%B\u0019\u0006G\u00012siJ\u0019\u0005I\u0005*S!M\u0003$_AJ\u0015'\r\u0003%C\u0015*\u0011'B\u0012+W-c\u0013\u0007\u0002\u0013\"K\u0015\tTa\t\u001b6\u001bZ\nD\u0001J\u0011&\u000b!)q\n\u0001C\u0001!\u00061A(\u001b8jiz\"\u0012!\u0015\t\u0005%\u0002\u0001\u0002(D\u0001\u0003\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction1.class */
public abstract class AbstractFunction1<T1, R> implements Function1<T1, R> {
    public AbstractFunction1() {
        Function1.Cclass.$init$(this);
    }

    @Override // scala.Function1
    public <A> Function1<T1, A> andThen(Function1<R, A> function1) {
        return Function1.Cclass.andThen(this, function1);
    }

    @Override // scala.Function1
    public double apply$mcDD$sp(double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDF$sp(float f) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDI$sp(int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDJ$sp(long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public float apply$mcFD$sp(double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFF$sp(float f) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFI$sp(int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFJ$sp(long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public int apply$mcID$sp(double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIF$sp(float f) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcII$sp(int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIJ$sp(long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public long apply$mcJD$sp(double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJF$sp(float f) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJI$sp(int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJJ$sp(long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToLong(j)));
        return unboxToLong;
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
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZF$sp(float f) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZI$sp(int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public <A> Function1<A, R> compose(Function1<A, T1> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    @Override // scala.Function1
    public String toString() {
        return Function1.Cclass.toString(this);
    }
}
