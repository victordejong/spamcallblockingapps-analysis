package scala.runtime;

import scala.Function1;
import scala.Function7;
import scala.Tuple7;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001U2Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c88\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!F\u0005\t%qy\"%\n\u0015,]M\u0019\u0001!C\u0007\u0011\u0005)YQ\"\u0001\u0003\n\u00051!!AB!osJ+g\r\u0005\u0006\u000b\u001dAYb$\t\u0013(U5J!a\u0004\u0003\u0003\u0013\u0019+hn\u0019;j_:<\u0004CA\t\u0013\u0019\u0001!aa\u0005\u0001\t\u0006\u0004!\"A\u0001+2#\t)\u0002\u0004\u0005\u0002\u000b-%\u0011q\u0003\u0002\u0002\b\u001d>$\b.\u001b8h!\tQ\u0011$\u0003\u0002\u001b\t\t\u0019\u0011I\\=\u0011\u0005EaBAB\u000f\u0001\u0011\u000b\u0007AC\u0001\u0002UeA\u0011\u0011c\b\u0003\u0007A\u0001A)\u0019\u0001\u000b\u0003\u0005Q\u001b\u0004CA\t#\t\u0019\u0019\u0003\u0001#b\u0001)\t\u0011A\u000b\u000e\t\u0003#\u0015\"aA\n\u0001\t\u0006\u0004!\"A\u0001+6!\t\t\u0002\u0006\u0002\u0004*\u0001!\u0015\r\u0001\u0006\u0002\u0003)Z\u0002\"!E\u0016\u0005\r1\u0002\u0001R1\u0001\u0015\u0005\t!v\u0007\u0005\u0002\u0012]\u00111q\u0006\u0001CC\u0002Q\u0011\u0011A\u0015\u0005\u0006c\u0001!\tAM\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003M\u0002\"\u0002\u000e\u0001\u00117y\tCe\n\u0016.\u001b\u0005\u0011\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction7.class */
public abstract class AbstractFunction7<T1, T2, T3, T4, T5, T6, T7, R> implements Function7<T1, T2, T3, T4, T5, T6, T7, R> {
    public AbstractFunction7() {
        Function7.Cclass.$init$(this);
    }

    @Override // scala.Function7
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, R>>>>>>> curried() {
        return Function7.Cclass.curried(this);
    }

    @Override // scala.Function7
    public String toString() {
        return Function7.Cclass.toString(this);
    }

    @Override // scala.Function7
    public Function1<Tuple7<T1, T2, T3, T4, T5, T6, T7>, R> tupled() {
        return Function7.Cclass.tupled(this);
    }
}
