package scala;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001U4\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005Q\u0001\u001e\u0002\n\rVt7\r^5p]fR\u0011aA\u0001\u0006g\u000e\fG.Y\u0002\u0001+-1!e\n\u00172mm\u0002UI\u0013\f\u0014\u0005\u00019\u0001C\u0001\u0005\n\u001b\u0005\u0011\u0011B\u0001\u0006\u0003\u0005\u0019\te.\u001f*fM\")A\u0002\u0001C\u0001\u001b\u00051A%\u001b8ji\u0012\"\u0012A\u0004\t\u0003\u0011=I!\u0001\u0005\u0002\u0003\tUs\u0017\u000e\u001e\u0005\u0006%\u00011\taE\u0001\u0006CB\u0004H.\u001f\u000b\u000b)}!\u0013FL\u001a9{\t;\u0005CA\u000b\u0017\u0019\u0001!aa\u0006\u0001\u0005\u0006\u0004A\"!\u0001*\u0012\u0005ea\u0002C\u0001\u0005\u001b\u0013\tY\"AA\u0004O_RD\u0017N\\4\u0011\u0005!i\u0012B\u0001\u0010\u0003\u0005\r\te.\u001f\u0005\u0006AE\u0001\r!I\u0001\u0003mF\u0002\"!\u0006\u0012\u0005\r\r\u0002\u0001R1\u0001\u0019\u0005\t!\u0016\u0007C\u0003&#\u0001\u0007a%\u0001\u0002weA\u0011Qc\n\u0003\u0007Q\u0001A)\u0019\u0001\r\u0003\u0005Q\u0013\u0004\"\u0002\u0016\u0012\u0001\u0004Y\u0013A\u0001<4!\t)B\u0006\u0002\u0004.\u0001!\u0015\r\u0001\u0007\u0002\u0003)NBQaL\tA\u0002A\n!A\u001e\u001b\u0011\u0005U\tDA\u0002\u001a\u0001\u0011\u000b\u0007\u0001D\u0001\u0002Ui!)A'\u0005a\u0001k\u0005\u0011a/\u000e\t\u0003+Y\"aa\u000e\u0001\t\u0006\u0004A\"A\u0001+6\u0011\u0015I\u0014\u00031\u0001;\u0003\t1h\u0007\u0005\u0002\u0016w\u00111A\b\u0001EC\u0002a\u0011!\u0001\u0016\u001c\t\u000by\n\u0002\u0019A \u0002\u0005Y<\u0004CA\u000bA\t\u0019\t\u0005\u0001#b\u00011\t\u0011Ak\u000e\u0005\u0006\u0007F\u0001\r\u0001R\u0001\u0003mb\u0002\"!F#\u0005\r\u0019\u0003\u0001R1\u0001\u0019\u0005\t!\u0006\bC\u0003I#\u0001\u0007\u0011*\u0001\u0002wsA\u0011QC\u0013\u0003\u0007\u0017\u0002A)\u0019\u0001\r\u0003\u0005QK\u0004\"B'\u0001\t\u0003q\u0015aB2veJLW\rZ\u000b\u0002\u001fB!\u0001\u0002U\u0011S\u0013\t\t&AA\u0005Gk:\u001cG/[8ocA!\u0001\u0002\u0015\u0014T!\u0011A\u0001k\u000b+\u0011\t!\u0001\u0006'\u0016\t\u0005\u0011A+d\u000b\u0005\u0003\t!j:\u0006\u0003\u0002\u0005Q\u007fa\u0003B\u0001\u0003)E3B!\u0001\u0002U%\u0015Q\ta5\f\u0005\u0002]?6\tQL\u0003\u0002_\u0005\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005\u0001l&!D;ogB,7-[1mSj,G\rC\u0003c\u0001\u0011\u00051-\u0001\u0004ukBdW\rZ\u000b\u0002IB!\u0001\u0002U3\u0015!-Aa-\t\u0014,aURt\bR%\n\u0005\u001d\u0014!A\u0002+va2,\u0017\b\u000b\u0002b7\")!\u000e\u0001C!W\u0006AAo\\*ue&tw\rF\u0001m!\ti'/D\u0001o\u0015\ty\u0007/\u0001\u0003mC:<'\"A9\u0002\t)\fg/Y\u0005\u0003g:\u0014aa\u0015;sS:<\u0007\u0003\u0004\u0005\u0001C\u0019Z\u0003'\u000e\u001e@\t&#\u0002")
/* loaded from: classes3-dex2jar.jar:scala/Function9.class */
public interface Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> {

    /* renamed from: scala.Function9$class */
    /* loaded from: classes3-dex2jar.jar:scala/Function9$class.class */
    public abstract class Cclass {
        public static void $init$(Function9 function9) {
        }

        public static Function1 curried(Function9 function9) {
            return new Function9$$anonfun$curried$1(function9);
        }

        public static String toString(Function9 function9) {
            return "<function9>";
        }

        public static Function1 tupled(Function9 function9) {
            return new Function9$$anonfun$tupled$1(function9);
        }
    }

    R apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9);

    Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, R>>>>>>>>> curried();

    String toString();

    Function1<Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>, R> tupled();
}
