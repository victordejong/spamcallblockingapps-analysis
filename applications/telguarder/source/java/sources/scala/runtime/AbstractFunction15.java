package scala.runtime;

import scala.Function1;
import scala.Function15;
import scala.Tuple15;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u000153Q!\u0001\u0002\u0002\u0002\u001d\u0011!#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c82k)\u00111\u0001B\u0001\beVtG/[7f\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0012\u0011IarDI\u0013)W9\nDg\u000e\u001e>\u0001\u000e35c\u0001\u0001\n\u001bA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011%)q\u0001c\u0007\u0010\"I\u001dRS\u0006M\u001a7sqz$)R\u0005\u0003\u001f\u0011\u0011!BR;oGRLwN\\\u00196!\t\t\"\u0003\u0004\u0001\u0005\rM\u0001\u0001R1\u0001\u0015\u0005\t!\u0016'\u0005\u0002\u00161A\u0011!BF\u0005\u0003/\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u000b3%\u0011!\u0004\u0002\u0002\u0004\u0003:L\bCA\t\u001d\t\u0019i\u0002\u0001#b\u0001)\t\u0011AK\r\t\u0003#}!a\u0001\t\u0001\t\u0006\u0004!\"A\u0001+4!\t\t\"\u0005\u0002\u0004$\u0001!\u0015\r\u0001\u0006\u0002\u0003)R\u0002\"!E\u0013\u0005\r\u0019\u0002\u0001R1\u0001\u0015\u0005\t!V\u0007\u0005\u0002\u0012Q\u00111\u0011\u0006\u0001EC\u0002Q\u0011!\u0001\u0016\u001c\u0011\u0005EYCA\u0002\u0017\u0001\u0011\u000b\u0007AC\u0001\u0002UoA\u0011\u0011C\f\u0003\u0007_\u0001A)\u0019\u0001\u000b\u0003\u0005QC\u0004CA\t2\t\u0019\u0011\u0004\u0001#b\u0001)\t\u0011A+\u000f\t\u0003#Q\"a!\u000e\u0001\t\u0006\u0004!\"a\u0001+2aA\u0011\u0011c\u000e\u0003\u0007q\u0001A)\u0019\u0001\u000b\u0003\u0007Q\u000b\u0014\u0007\u0005\u0002\u0012u\u001111\b\u0001EC\u0002Q\u00111\u0001V\u00193!\t\tR\b\u0002\u0004?\u0001!\u0015\r\u0001\u0006\u0002\u0004)F\u001a\u0004CA\tA\t\u0019\t\u0005\u0001#b\u0001)\t\u0019A+\r\u001b\u0011\u0005E\u0019EA\u0002#\u0001\u0011\u000b\u0007ACA\u0002UcU\u0002\"!\u0005$\u0005\r\u001d\u0003AQ1\u0001\u0015\u0005\u0005\u0011\u0006\"B%\u0001\t\u0003Q\u0015A\u0002\u001fj]&$h\bF\u0001L!Ia\u0005\u0001E\u000e\u001fC\u0011:#&\f\u00194mebtHQ#\u000e\u0003\t\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction15.class */
public abstract class AbstractFunction15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, R> implements Function15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, R> {
    public AbstractFunction15() {
        Function15.Cclass.$init$(this);
    }

    @Override // scala.Function15
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, Function1<T13, Function1<T14, Function1<T15, R>>>>>>>>>>>>>>> curried() {
        return Function15.Cclass.curried(this);
    }

    @Override // scala.Function15
    public String toString() {
        return Function15.Cclass.toString(this);
    }

    @Override // scala.Function15
    public Function1<Tuple15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15>, R> tupled() {
        return Function15.Cclass.tupled(this);
    }
}
