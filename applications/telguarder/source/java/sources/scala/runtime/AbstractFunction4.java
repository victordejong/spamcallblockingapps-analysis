package scala.runtime;

import scala.Function1;
import scala.Function4;
import scala.Tuple4;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u000112Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c85\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0004\t%qy\"%J\n\u0004\u0001%i\u0001C\u0001\u0006\f\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB9!B\u0004\t\u001c=\u0005\"\u0013BA\b\u0005\u0005%1UO\\2uS>tG\u0007\u0005\u0002\u0012%1\u0001AAB\n\u0001\u0011\u000b\u0007AC\u0001\u0002UcE\u0011Q\u0003\u0007\t\u0003\u0015YI!a\u0006\u0003\u0003\u000f9{G\u000f[5oOB\u0011!\"G\u0005\u00035\u0011\u00111!\u00118z!\t\tB\u0004\u0002\u0004\u001e\u0001!\u0015\r\u0001\u0006\u0002\u0003)J\u0002\"!E\u0010\u0005\r\u0001\u0002\u0001R1\u0001\u0015\u0005\t!6\u0007\u0005\u0002\u0012E\u001111\u0005\u0001EC\u0002Q\u0011!\u0001\u0016\u001b\u0011\u0005E)CA\u0002\u0014\u0001\t\u000b\u0007ACA\u0001S\u0011\u0015A\u0003\u0001\"\u0001*\u0003\u0019a\u0014N\\5u}Q\t!\u0006E\u0004,\u0001AYb$\t\u0013\u000e\u0003\t\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction4.class */
public abstract class AbstractFunction4<T1, T2, T3, T4, R> implements Function4<T1, T2, T3, T4, R> {
    public AbstractFunction4() {
        Function4.Cclass.$init$(this);
    }

    @Override // scala.Function4
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, R>>>> curried() {
        return Function4.Cclass.curried(this);
    }

    @Override // scala.Function4
    public String toString() {
        return Function4.Cclass.toString(this);
    }

    @Override // scala.Function4
    public Function1<Tuple4<T1, T2, T3, T4>, R> tupled() {
        return Function4.Cclass.tupled(this);
    }
}
