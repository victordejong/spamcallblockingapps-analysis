package scala.runtime;

import scala.Function1;
import scala.Function2;
import scala.Tuple2;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001m3Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c83\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0003\t%Qr4c\u0001\u0001\n\u001bA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u000b)q\u0001cM\u001f\n\u0005=!!!\u0003$v]\u000e$\u0018n\u001c83!\t\t\"\u0003\u0004\u0001\u0005\u0013M\u0001\u0001\u0015!A\t\u0006\u0004!\"A\u0001+2#\t)\u0002\u0004\u0005\u0002\u000b-%\u0011q\u0003\u0002\u0002\b\u001d>$\b.\u001b8h!\tQ\u0011$\u0003\u0002\u001b\t\t\u0019\u0011I\\=)\u000bIar$\u000b\u0018\u0011\u0005)i\u0012B\u0001\u0010\u0005\u0005-\u0019\b/Z2jC2L'0\u001a32\u000b\r\u0002c\u0005K\u0014\u000f\u0005\u00052cB\u0001\u0012&\u001b\u0005\u0019#B\u0001\u0013\u0007\u0003\u0019a$o\\8u}%\tQ!\u0003\u0002(\t\u0005\u0019\u0011J\u001c;2\t\u0011\nS%B\u0019\u0006G)ZS\u0006\f\b\u0003C-J!\u0001\f\u0003\u0002\t1{gnZ\u0019\u0005I\u0005*S!M\u0003$_A\u0012\u0014G\u0004\u0002\"a%\u0011\u0011\u0007B\u0001\u0007\t>,(\r\\32\t\u0011\nS%\u0002\t\u0003#Q\"\u0011\"\u000e\u0001!\u0002\u0003E)\u0019\u0001\u000b\u0003\u0005Q\u0013\u0004&\u0002\u001b\u001doeZ\u0014'B\u0012!Ma:\u0013\u0007\u0002\u0013\"K\u0015\tTa\t\u0016,u1\nD\u0001J\u0011&\u000bE*1e\f\u0019=cE\"A%I\u0013\u0006!\t\tb\bB\u0005@\u0001\u0001\u0006\t\u0011\"b\u0001)\t\t!\u000b\u000b\u0005?9\u000535*\u0014*Uc\u0015\u0019#iQ#E\u001d\t\t3)\u0003\u0002E\t\u0005!QK\\5uc\u0011!\u0013%J\u00032\u000b\r:\u0005JS%\u000f\u0005\u0005B\u0015BA%\u0005\u0003\u001d\u0011un\u001c7fC:\fD\u0001J\u0011&\u000bE*1\u0005\t\u0014MOE\"A%I\u0013\u0006c\u0015\u0019cjT)Q\u001d\t\ts*\u0003\u0002Q\t\u0005)a\t\\8biF\"A%I\u0013\u0006c\u0015\u0019#fK*-c\u0011!\u0013%J\u00032\u000b\rz\u0003'V\u00192\t\u0011\nS%\u0002\u0005\u0006/\u0002!\t\u0001W\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003e\u0003RA\u0017\u0001\u0011guj\u0011A\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction2.class */
public abstract class AbstractFunction2<T1, T2, R> implements Function2<T1, T2, R> {
    public AbstractFunction2() {
        Function2.Cclass.$init$(this);
    }

    @Override // scala.Function2
    public double apply$mcDDD$sp(double d, double d2) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToDouble(d2)));
        return unboxToDouble;
    }

    @Override // scala.Function2
    public double apply$mcDDI$sp(double d, int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function2
    public double apply$mcDDJ$sp(double d, long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    @Override // scala.Function2
    public double apply$mcDID$sp(int i, double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function2
    public double apply$mcDII$sp(int i, int i2) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2)));
        return unboxToDouble;
    }

    @Override // scala.Function2
    public double apply$mcDIJ$sp(int i, long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    @Override // scala.Function2
    public double apply$mcDJD$sp(long j, double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function2
    public double apply$mcDJI$sp(long j, int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function2
    public double apply$mcDJJ$sp(long j, long j2) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToLong(j2)));
        return unboxToDouble;
    }

    @Override // scala.Function2
    public float apply$mcFDD$sp(double d, double d2) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToDouble(d2)));
        return unboxToFloat;
    }

    @Override // scala.Function2
    public float apply$mcFDI$sp(double d, int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function2
    public float apply$mcFDJ$sp(double d, long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    @Override // scala.Function2
    public float apply$mcFID$sp(int i, double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function2
    public float apply$mcFII$sp(int i, int i2) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2)));
        return unboxToFloat;
    }

    @Override // scala.Function2
    public float apply$mcFIJ$sp(int i, long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    @Override // scala.Function2
    public float apply$mcFJD$sp(long j, double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function2
    public float apply$mcFJI$sp(long j, int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function2
    public float apply$mcFJJ$sp(long j, long j2) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToLong(j2)));
        return unboxToFloat;
    }

    @Override // scala.Function2
    public int apply$mcIDD$sp(double d, double d2) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToDouble(d2)));
        return unboxToInt;
    }

    @Override // scala.Function2
    public int apply$mcIDI$sp(double d, int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function2
    public int apply$mcIDJ$sp(double d, long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    @Override // scala.Function2
    public int apply$mcIID$sp(int i, double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function2
    public int apply$mcIII$sp(int i, int i2) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2)));
        return unboxToInt;
    }

    @Override // scala.Function2
    public int apply$mcIIJ$sp(int i, long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    @Override // scala.Function2
    public int apply$mcIJD$sp(long j, double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function2
    public int apply$mcIJI$sp(long j, int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function2
    public int apply$mcIJJ$sp(long j, long j2) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToLong(j2)));
        return unboxToInt;
    }

    @Override // scala.Function2
    public long apply$mcJDD$sp(double d, double d2) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToDouble(d2)));
        return unboxToLong;
    }

    @Override // scala.Function2
    public long apply$mcJDI$sp(double d, int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function2
    public long apply$mcJDJ$sp(double d, long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToLong(j)));
        return unboxToLong;
    }

    @Override // scala.Function2
    public long apply$mcJID$sp(int i, double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function2
    public long apply$mcJII$sp(int i, int i2) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2)));
        return unboxToLong;
    }

    @Override // scala.Function2
    public long apply$mcJIJ$sp(int i, long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToLong(j)));
        return unboxToLong;
    }

    @Override // scala.Function2
    public long apply$mcJJD$sp(long j, double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function2
    public long apply$mcJJI$sp(long j, int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function2
    public long apply$mcJJJ$sp(long j, long j2) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToLong(j2)));
        return unboxToLong;
    }

    @Override // scala.Function2
    public void apply$mcVDD$sp(double d, double d2) {
        apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToDouble(d2));
    }

    @Override // scala.Function2
    public void apply$mcVDI$sp(double d, int i) {
        apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function2
    public void apply$mcVDJ$sp(double d, long j) {
        apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function2
    public void apply$mcVID$sp(int i, double d) {
        apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function2
    public void apply$mcVII$sp(int i, int i2) {
        apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2));
    }

    @Override // scala.Function2
    public void apply$mcVIJ$sp(int i, long j) {
        apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function2
    public void apply$mcVJD$sp(long j, double d) {
        apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function2
    public void apply$mcVJI$sp(long j, int i) {
        apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function2
    public void apply$mcVJJ$sp(long j, long j2) {
        apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToLong(j2));
    }

    @Override // scala.Function2
    public boolean apply$mcZDD$sp(double d, double d2) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToDouble(d2)));
        return unboxToBoolean;
    }

    @Override // scala.Function2
    public boolean apply$mcZDI$sp(double d, int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function2
    public boolean apply$mcZDJ$sp(double d, long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToDouble(d), BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.Function2
    public boolean apply$mcZID$sp(int i, double d) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function2
    public boolean apply$mcZII$sp(int i, int i2) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2)));
        return unboxToBoolean;
    }

    @Override // scala.Function2
    public boolean apply$mcZIJ$sp(int i, long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.Function2
    public boolean apply$mcZJD$sp(long j, double d) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function2
    public boolean apply$mcZJI$sp(long j, int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function2
    public boolean apply$mcZJJ$sp(long j, long j2) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToLong(j2)));
        return unboxToBoolean;
    }

    @Override // scala.Function2
    public Function1<T1, Function1<T2, R>> curried() {
        return Function2.Cclass.curried(this);
    }

    @Override // scala.Function2
    public String toString() {
        return Function2.Cclass.toString(this);
    }

    @Override // scala.Function2
    public Function1<Tuple2<T1, T2>, R> tupled() {
        return Function2.Cclass.tupled(this);
    }
}
