package scala;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001u3\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005Q\u0001\u0018\u0002\n\rVt7\r^5p]VR\u0011aA\u0001\u0006g\u000e\fG.Y\u0002\u0001+\u001d1!e\n\u00172mY\u0019\"\u0001A\u0004\u0011\u0005!IQ\"\u0001\u0002\n\u0005)\u0011!AB!osJ+g\rC\u0003\r\u0001\u0011\u0005Q\"\u0001\u0004%S:LG\u000f\n\u000b\u0002\u001dA\u0011\u0001bD\u0005\u0003!\t\u0011A!\u00168ji\")!\u0003\u0001D\u0001'\u0005)\u0011\r\u001d9msR1Ac\b\u0013*]M\u0002\"!\u0006\f\r\u0001\u00111q\u0003\u0001CC\u0002a\u0011\u0011AU\t\u00033q\u0001\"\u0001\u0003\u000e\n\u0005m\u0011!a\u0002(pi\"Lgn\u001a\t\u0003\u0011uI!A\b\u0002\u0003\u0007\u0005s\u0017\u0010C\u0003!#\u0001\u0007\u0011%\u0001\u0002wcA\u0011QC\t\u0003\u0007G\u0001A)\u0019\u0001\r\u0003\u0005Q\u000b\u0004\"B\u0013\u0012\u0001\u00041\u0013A\u0001<3!\t)r\u0005\u0002\u0004)\u0001!\u0015\r\u0001\u0007\u0002\u0003)JBQAK\tA\u0002-\n!A^\u001a\u0011\u0005UaCAB\u0017\u0001\u0011\u000b\u0007\u0001D\u0001\u0002Ug!)q&\u0005a\u0001a\u0005\u0011a\u000f\u000e\t\u0003+E\"aA\r\u0001\t\u0006\u0004A\"A\u0001+5\u0011\u0015!\u0014\u00031\u00016\u0003\t1X\u0007\u0005\u0002\u0016m\u00111q\u0007\u0001EC\u0002a\u0011!\u0001V\u001b\t\u000be\u0002A\u0011\u0001\u001e\u0002\u000f\r,(O]5fIV\t1\b\u0005\u0003\ty\u0005r\u0014BA\u001f\u0003\u0005%1UO\\2uS>t\u0017\u0007\u0005\u0003\ty\u0019z\u0004\u0003\u0002\u0005=W\u0001\u0003B\u0001\u0003\u001f1\u0003B!\u0001\u0002P\u001b\u0015Q\tA4\t\u0005\u0002E\u000f6\tQI\u0003\u0002G\u0005\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005!+%!D;ogB,7-[1mSj,G\rC\u0003K\u0001\u0011\u00051*\u0001\u0004ukBdW\rZ\u000b\u0002\u0019B!\u0001\u0002P'\u0015!\u001dAa*\t\u0014,aUJ!a\u0014\u0002\u0003\rQ+\b\u000f\\36Q\tI5\tC\u0003S\u0001\u0011\u00053+\u0001\u0005u_N#(/\u001b8h)\u0005!\u0006CA+[\u001b\u00051&BA,Y\u0003\u0011a\u0017M\\4\u000b\u0003e\u000bAA[1wC&\u00111L\u0016\u0002\u0007'R\u0014\u0018N\\4\u0011\u0011!\u0001\u0011EJ\u00161kQ\u0001")
/* loaded from: classes3-dex2jar.jar:scala/Function5.class */
public interface Function5<T1, T2, T3, T4, T5, R> {

    /* renamed from: scala.Function5$class */
    /* loaded from: classes3-dex2jar.jar:scala/Function5$class.class */
    public abstract class Cclass {
        public static void $init$(Function5 function5) {
        }

        public static Function1 curried(Function5 function5) {
            return new Function5$$anonfun$curried$1(function5);
        }

        public static String toString(Function5 function5) {
            return "<function5>";
        }

        public static Function1 tupled(Function5 function5) {
            return new Function5$$anonfun$tupled$1(function5);
        }
    }

    R apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5);

    Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, R>>>>> curried();

    String toString();

    Function1<Tuple5<T1, T2, T3, T4, T5>, R> tupled();
}
