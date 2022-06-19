package scala.util.control;

import scala.Function1;
import scala.Serializable;
import scala.collection.Seq;
import scala.runtime.AbstractPartialFunction;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anonfun$pfFromExceptions$1.class */
public final class Exception$$anonfun$pfFromExceptions$1 extends AbstractPartialFunction<Throwable, Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Seq exceptions$1;

    public Exception$$anonfun$pfFromExceptions$1(Seq seq) {
        this.exceptions$1 = seq;
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.PartialFunction
    public final /* bridge */ /* synthetic */ Object applyOrElse(Object obj, Function1 function1) {
        return applyOrElse((Exception$$anonfun$pfFromExceptions$1) ((Throwable) obj), (Function1<Exception$$anonfun$pfFromExceptions$1, Object>) function1);
    }

    public final <A1 extends Throwable, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
        if (!Exception$.MODULE$.scala$util$control$Exception$$wouldMatch(a1, this.exceptions$1)) {
            return function1.apply(a1);
        }
        throw a1;
    }

    public final boolean isDefinedAt(Throwable th) {
        return Exception$.MODULE$.scala$util$control$Exception$$wouldMatch(th, this.exceptions$1);
    }
}
