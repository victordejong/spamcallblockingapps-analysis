package scala.runtime;

import scala.Function1;
import scala.Function6;
import scala.Tuple6;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001I2Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c87\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0005\t%qy\"%\n\u0015,'\r\u0001\u0011\"\u0004\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u0011a!\u00118z%\u00164\u0007#\u0003\u0006\u000f!mq\u0012\u0005J\u0014+\u0013\tyAAA\u0005Gk:\u001cG/[8omA\u0011\u0011C\u0005\u0007\u0001\t\u0019\u0019\u0002\u0001#b\u0001)\t\u0011A+M\t\u0003+a\u0001\"A\u0003\f\n\u0005]!!a\u0002(pi\"Lgn\u001a\t\u0003\u0015eI!A\u0007\u0003\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u00129\u00111Q\u0004\u0001EC\u0002Q\u0011!\u0001\u0016\u001a\u0011\u0005EyBA\u0002\u0011\u0001\u0011\u000b\u0007AC\u0001\u0002UgA\u0011\u0011C\t\u0003\u0007G\u0001A)\u0019\u0001\u000b\u0003\u0005Q#\u0004CA\t&\t\u00191\u0003\u0001#b\u0001)\t\u0011A+\u000e\t\u0003#!\"a!\u000b\u0001\t\u0006\u0004!\"A\u0001+7!\t\t2\u0006\u0002\u0004-\u0001\u0011\u0015\r\u0001\u0006\u0002\u0002%\")a\u0006\u0001C\u0001_\u00051A(\u001b8jiz\"\u0012\u0001\r\t\nc\u0001\u00012DH\u0011%O)j\u0011A\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction6.class */
public abstract class AbstractFunction6<T1, T2, T3, T4, T5, T6, R> implements Function6<T1, T2, T3, T4, T5, T6, R> {
    public AbstractFunction6() {
        Function6.Cclass.$init$(this);
    }

    @Override // scala.Function6
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, R>>>>>> curried() {
        return Function6.Cclass.curried(this);
    }

    @Override // scala.Function6
    public String toString() {
        return Function6.Cclass.toString(this);
    }

    @Override // scala.Function6
    public Function1<Tuple6<T1, T2, T3, T4, T5, T6>, R> tupled() {
        return Function6.Cclass.tupled(this);
    }
}
