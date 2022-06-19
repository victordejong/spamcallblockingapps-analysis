package scala.runtime;

import scala.Function1;
import scala.Function16;
import scala.Tuple16;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001A3Q!\u0001\u0002\u0002\u0002\u001d\u0011!#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c82m)\u00111\u0001B\u0001\beVtG/[7f\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0013\u0011IarDI\u0013)W9\nDg\u000e\u001e>\u0001\u000e3\u0015jE\u0002\u0001\u00135\u0001\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\r\u0005s\u0017PU3g!MQa\u0002E\u000e\u001fC\u0011:#&\f\u00194mebtHQ#I\u0013\tyAA\u0001\u0006Gk:\u001cG/[8ocY\u0002\"!\u0005\n\r\u0001\u001111\u0003\u0001EC\u0002Q\u0011!\u0001V\u0019\u0012\u0005UA\u0002C\u0001\u0006\u0017\u0013\t9BAA\u0004O_RD\u0017N\\4\u0011\u0005)I\u0012B\u0001\u000e\u0005\u0005\r\te.\u001f\t\u0003#q!a!\b\u0001\t\u0006\u0004!\"A\u0001+3!\t\tr\u0004\u0002\u0004!\u0001!\u0015\r\u0001\u0006\u0002\u0003)N\u0002\"!\u0005\u0012\u0005\r\r\u0002\u0001R1\u0001\u0015\u0005\t!F\u0007\u0005\u0002\u0012K\u00111a\u0005\u0001EC\u0002Q\u0011!\u0001V\u001b\u0011\u0005EACAB\u0015\u0001\u0011\u000b\u0007AC\u0001\u0002UmA\u0011\u0011c\u000b\u0003\u0007Y\u0001A)\u0019\u0001\u000b\u0003\u0005Q;\u0004CA\t/\t\u0019y\u0003\u0001#b\u0001)\t\u0011A\u000b\u000f\t\u0003#E\"aA\r\u0001\t\u0006\u0004!\"A\u0001+:!\t\tB\u0007\u0002\u00046\u0001!\u0015\r\u0001\u0006\u0002\u0004)F\u0002\u0004CA\t8\t\u0019A\u0004\u0001#b\u0001)\t\u0019A+M\u0019\u0011\u0005EQDAB\u001e\u0001\u0011\u000b\u0007ACA\u0002UcI\u0002\"!E\u001f\u0005\ry\u0002\u0001R1\u0001\u0015\u0005\r!\u0016g\r\t\u0003#\u0001#a!\u0011\u0001\t\u0006\u0004!\"a\u0001+2iA\u0011\u0011c\u0011\u0003\u0007\t\u0002A)\u0019\u0001\u000b\u0003\u0007Q\u000bT\u0007\u0005\u0002\u0012\r\u00121q\t\u0001EC\u0002Q\u00111\u0001V\u00197!\t\t\u0012\n\u0002\u0004K\u0001\u0011\u0015\r\u0001\u0006\u0002\u0002%\")A\n\u0001C\u0001\u001b\u00061A(\u001b8jiz\"\u0012A\u0014\t\u0014\u001f\u0002\u00012DH\u0011%O)j\u0003g\r\u001c:y}\u0012U\tS\u0007\u0002\u0005\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction16.class */
public abstract class AbstractFunction16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, R> implements Function16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, R> {
    public AbstractFunction16() {
        Function16.Cclass.$init$(this);
    }

    @Override // scala.Function16
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, Function1<T13, Function1<T14, Function1<T15, Function1<T16, R>>>>>>>>>>>>>>>> curried() {
        return Function16.Cclass.curried(this);
    }

    @Override // scala.Function16
    public String toString() {
        return Function16.Cclass.toString(this);
    }

    @Override // scala.Function16
    public Function1<Tuple16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16>, R> tupled() {
        return Function16.Cclass.tupled(this);
    }
}
