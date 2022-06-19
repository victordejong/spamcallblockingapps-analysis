package scala.runtime;

import scala.Function1;
import scala.Function13;
import scala.Tuple13;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u001d3Q!\u0001\u0002\u0002\u0002\u001d\u0011!#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c82g)\u00111\u0001B\u0001\beVtG/[7f\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0010\u0011IarDI\u0013)W9\nDg\u000e\u001e>\u0001N\u0019\u0001!C\u0007\u0011\u0005)YQ\"\u0001\u0003\n\u00051!!AB!osJ+g\r\u0005\t\u000b\u001dAYb$\t\u0013(U5\u00024GN\u001d=\u007f%\u0011q\u0002\u0002\u0002\u000b\rVt7\r^5p]F\u001a\u0004CA\t\u0013\u0019\u0001!aa\u0005\u0001\t\u0006\u0004!\"A\u0001+2#\t)\u0002\u0004\u0005\u0002\u000b-%\u0011q\u0003\u0002\u0002\b\u001d>$\b.\u001b8h!\tQ\u0011$\u0003\u0002\u001b\t\t\u0019\u0011I\\=\u0011\u0005EaBAB\u000f\u0001\u0011\u000b\u0007AC\u0001\u0002UeA\u0011\u0011c\b\u0003\u0007A\u0001A)\u0019\u0001\u000b\u0003\u0005Q\u001b\u0004CA\t#\t\u0019\u0019\u0003\u0001#b\u0001)\t\u0011A\u000b\u000e\t\u0003#\u0015\"aA\n\u0001\t\u0006\u0004!\"A\u0001+6!\t\t\u0002\u0006\u0002\u0004*\u0001!\u0015\r\u0001\u0006\u0002\u0003)Z\u0002\"!E\u0016\u0005\r1\u0002\u0001R1\u0001\u0015\u0005\t!v\u0007\u0005\u0002\u0012]\u00111q\u0006\u0001EC\u0002Q\u0011!\u0001\u0016\u001d\u0011\u0005E\tDA\u0002\u001a\u0001\u0011\u000b\u0007AC\u0001\u0002UsA\u0011\u0011\u0003\u000e\u0003\u0007k\u0001A)\u0019\u0001\u000b\u0003\u0007Q\u000b\u0004\u0007\u0005\u0002\u0012o\u00111\u0001\b\u0001EC\u0002Q\u00111\u0001V\u00192!\t\t\"\b\u0002\u0004<\u0001!\u0015\r\u0001\u0006\u0002\u0004)F\u0012\u0004CA\t>\t\u0019q\u0004\u0001#b\u0001)\t\u0019A+M\u001a\u0011\u0005E\u0001EAB!\u0001\t\u000b\u0007ACA\u0001S\u0011\u0015\u0019\u0005\u0001\"\u0001E\u0003\u0019a\u0014N\\5u}Q\tQ\t\u0005\tG\u0001AYb$\t\u0013(U5\u00024GN\u001d=\u007f5\t!\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction13.class */
public abstract class AbstractFunction13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, R> implements Function13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, R> {
    public AbstractFunction13() {
        Function13.Cclass.$init$(this);
    }

    @Override // scala.Function13
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, Function1<T13, R>>>>>>>>>>>>> curried() {
        return Function13.Cclass.curried(this);
    }

    @Override // scala.Function13
    public String toString() {
        return Function13.Cclass.toString(this);
    }

    @Override // scala.Function13
    public Function1<Tuple13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13>, R> tupled() {
        return Function13.Cclass.tupled(this);
    }
}
