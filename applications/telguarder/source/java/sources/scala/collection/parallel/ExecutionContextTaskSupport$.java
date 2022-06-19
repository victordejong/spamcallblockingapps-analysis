package scala.collection.parallel;

import scala.concurrent.ExecutionContext;
import scala.concurrent.ExecutionContext$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ExecutionContextTaskSupport$.class */
public final class ExecutionContextTaskSupport$ {
    public static final ExecutionContextTaskSupport$ MODULE$ = null;

    static {
        new ExecutionContextTaskSupport$();
    }

    private ExecutionContextTaskSupport$() {
        MODULE$ = this;
    }

    public ExecutionContext $lessinit$greater$default$1() {
        return ExecutionContext$.MODULE$.global();
    }
}
