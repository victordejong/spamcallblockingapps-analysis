package scala.util.control;

import scala.Function0;
import scala.Serializable;
import scala.Some;
import scala.runtime.AbstractFunction0;
import scala.util.control.Exception;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Catch$$anonfun$opt$1.class */
public final class Exception$Catch$$anonfun$opt$1 extends AbstractFunction0<Some<U>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 body$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Exception$Catch$$anonfun$opt$1(Exception.Catch r4, Exception.Catch<T> r5) {
        this.body$1 = r5;
    }

    @Override // scala.Function0
    public final Some<U> apply() {
        return new Some<>(this.body$1.apply());
    }
}
