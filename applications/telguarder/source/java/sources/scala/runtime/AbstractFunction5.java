package scala.runtime;

import scala.Function1;
import scala.Function5;
import scala.Tuple5;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001=2Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\f7\r\u001e$v]\u000e$\u0018n\u001c86\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!F\u0004\t%qy\"%\n\u0015\u0014\u0007\u0001IQ\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001a\u0004\u0002B\u0003\b\u00117y\tCeJ\u0005\u0003\u001f\u0011\u0011\u0011BR;oGRLwN\\\u001b\u0011\u0005E\u0011B\u0002\u0001\u0003\u0007'\u0001A)\u0019\u0001\u000b\u0003\u0005Q\u000b\u0014CA\u000b\u0019!\tQa#\u0003\u0002\u0018\t\t9aj\u001c;iS:<\u0007C\u0001\u0006\u001a\u0013\tQBAA\u0002B]f\u0004\"!\u0005\u000f\u0005\ru\u0001\u0001R1\u0001\u0015\u0005\t!&\u0007\u0005\u0002\u0012?\u00111\u0001\u0005\u0001EC\u0002Q\u0011!\u0001V\u001a\u0011\u0005E\u0011CAB\u0012\u0001\u0011\u000b\u0007AC\u0001\u0002UiA\u0011\u0011#\n\u0003\u0007M\u0001A)\u0019\u0001\u000b\u0003\u0005Q+\u0004CA\t)\t\u0019I\u0003\u0001\"b\u0001)\t\t!\u000bC\u0003,\u0001\u0011\u0005A&\u0001\u0004=S:LGO\u0010\u000b\u0002[AAa\u0006\u0001\t\u001c=\u0005\"s%D\u0001\u0003\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractFunction5.class */
public abstract class AbstractFunction5<T1, T2, T3, T4, T5, R> implements Function5<T1, T2, T3, T4, T5, R> {
    public AbstractFunction5() {
        Function5.Cclass.$init$(this);
    }

    @Override // scala.Function5
    public Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, R>>>>> curried() {
        return Function5.Cclass.curried(this);
    }

    @Override // scala.Function5
    public String toString() {
        return Function5.Cclass.toString(this);
    }

    @Override // scala.Function5
    public Function1<Tuple5<T1, T2, T3, T4, T5>, R> tupled() {
        return Function5.Cclass.tupled(this);
    }
}
