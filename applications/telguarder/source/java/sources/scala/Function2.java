package scala;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0005a\u0001C\u0001\u0003!\u0003\r\t!B@\u0003\u0013\u0019+hn\u0019;j_:\u0014$\"A\u0002\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U!a!S+\u0017'\t\u0001q\u0001\u0005\u0002\t\u00135\t!!\u0003\u0002\u000b\u0005\t1\u0011I\\=SK\u001aDQ\u0001\u0004\u0001\u0005\u00025\ta\u0001J5oSR$C#\u0001\b\u0011\u0005!y\u0011B\u0001\t\u0003\u0005\u0011)f.\u001b;\t\u000bI\u0001a\u0011A\n\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\u0007Q1%\u000b\u0005\u0002\u0016-1\u0001A!C\f\u0001A\u0003\u0005IQ1\u0001\u0019\u0005\u0005\u0011\u0016CA\r\u001d!\tA!$\u0003\u0002\u001c\u0005\t9aj\u001c;iS:<\u0007C\u0001\u0005\u001e\u0013\tq\"AA\u0002B]fD\u0003B\u0006\u0011$[I:D(\u0011\t\u0003\u0011\u0005J!A\t\u0002\u0003\u0017M\u0004XmY5bY&TX\rZ\u0019\u0006G\u0011RCf\u000b\b\u0003K)r!AJ\u0015\u000e\u0003\u001dR!\u0001\u000b\u0003\u0002\rq\u0012xn\u001c;?\u0013\u0005\u0019\u0011BA\u0016\u0003\u0003\u0011)f.\u001b;2\t\u0011*\u0013fA\u0019\u0006G9z\u0013\u0007\r\b\u0003K=J!\u0001\r\u0002\u0002\u000f\t{w\u000e\\3b]F\"A%J\u0015\u0004c\u0015\u00193\u0007\u000e\u001c6\u001d\t)C'\u0003\u00026\u0005\u0005\u0019\u0011J\u001c;2\t\u0011*\u0013fA\u0019\u0006GaJ4H\u000f\b\u0003KeJ!A\u000f\u0002\u0002\u000b\u0019cw.\u0019;2\t\u0011*\u0013fA\u0019\u0006Gur\u0004i\u0010\b\u0003KyJ!a\u0010\u0002\u0002\t1{gnZ\u0019\u0005I\u0015J3!M\u0003$\u0005\u000e+EI\u0004\u0002&\u0007&\u0011AIA\u0001\u0007\t>,(\r\\32\t\u0011*\u0013f\u0001\u0005\u0006\u000fF\u0001\r\u0001S\u0001\u0003mF\u0002\"!F%\u0005\u0013)\u0003\u0001\u0015!A\t\u0006\u0004A\"A\u0001+2Q\u0015I\u0005\u0005\u0014(Qc\u0015\u00193\u0007N'6c\u0011!S%K\u00022\u000b\rjdhT 2\t\u0011*\u0013fA\u0019\u0006G\t\u001b\u0015\u000bR\u0019\u0005I\u0015J3\u0001C\u0003T#\u0001\u0007A+\u0001\u0002weA\u0011Q#\u0016\u0003\n-\u0002\u0001\u000b\u0011!EC\u0002a\u0011!\u0001\u0016\u001a)\u000bU\u0003\u0003L\u0017/2\u000b\r\u001aD'W\u001b2\t\u0011*\u0013fA\u0019\u0006Gur4lP\u0019\u0005I\u0015J3!M\u0003$\u0005\u000ekF)\r\u0003%K%\u001a\u0001\"B0\u0001\t\u0003\u0001\u0017aB2veJLW\rZ\u000b\u0002CB!\u0001B\u0019%e\u0013\t\u0019'AA\u0005Gk:\u001cG/[8ocA!\u0001B\u0019+\u0015Q\tqf\r\u0005\u0002hU6\t\u0001N\u0003\u0002j\u0005\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005-D'!D;ogB,7-[1mSj,G\rC\u0003n\u0001\u0011\u0005a.\u0001\u0004ukBdW\rZ\u000b\u0002_B!\u0001B\u00199\u0015!\u0011A\u0011\u000f\u0013+\n\u0005I\u0014!A\u0002+va2,'\u0007\u000b\u0002mM\")Q\u000f\u0001C!m\u0006AAo\\*ue&tw\rF\u0001x!\tAX0D\u0001z\u0015\tQ80\u0001\u0003mC:<'\"\u0001?\u0002\t)\fg/Y\u0005\u0003}f\u0014aa\u0015;sS:<\u0007#\u0002\u0005\u0001\u0011R#\u0002")
/* loaded from: classes3-dex2jar.jar:scala/Function2.class */
public interface Function2<T1, T2, R> {

    /* renamed from: scala.Function2$class */
    /* loaded from: classes3-dex2jar.jar:scala/Function2$class.class */
    public abstract class Cclass {
        public static void $init$(Function2 function2) {
        }

        public static Function1 curried(Function2 function2) {
            return new Function2$$anonfun$curried$1(function2);
        }

        public static String toString(Function2 function2) {
            return "<function2>";
        }

        public static Function1 tupled(Function2 function2) {
            return new Function2$$anonfun$tupled$1(function2);
        }
    }

    R apply(T1 t1, T2 t2);

    double apply$mcDDD$sp(double d, double d2);

    double apply$mcDDI$sp(double d, int i);

    double apply$mcDDJ$sp(double d, long j);

    double apply$mcDID$sp(int i, double d);

    double apply$mcDII$sp(int i, int i2);

    double apply$mcDIJ$sp(int i, long j);

    double apply$mcDJD$sp(long j, double d);

    double apply$mcDJI$sp(long j, int i);

    double apply$mcDJJ$sp(long j, long j2);

    float apply$mcFDD$sp(double d, double d2);

    float apply$mcFDI$sp(double d, int i);

    float apply$mcFDJ$sp(double d, long j);

    float apply$mcFID$sp(int i, double d);

    float apply$mcFII$sp(int i, int i2);

    float apply$mcFIJ$sp(int i, long j);

    float apply$mcFJD$sp(long j, double d);

    float apply$mcFJI$sp(long j, int i);

    float apply$mcFJJ$sp(long j, long j2);

    int apply$mcIDD$sp(double d, double d2);

    int apply$mcIDI$sp(double d, int i);

    int apply$mcIDJ$sp(double d, long j);

    int apply$mcIID$sp(int i, double d);

    int apply$mcIII$sp(int i, int i2);

    int apply$mcIIJ$sp(int i, long j);

    int apply$mcIJD$sp(long j, double d);

    int apply$mcIJI$sp(long j, int i);

    int apply$mcIJJ$sp(long j, long j2);

    long apply$mcJDD$sp(double d, double d2);

    long apply$mcJDI$sp(double d, int i);

    long apply$mcJDJ$sp(double d, long j);

    long apply$mcJID$sp(int i, double d);

    long apply$mcJII$sp(int i, int i2);

    long apply$mcJIJ$sp(int i, long j);

    long apply$mcJJD$sp(long j, double d);

    long apply$mcJJI$sp(long j, int i);

    long apply$mcJJJ$sp(long j, long j2);

    void apply$mcVDD$sp(double d, double d2);

    void apply$mcVDI$sp(double d, int i);

    void apply$mcVDJ$sp(double d, long j);

    void apply$mcVID$sp(int i, double d);

    void apply$mcVII$sp(int i, int i2);

    void apply$mcVIJ$sp(int i, long j);

    void apply$mcVJD$sp(long j, double d);

    void apply$mcVJI$sp(long j, int i);

    void apply$mcVJJ$sp(long j, long j2);

    boolean apply$mcZDD$sp(double d, double d2);

    boolean apply$mcZDI$sp(double d, int i);

    boolean apply$mcZDJ$sp(double d, long j);

    boolean apply$mcZID$sp(int i, double d);

    boolean apply$mcZII$sp(int i, int i2);

    boolean apply$mcZIJ$sp(int i, long j);

    boolean apply$mcZJD$sp(long j, double d);

    boolean apply$mcZJI$sp(long j, int i);

    boolean apply$mcZJJ$sp(long j, long j2);

    Function1<T1, Function1<T2, R>> curried();

    String toString();

    Function1<Tuple2<T1, T2>, R> tupled();
}
