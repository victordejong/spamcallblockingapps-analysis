package scala.sys.process;

import java.io.OutputStream;
import scala.Serializable;
import scala.Some;
import scala.concurrent.SyncVar;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$PipedProcesses$$anonfun$9.class */
public final class ProcessImpl$PipedProcesses$$anonfun$9 extends AbstractFunction1<OutputStream, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final SyncVar currentSink$1;

    public ProcessImpl$PipedProcesses$$anonfun$9(ProcessImpl.PipedProcesses pipedProcesses, SyncVar syncVar) {
        this.currentSink$1 = syncVar;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((OutputStream) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(OutputStream outputStream) {
        this.currentSink$1.put(new Some(outputStream));
    }
}
