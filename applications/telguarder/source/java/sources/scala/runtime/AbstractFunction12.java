package scala.runtime;

import scala.Function1;
import scala.Function12;
import scala.Tuple12;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00113Q!\u0001\u0002\u0002\u0002\u001d\u0011!#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c82e)\u00111\u0001B\u0001\beVtG/[7f\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u000f\u0011IarDI\u0013)W9\nDg\u000e\u001e>'\r\u0001\u0011\"\u0004\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u0011a!\u00118z%\u00164\u0007c\u0004\u0006\u000f!mq\u0012\u0005J\u0014+[A\u001ad'\u000f\u001f\n\u0005=!!A\u0003$v]\u000e$\u0018n\u001c82eA\u0011\u0011C\u0005\u0007\u0001\t\u0019\u0019\u0002\u0001#b\u0001)\t\u0011A+M\t\u0003+a\u0001\"A\u0003\f\n\u0005]!!a\u0002(pi\"Lgn\u001a\t\u0003\u0015eI!A\u0007\u0003\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u00129\u00111Q\u0004\u0001EC\u0002Q\u0011!\u0001\u0016\u001a\u0011\u0005EyBA\u0002\u0011\u0001\u0011\u000b\u0007AC\u0001\u0002UgA\u0011\u0011C\t\u0003\u0007G\u0001A)\u0019\u0001\u000b\u0003\u0005Q#\u0004CA\t&\t\u00191\u0003\u0001#b\u0001)\t\u0011A+\u000e\t\u0003#!\"a!\u000b\u0001\t\u0006\u0004!\"A\u0001+7!\t\t2\u0006\u0002\u0004-\u0001!\u0015\r\u0001\u0006\u0002\u0003)^\u0002\"!\u0005\u0018\u0005\r=\u0002\u0001R1\u0001\u0015\u0005\t!\u0006\b\u0005\u0002\u0012c\u00111!\u0007\u0001EC\u0002Q\u0011!\u0001V\u001d\u0011\u0005E!DAB\u001b\u0001\u0011\u000b\u0007ACA\u0002UcA\u0002\"!E\u001c\u0005\ra\u0002\u0001R1\u0001\u0015\u0005\r!\u0016'\r\t\u0003#i\"aa\u000f\u0001\t\u0006\u0004!\"a\u0001+2eA\u0011\u0011#\u0010\u0003\u0007}\u0001!)\u0019\u0001\u000b\u0003\u0003ICQ\u0001\u0011\u0001\u0005\u0002\u0005\u000ba\u0001P5oSRtD#\u0001\"\u0011\u001f\r\u0003\u0001c\u0007\u0010\"I\u001dRS\u0006M\u001a7sqj\u0011A\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction12.class */
public abstract class AbstractFunction12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, R> implements Function12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, R> {
    public AbstractFunction12() {
        Function12.Cclass.$init$(this);
    }

    @Override // scala.Function12
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, R>>>>>>>>>>>> curried() {
        return Function12.Cclass.curried(this);
    }

    @Override // scala.Function12
    public String toString() {
        return Function12.Cclass.toString(this);
    }

    @Override // scala.Function12
    public Function1<Tuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>, R> tupled() {
        return Function12.Cclass.tupled(this);
    }
}
