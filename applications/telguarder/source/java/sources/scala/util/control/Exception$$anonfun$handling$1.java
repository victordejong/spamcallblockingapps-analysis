package scala.util.control;

import scala.Function1;
import scala.Serializable;
import scala.collection.Seq;
import scala.runtime.AbstractFunction1;
import scala.util.control.Exception;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anonfun$handling$1.class */
public final class Exception$$anonfun$handling$1 extends AbstractFunction1<Function1<Throwable, T>, Exception.Catch<T>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Seq exceptions$2;

    public Exception$$anonfun$handling$1(Seq seq) {
        this.exceptions$2 = seq;
    }

    public final Exception.Catch<T> apply(Function1<Throwable, T> function1) {
        return Exception$.MODULE$.scala$util$control$Exception$$fun$1(function1, this.exceptions$2);
    }
}
