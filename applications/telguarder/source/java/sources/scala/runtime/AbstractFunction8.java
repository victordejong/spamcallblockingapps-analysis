package scala.runtime;

import scala.Function1;
import scala.Function8;
import scala.Tuple8;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001a2Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c89\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0006\t%qy\"%\n\u0015,]E\u001a2\u0001A\u0005\u000e!\tQ1\"D\u0001\u0005\u0013\taAA\u0001\u0004B]f\u0014VM\u001a\t\f\u00159\u00012DH\u0011%O)j\u0003'\u0003\u0002\u0010\t\tIa)\u001e8di&|g\u000e\u000f\t\u0003#Ia\u0001\u0001\u0002\u0004\u0014\u0001!\u0015\r\u0001\u0006\u0002\u0003)F\n\"!\u0006\r\u0011\u0005)1\u0012BA\f\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"AC\r\n\u0005i!!aA!osB\u0011\u0011\u0003\b\u0003\u0007;\u0001A)\u0019\u0001\u000b\u0003\u0005Q\u0013\u0004CA\t \t\u0019\u0001\u0003\u0001#b\u0001)\t\u0011Ak\r\t\u0003#\t\"aa\t\u0001\t\u0006\u0004!\"A\u0001+5!\t\tR\u0005\u0002\u0004'\u0001!\u0015\r\u0001\u0006\u0002\u0003)V\u0002\"!\u0005\u0015\u0005\r%\u0002\u0001R1\u0001\u0015\u0005\t!f\u0007\u0005\u0002\u0012W\u00111A\u0006\u0001EC\u0002Q\u0011!\u0001V\u001c\u0011\u0005EqCAB\u0018\u0001\u0011\u000b\u0007AC\u0001\u0002UqA\u0011\u0011#\r\u0003\u0007e\u0001!)\u0019\u0001\u000b\u0003\u0003ICQ\u0001\u000e\u0001\u0005\u0002U\na\u0001P5oSRtD#\u0001\u001c\u0011\u0017]\u0002\u0001c\u0007\u0010\"I\u001dRS\u0006M\u0007\u0002\u0005\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction8.class */
public abstract class AbstractFunction8<T1, T2, T3, T4, T5, T6, T7, T8, R> implements Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> {
    public AbstractFunction8() {
        Function8.Cclass.$init$(this);
    }

    @Override // scala.Function8
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, R>>>>>>>> curried() {
        return Function8.Cclass.curried(this);
    }

    @Override // scala.Function8
    public String toString() {
        return Function8.Cclass.toString(this);
    }

    @Override // scala.Function8
    public Function1<Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>, R> tupled() {
        return Function8.Cclass.tupled(this);
    }
}
