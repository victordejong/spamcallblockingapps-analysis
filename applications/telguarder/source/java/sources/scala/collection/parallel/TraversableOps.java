package scala.collection.parallel;

import scala.Function0;
import scala.Function1;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001M3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\bUe\u00064XM]:bE2,w\n]:\u000b\u0005\r!\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)a4C\u0001\u0001\f!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006!\u0001!\t!E\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003I\u0001\"\u0001D\n\n\u0005Q1!\u0001B+oSR4qA\u0006\u0001\u0011\u0002G\u0005qCA\u0005Pi\",'o^5tKV\u0011\u0001DH\n\u0003+-AQAG\u000b\u0007\u0002m\t\u0011b\u001c;iKJ<\u0018n]3\u0015\u0005q9\u0003CA\u000f\u001f\u0019\u0001!QaH\u000bC\u0002\u0001\u0012\u0011AU\t\u0003C\u0011\u0002\"\u0001\u0004\u0012\n\u0005\r2!a\u0002(pi\"Lgn\u001a\t\u0003\u0019\u0015J!A\n\u0004\u0003\u0007\u0005s\u0017\u0010\u0003\u0004)3\u0011\u0005\r!K\u0001\b]>$(m\u001c3z!\ra!\u0006H\u0005\u0003W\u0019\u0011\u0001\u0002\u00102z]\u0006lWM\u0010\u0005\u0006[\u00011\tAL\u0001\u000bSN\u0004\u0016M]1mY\u0016dW#A\u0018\u0011\u00051\u0001\u0014BA\u0019\u0007\u0005\u001d\u0011un\u001c7fC:DQa\r\u0001\u0007\u00029\nQ\"[:QCJLE/\u001a:bE2,\u0007\"B\u001b\u0001\r\u00031\u0014!D1t!\u0006\u0014\u0018\n^3sC\ndW-F\u00018!\rA\u0014hO\u0007\u0002\u0005%\u0011!H\u0001\u0002\f!\u0006\u0014\u0018\n^3sC\ndW\r\u0005\u0002\u001ey\u0011)Q\b\u0001b\u0001A\t\tA\u000bC\u0003@\u0001\u0019\u0005a&\u0001\u0005jgB\u000b'oU3r\u0011\u0015\t\u0005A\"\u0001C\u0003!\t7\u000fU1s'\u0016\fX#A\"\u0011\u0007a\"5(\u0003\u0002F\u0005\t1\u0001+\u0019:TKFDQa\u0012\u0001\u0007\u0002!\u000b\u0001\"\u001b4QCJ\u001cV-]\u000b\u0003\u00136#\"A\u0013(\u0011\u0007-+B*D\u0001\u0001!\tiR\nB\u0003 \r\n\u0007\u0001\u0005C\u0003P\r\u0002\u0007\u0001+\u0001\u0004jg\n|G-\u001f\t\u0005\u0019E\u001bE*\u0003\u0002S\r\tIa)\u001e8di&|g.\r")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/TraversableOps.class */
public interface TraversableOps<T> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/TraversableOps$Otherwise.class */
    public interface Otherwise<R> {
        R otherwise(Function0<R> function0);
    }

    /* renamed from: scala.collection.parallel.TraversableOps$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/TraversableOps$class.class */
    public abstract class Cclass {
        public static void $init$(TraversableOps traversableOps) {
        }
    }

    ParIterable<T> asParIterable();

    ParSeq<T> asParSeq();

    <R> TraversableOps<T>.Otherwise<R> ifParSeq(Function1<ParSeq<T>, R> function1);

    boolean isParIterable();

    boolean isParSeq();

    boolean isParallel();
}
