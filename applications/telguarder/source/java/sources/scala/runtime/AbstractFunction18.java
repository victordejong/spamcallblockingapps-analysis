package scala.runtime;

import scala.Function1;
import scala.Function18;
import scala.Tuple18;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001Y3Q!\u0001\u0002\u0002\u0002\u001d\u0011!#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c82q)\u00111\u0001B\u0001\beVtG/[7f\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0015\u0011IarDI\u0013)W9\nDg\u000e\u001e>\u0001\u000e3\u0015\nT(\u0014\u0007\u0001IQ\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001a\u0004RC\u0003\b\u00117y\tCe\n\u0016.aM2\u0014\bP C\u000b\"[e*\u0003\u0002\u0010\t\tQa)\u001e8di&|g.\r\u001d\u0011\u0005E\u0011B\u0002\u0001\u0003\u0007'\u0001A)\u0019\u0001\u000b\u0003\u0005Q\u000b\u0014CA\u000b\u0019!\tQa#\u0003\u0002\u0018\t\t9aj\u001c;iS:<\u0007C\u0001\u0006\u001a\u0013\tQBAA\u0002B]f\u0004\"!\u0005\u000f\u0005\ru\u0001\u0001R1\u0001\u0015\u0005\t!&\u0007\u0005\u0002\u0012?\u00111\u0001\u0005\u0001EC\u0002Q\u0011!\u0001V\u001a\u0011\u0005E\u0011CAB\u0012\u0001\u0011\u000b\u0007AC\u0001\u0002UiA\u0011\u0011#\n\u0003\u0007M\u0001A)\u0019\u0001\u000b\u0003\u0005Q+\u0004CA\t)\t\u0019I\u0003\u0001#b\u0001)\t\u0011AK\u000e\t\u0003#-\"a\u0001\f\u0001\t\u0006\u0004!\"A\u0001+8!\t\tb\u0006\u0002\u00040\u0001!\u0015\r\u0001\u0006\u0002\u0003)b\u0002\"!E\u0019\u0005\rI\u0002\u0001R1\u0001\u0015\u0005\t!\u0016\b\u0005\u0002\u0012i\u00111Q\u0007\u0001EC\u0002Q\u00111\u0001V\u00191!\t\tr\u0007\u0002\u00049\u0001!\u0015\r\u0001\u0006\u0002\u0004)F\n\u0004CA\t;\t\u0019Y\u0004\u0001#b\u0001)\t\u0019A+\r\u001a\u0011\u0005EiDA\u0002 \u0001\u0011\u000b\u0007ACA\u0002UcM\u0002\"!\u0005!\u0005\r\u0005\u0003\u0001R1\u0001\u0015\u0005\r!\u0016\u0007\u000e\t\u0003#\r#a\u0001\u0012\u0001\t\u0006\u0004!\"a\u0001+2kA\u0011\u0011C\u0012\u0003\u0007\u000f\u0002A)\u0019\u0001\u000b\u0003\u0007Q\u000bd\u0007\u0005\u0002\u0012\u0013\u00121!\n\u0001EC\u0002Q\u00111\u0001V\u00198!\t\tB\n\u0002\u0004N\u0001!\u0015\r\u0001\u0006\u0002\u0004)FB\u0004CA\tP\t\u0019\u0001\u0006\u0001\"b\u0001)\t\t!\u000bC\u0003S\u0001\u0011\u00051+\u0001\u0004=S:LGO\u0010\u000b\u0002)B)R\u000b\u0001\t\u001c=\u0005\"sEK\u00171gYJDh\u0010\"F\u0011.sU\"\u0001\u0002")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction18.class */
public abstract class AbstractFunction18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, R> implements Function18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, R> {
    public AbstractFunction18() {
        Function18.Cclass.$init$(this);
    }

    @Override // scala.Function18
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, Function1<T13, Function1<T14, Function1<T15, Function1<T16, Function1<T17, Function1<T18, R>>>>>>>>>>>>>>>>>> curried() {
        return Function18.Cclass.curried(this);
    }

    @Override // scala.Function18
    public String toString() {
        return Function18.Cclass.toString(this);
    }

    @Override // scala.Function18
    public Function1<Tuple18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18>, R> tupled() {
        return Function18.Cclass.tupled(this);
    }
}
