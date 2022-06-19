package scala.sys.process;

import scala.MatchError;
import scala.Serializable;
import scala.concurrent.SyncVar;
import scala.runtime.AbstractFunction0;
import scala.util.Either;
import scala.util.Left;
import scala.util.Right;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$Future$$anonfun$apply$4.class */
public final class ProcessImpl$Future$$anonfun$apply$4 extends AbstractFunction0<T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final SyncVar result$1;

    public ProcessImpl$Future$$anonfun$apply$4(ProcessImpl$Future$ processImpl$Future$, SyncVar syncVar) {
        this.result$1 = syncVar;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [T, java.lang.Object] */
    @Override // scala.Function0
    public final T apply() {
        Either either = (Either) this.result$1.get();
        if (either instanceof Right) {
            return ((Right) either).m8b();
        }
        if (!(either instanceof Left)) {
            throw new MatchError(either);
        }
        throw ((Throwable) ((Left) either).m9a());
    }
}
