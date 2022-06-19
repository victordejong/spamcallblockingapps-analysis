package scala.sys.process;

import java.util.concurrent.LinkedBlockingQueue;
import scala.Serializable;
import scala.collection.immutable.Stream;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$Streamed$$anonfun$apply$3.class */
public final class BasicIO$Streamed$$anonfun$apply$3 extends AbstractFunction0<Stream<T>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final boolean nonzeroException$1;
    private final LinkedBlockingQueue q$1;

    public BasicIO$Streamed$$anonfun$apply$3(boolean z, LinkedBlockingQueue linkedBlockingQueue) {
        this.nonzeroException$1 = z;
        this.q$1 = linkedBlockingQueue;
    }

    @Override // scala.Function0
    public final Stream<T> apply() {
        return BasicIO$Streamed$.MODULE$.scala$sys$process$BasicIO$Streamed$$next$1(this.nonzeroException$1, this.q$1);
    }
}
