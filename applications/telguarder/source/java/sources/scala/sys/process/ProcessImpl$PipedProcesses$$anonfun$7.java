package scala.sys.process;

import java.io.InputStream;
import java.util.Objects;
import scala.Serializable;
import scala.concurrent.SyncVar;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$PipedProcesses$$anonfun$7.class */
public final class ProcessImpl$PipedProcesses$$anonfun$7 extends AbstractFunction1<InputStream, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ProcessImpl.PipedProcesses $outer;
    private final SyncVar currentSource$1;

    public ProcessImpl$PipedProcesses$$anonfun$7(ProcessImpl.PipedProcesses pipedProcesses, SyncVar syncVar) {
        Objects.requireNonNull(pipedProcesses);
        this.$outer = pipedProcesses;
        this.currentSource$1 = syncVar;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((InputStream) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(InputStream inputStream) {
        this.$outer.scala$sys$process$ProcessImpl$PipedProcesses$$handleOutOrError$1(inputStream, this.currentSource$1);
    }
}
