package scala;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001=4\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005QA\u001c\u0002\n\rVt7\r^5p]bR\u0011aA\u0001\u0006g\u000e\fG.Y\u0002\u0001+)1!e\n\u00172mm\u0002UIF\n\u0003\u0001\u001d\u0001\"\u0001C\u0005\u000e\u0003\tI!A\u0003\u0002\u0003\r\u0005s\u0017PU3g\u0011\u0015a\u0001\u0001\"\u0001\u000e\u0003\u0019!\u0013N\\5uIQ\ta\u0002\u0005\u0002\t\u001f%\u0011\u0001C\u0001\u0002\u0005+:LG\u000fC\u0003\u0013\u0001\u0019\u00051#A\u0003baBd\u0017\u0010F\u0005\u0015?\u0011Jcf\r\u001d>\u0005B\u0011QC\u0006\u0007\u0001\t\u00199\u0002\u0001\"b\u00011\t\t!+\u0005\u0002\u001a9A\u0011\u0001BG\u0005\u00037\t\u0011qAT8uQ&tw\r\u0005\u0002\t;%\u0011aD\u0001\u0002\u0004\u0003:L\b\"\u0002\u0011\u0012\u0001\u0004\t\u0013A\u0001<2!\t)\"\u0005\u0002\u0004$\u0001!\u0015\r\u0001\u0007\u0002\u0003)FBQ!J\tA\u0002\u0019\n!A\u001e\u001a\u0011\u0005U9CA\u0002\u0015\u0001\u0011\u000b\u0007\u0001D\u0001\u0002Ue!)!&\u0005a\u0001W\u0005\u0011ao\r\t\u0003+1\"a!\f\u0001\t\u0006\u0004A\"A\u0001+4\u0011\u0015y\u0013\u00031\u00011\u0003\t1H\u0007\u0005\u0002\u0016c\u00111!\u0007\u0001EC\u0002a\u0011!\u0001\u0016\u001b\t\u000bQ\n\u0002\u0019A\u001b\u0002\u0005Y,\u0004CA\u000b7\t\u00199\u0004\u0001#b\u00011\t\u0011A+\u000e\u0005\u0006sE\u0001\rAO\u0001\u0003mZ\u0002\"!F\u001e\u0005\rq\u0002\u0001R1\u0001\u0019\u0005\t!f\u0007C\u0003?#\u0001\u0007q(\u0001\u0002woA\u0011Q\u0003\u0011\u0003\u0007\u0003\u0002A)\u0019\u0001\r\u0003\u0005Q;\u0004\"B\"\u0012\u0001\u0004!\u0015A\u0001<9!\t)R\t\u0002\u0004G\u0001!\u0015\r\u0001\u0007\u0002\u0003)bBQ\u0001\u0013\u0001\u0005\u0002%\u000bqaY;se&,G-F\u0001K!\u0011A1*I'\n\u00051\u0013!!\u0003$v]\u000e$\u0018n\u001c82!\u0011A1J\n(\u0011\t!Y5f\u0014\t\u0005\u0011-\u0003\u0004\u000b\u0005\u0003\t\u0017V\n\u0006\u0003\u0002\u0005LuI\u0003B\u0001C&@'B!\u0001b\u0013#\u0015Q\t9U\u000b\u0005\u0002W36\tqK\u0003\u0002Y\u0005\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005i;&!D;ogB,7-[1mSj,G\rC\u0003]\u0001\u0011\u0005Q,\u0001\u0004ukBdW\rZ\u000b\u0002=B!\u0001bS0\u0015!)A\u0001-\t\u0014,aURt\bR\u0005\u0003C\n\u0011a\u0001V;qY\u0016D\u0004FA.V\u0011\u0015!\u0007\u0001\"\u0011f\u0003!!xn\u0015;sS:<G#\u00014\u0011\u0005\u001ddW\"\u00015\u000b\u0005%T\u0017\u0001\u00027b]\u001eT\u0011a[\u0001\u0005U\u00064\u0018-\u0003\u0002nQ\n11\u000b\u001e:j]\u001e\u00042\u0002\u0003\u0001\"M-\u0002TGO E)\u0001")
/* loaded from: classes3-dex2jar.jar:scala/Function8.class */
public interface Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> {

    /* renamed from: scala.Function8$class */
    /* loaded from: classes3-dex2jar.jar:scala/Function8$class.class */
    public abstract class Cclass {
        public static void $init$(Function8 function8) {
        }

        public static Function1 curried(Function8 function8) {
            return new Function8$$anonfun$curried$1(function8);
        }

        public static String toString(Function8 function8) {
            return "<function8>";
        }

        public static Function1 tupled(Function8 function8) {
            return new Function8$$anonfun$tupled$1(function8);
        }
    }

    R apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8);

    Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, R>>>>>>>> curried();

    String toString();

    Function1<Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>, R> tupled();
}
