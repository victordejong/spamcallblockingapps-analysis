package scala.runtime;

import scala.Function1;
import scala.Function11;
import scala.Tuple11;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00053Q!\u0001\u0002\u0002\u0002\u001d\u0011!#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c82c)\u00111\u0001B\u0001\beVtG/[7f\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u000e\u0011IarDI\u0013)W9\nDg\u000e\u001e\u0014\u0007\u0001IQ\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001a\u0004bB\u0003\b\u00117y\tCe\n\u0016.aM2\u0014(\u0003\u0002\u0010\t\tQa)\u001e8di&|g.M\u0019\u0011\u0005E\u0011B\u0002\u0001\u0003\u0007'\u0001A)\u0019\u0001\u000b\u0003\u0005Q\u000b\u0014CA\u000b\u0019!\tQa#\u0003\u0002\u0018\t\t9aj\u001c;iS:<\u0007C\u0001\u0006\u001a\u0013\tQBAA\u0002B]f\u0004\"!\u0005\u000f\u0005\ru\u0001\u0001R1\u0001\u0015\u0005\t!&\u0007\u0005\u0002\u0012?\u00111\u0001\u0005\u0001EC\u0002Q\u0011!\u0001V\u001a\u0011\u0005E\u0011CAB\u0012\u0001\u0011\u000b\u0007AC\u0001\u0002UiA\u0011\u0011#\n\u0003\u0007M\u0001A)\u0019\u0001\u000b\u0003\u0005Q+\u0004CA\t)\t\u0019I\u0003\u0001#b\u0001)\t\u0011AK\u000e\t\u0003#-\"a\u0001\f\u0001\t\u0006\u0004!\"A\u0001+8!\t\tb\u0006\u0002\u00040\u0001!\u0015\r\u0001\u0006\u0002\u0003)b\u0002\"!E\u0019\u0005\rI\u0002\u0001R1\u0001\u0015\u0005\t!\u0016\b\u0005\u0002\u0012i\u00111Q\u0007\u0001EC\u0002Q\u00111\u0001V\u00191!\t\tr\u0007\u0002\u00049\u0001!\u0015\r\u0001\u0006\u0002\u0004)F\n\u0004CA\t;\t\u0019Y\u0004\u0001\"b\u0001)\t\t!\u000bC\u0003>\u0001\u0011\u0005a(\u0001\u0004=S:LGO\u0010\u000b\u0002\u007fAq\u0001\t\u0001\t\u001c=\u0005\"sEK\u00171gYJT\"\u0001\u0002")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction11.class */
public abstract class AbstractFunction11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R> implements Function11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R> {
    public AbstractFunction11() {
        Function11.Cclass.$init$(this);
    }

    @Override // scala.Function11
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, R>>>>>>>>>>> curried() {
        return Function11.Cclass.curried(this);
    }

    @Override // scala.Function11
    public String toString() {
        return Function11.Cclass.toString(this);
    }

    @Override // scala.Function11
    public Function1<Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>, R> tupled() {
        return Function11.Cclass.tupled(this);
    }
}
