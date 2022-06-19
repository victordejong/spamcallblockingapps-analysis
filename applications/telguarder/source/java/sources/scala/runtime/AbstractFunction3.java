package scala.runtime;

import scala.Function1;
import scala.Function3;
import scala.Tuple3;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001%2Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c84\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!F\u0003\t%qy\"eE\u0002\u0001\u00135\u0001\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\r\u0005s\u0017PU3g!\u0019Qa\u0002E\u000e\u001fC%\u0011q\u0002\u0002\u0002\n\rVt7\r^5p]N\u0002\"!\u0005\n\r\u0001\u001111\u0003\u0001EC\u0002Q\u0011!\u0001V\u0019\u0012\u0005UA\u0002C\u0001\u0006\u0017\u0013\t9BAA\u0004O_RD\u0017N\\4\u0011\u0005)I\u0012B\u0001\u000e\u0005\u0005\r\te.\u001f\t\u0003#q!a!\b\u0001\t\u0006\u0004!\"A\u0001+3!\t\tr\u0004\u0002\u0004!\u0001!\u0015\r\u0001\u0006\u0002\u0003)N\u0002\"!\u0005\u0012\u0005\r\r\u0002AQ1\u0001\u0015\u0005\u0005\u0011\u0006\"B\u0013\u0001\t\u00031\u0013A\u0002\u001fj]&$h\bF\u0001(!\u0019A\u0003\u0001E\u000e\u001fC5\t!\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction3.class */
public abstract class AbstractFunction3<T1, T2, T3, R> implements Function3<T1, T2, T3, R> {
    public AbstractFunction3() {
        Function3.Cclass.$init$(this);
    }

    @Override // scala.Function3
    public Function1<T1, Function1<T2, Function1<T3, R>>> curried() {
        return Function3.Cclass.curried(this);
    }

    @Override // scala.Function3
    public String toString() {
        return Function3.Cclass.toString(this);
    }

    @Override // scala.Function3
    public Function1<Tuple3<T1, T2, T3>, R> tupled() {
        return Function3.Cclass.tupled(this);
    }
}
