package scala.runtime;

import scala.Function1;
import scala.Function9;
import scala.Tuple9;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001m2Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c8:\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!F\u0006\t%qy\"%\n\u0015,]E\"4c\u0001\u0001\n\u001bA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0019)q\u0001c\u0007\u0010\"I\u001dRS\u0006M\u001a\n\u0005=!!!\u0003$v]\u000e$\u0018n\u001c8:!\t\t\"\u0003\u0004\u0001\u0005\rM\u0001\u0001R1\u0001\u0015\u0005\t!\u0016'\u0005\u0002\u00161A\u0011!BF\u0005\u0003/\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u000b3%\u0011!\u0004\u0002\u0002\u0004\u0003:L\bCA\t\u001d\t\u0019i\u0002\u0001#b\u0001)\t\u0011AK\r\t\u0003#}!a\u0001\t\u0001\t\u0006\u0004!\"A\u0001+4!\t\t\"\u0005\u0002\u0004$\u0001!\u0015\r\u0001\u0006\u0002\u0003)R\u0002\"!E\u0013\u0005\r\u0019\u0002\u0001R1\u0001\u0015\u0005\t!V\u0007\u0005\u0002\u0012Q\u00111\u0011\u0006\u0001EC\u0002Q\u0011!\u0001\u0016\u001c\u0011\u0005EYCA\u0002\u0017\u0001\u0011\u000b\u0007AC\u0001\u0002UoA\u0011\u0011C\f\u0003\u0007_\u0001A)\u0019\u0001\u000b\u0003\u0005QC\u0004CA\t2\t\u0019\u0011\u0004\u0001#b\u0001)\t\u0011A+\u000f\t\u0003#Q\"a!\u000e\u0001\u0005\u0006\u0004!\"!\u0001*\t\u000b]\u0002A\u0011\u0001\u001d\u0002\rqJg.\u001b;?)\u0005I\u0004\u0003\u0004\u001e\u0001!mq\u0012\u0005J\u0014+[A\u001aT\"\u0001\u0002")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction9.class */
public abstract class AbstractFunction9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> {
    public AbstractFunction9() {
        Function9.Cclass.$init$(this);
    }

    @Override // scala.Function9
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, Function1<T8, Function1<T9, R>>>>>>>>> curried() {
        return Function9.Cclass.curried(this);
    }

    @Override // scala.Function9
    public String toString() {
        return Function9.Cclass.toString(this);
    }

    @Override // scala.Function9
    public Function1<Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>, R> tupled() {
        return Function9.Cclass.tupled(this);
    }
}
