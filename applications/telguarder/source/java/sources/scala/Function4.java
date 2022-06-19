package scala;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001]3\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005QA\u0016\u0002\n\rVt7\r^5p]RR\u0011aA\u0001\u0006g\u000e\fG.Y\u0002\u0001+\u00191!e\n\u00172-M\u0011\u0001a\u0002\t\u0003\u0011%i\u0011AA\u0005\u0003\u0015\t\u0011a!\u00118z%\u00164\u0007\"\u0002\u0007\u0001\t\u0003i\u0011A\u0002\u0013j]&$H\u0005F\u0001\u000f!\tAq\"\u0003\u0002\u0011\u0005\t!QK\\5u\u0011\u0015\u0011\u0002A\"\u0001\u0014\u0003\u0015\t\u0007\u000f\u001d7z)\u0015!r\u0004J\u0015/!\t)b\u0003\u0004\u0001\u0005\r]\u0001AQ1\u0001\u0019\u0005\u0005\u0011\u0016CA\r\u001d!\tA!$\u0003\u0002\u001c\u0005\t9aj\u001c;iS:<\u0007C\u0001\u0005\u001e\u0013\tq\"AA\u0002B]fDQ\u0001I\tA\u0002\u0005\n!A^\u0019\u0011\u0005U\u0011CAB\u0012\u0001\u0011\u000b\u0007\u0001D\u0001\u0002Uc!)Q%\u0005a\u0001M\u0005\u0011aO\r\t\u0003+\u001d\"a\u0001\u000b\u0001\t\u0006\u0004A\"A\u0001+3\u0011\u0015Q\u0013\u00031\u0001,\u0003\t18\u0007\u0005\u0002\u0016Y\u00111Q\u0006\u0001EC\u0002a\u0011!\u0001V\u001a\t\u000b=\n\u0002\u0019\u0001\u0019\u0002\u0005Y$\u0004CA\u000b2\t\u0019\u0011\u0004\u0001#b\u00011\t\u0011A\u000b\u000e\u0005\u0006i\u0001!\t!N\u0001\bGV\u0014(/[3e+\u00051\u0004\u0003\u0002\u00058CeJ!\u0001\u000f\u0002\u0003\u0013\u0019+hn\u0019;j_:\f\u0004\u0003\u0002\u00058Mi\u0002B\u0001C\u001c,wA!\u0001b\u000e\u0019\u0015Q\t\u0019T\b\u0005\u0002?\u00036\tqH\u0003\u0002A\u0005\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005\t{$!D;ogB,7-[1mSj,G\rC\u0003E\u0001\u0011\u0005Q)\u0001\u0004ukBdW\rZ\u000b\u0002\rB!\u0001bN$\u0015!\u0019A\u0001*\t\u0014,a%\u0011\u0011J\u0001\u0002\u0007)V\u0004H.\u001a\u001b)\u0005\rk\u0004\"\u0002'\u0001\t\u0003j\u0015\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u00039\u0003\"a\u0014+\u000e\u0003AS!!\u0015*\u0002\t1\fgn\u001a\u0006\u0002'\u0006!!.\u0019<b\u0013\t)\u0006K\u0001\u0004TiJLgn\u001a\t\b\u0011\u0001\tce\u000b\u0019\u0015\u0001")
/* loaded from: classes3-dex2jar.jar:scala/Function4.class */
public interface Function4<T1, T2, T3, T4, R> {

    /* renamed from: scala.Function4$class */
    /* loaded from: classes3-dex2jar.jar:scala/Function4$class.class */
    public abstract class Cclass {
        public static void $init$(Function4 function4) {
        }

        public static Function1 curried(Function4 function4) {
            return new Function4$$anonfun$curried$1(function4);
        }

        public static String toString(Function4 function4) {
            return "<function4>";
        }

        public static Function1 tupled(Function4 function4) {
            return new Function4$$anonfun$tupled$1(function4);
        }
    }

    R apply(T1 t1, T2 t2, T3 t3, T4 t4);

    Function1<T1, Function1<T2, Function1<T3, Function1<T4, R>>>> curried();

    String toString();

    Function1<Tuple4<T1, T2, T3, T4>, R> tupled();
}
