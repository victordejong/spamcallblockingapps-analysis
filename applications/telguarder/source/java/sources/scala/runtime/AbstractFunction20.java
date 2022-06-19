package scala.runtime;

import scala.Function1;
import scala.Function20;
import scala.Tuple20;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001q3Q!\u0001\u0002\u0002\u0002\u001d\u0011!#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c83a)\u00111\u0001B\u0001\beVtG/[7f\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0017\u0011IarDI\u0013)W9\nDg\u000e\u001e>\u0001\u000e3\u0015\nT(S+N\u0019\u0001!C\u0007\u0011\u0005)YQ\"\u0001\u0003\n\u00051!!AB!osJ+g\rE\f\u000b\u001dAYb$\t\u0013(U5\u00024GN\u001d=\u007f\t+\u0005j\u0013(R)&\u0011q\u0002\u0002\u0002\u000b\rVt7\r^5p]J\u0002\u0004CA\t\u0013\u0019\u0001!aa\u0005\u0001\t\u0006\u0004!\"A\u0001+2#\t)\u0002\u0004\u0005\u0002\u000b-%\u0011q\u0003\u0002\u0002\b\u001d>$\b.\u001b8h!\tQ\u0011$\u0003\u0002\u001b\t\t\u0019\u0011I\\=\u0011\u0005EaBAB\u000f\u0001\u0011\u000b\u0007AC\u0001\u0002UeA\u0011\u0011c\b\u0003\u0007A\u0001A)\u0019\u0001\u000b\u0003\u0005Q\u001b\u0004CA\t#\t\u0019\u0019\u0003\u0001#b\u0001)\t\u0011A\u000b\u000e\t\u0003#\u0015\"aA\n\u0001\t\u0006\u0004!\"A\u0001+6!\t\t\u0002\u0006\u0002\u0004*\u0001!\u0015\r\u0001\u0006\u0002\u0003)Z\u0002\"!E\u0016\u0005\r1\u0002\u0001R1\u0001\u0015\u0005\t!v\u0007\u0005\u0002\u0012]\u00111q\u0006\u0001EC\u0002Q\u0011!\u0001\u0016\u001d\u0011\u0005E\tDA\u0002\u001a\u0001\u0011\u000b\u0007AC\u0001\u0002UsA\u0011\u0011\u0003\u000e\u0003\u0007k\u0001A)\u0019\u0001\u000b\u0003\u0007Q\u000b\u0004\u0007\u0005\u0002\u0012o\u00111\u0001\b\u0001EC\u0002Q\u00111\u0001V\u00192!\t\t\"\b\u0002\u0004<\u0001!\u0015\r\u0001\u0006\u0002\u0004)F\u0012\u0004CA\t>\t\u0019q\u0004\u0001#b\u0001)\t\u0019A+M\u001a\u0011\u0005E\u0001EAB!\u0001\u0011\u000b\u0007ACA\u0002UcQ\u0002\"!E\"\u0005\r\u0011\u0003\u0001R1\u0001\u0015\u0005\r!\u0016'\u000e\t\u0003#\u0019#aa\u0012\u0001\t\u0006\u0004!\"a\u0001+2mA\u0011\u0011#\u0013\u0003\u0007\u0015\u0002A)\u0019\u0001\u000b\u0003\u0007Q\u000bt\u0007\u0005\u0002\u0012\u0019\u00121Q\n\u0001EC\u0002Q\u00111\u0001V\u00199!\t\tr\n\u0002\u0004Q\u0001!\u0015\r\u0001\u0006\u0002\u0004)FJ\u0004CA\tS\t\u0019\u0019\u0006\u0001#b\u0001)\t\u0019AK\r\u0019\u0011\u0005E)FA\u0002,\u0001\t\u000b\u0007ACA\u0001S\u0011\u0015A\u0006\u0001\"\u0001Z\u0003\u0019a\u0014N\\5u}Q\t!\fE\f\\\u0001AYb$\t\u0013(U5\u00024GN\u001d=\u007f\t+\u0005j\u0013(R)6\t!\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction20.class */
public abstract class AbstractFunction20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, R> implements Function20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, R> {
    public AbstractFunction20() {
        Function20.Cclass.$init$(this);
    }

    @Override // scala.Function20
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, Function1<T10, Function1<T11, Function1<T12, Function1<T13, Function1<T14, Function1<T15, Function1<T16, Function1<T17, Function1<T18, Function1<T19, Function1<T20, R>>>>>>>>>>>>>>>>>>>> curried() {
        return Function20.Cclass.curried(this);
    }

    @Override // scala.Function20
    public String toString() {
        return Function20.Cclass.toString(this);
    }

    @Override // scala.Function20
    public Function1<Tuple20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20>, R> tupled() {
        return Function20.Cclass.tupled(this);
    }
}
