package scala.sys.process;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$PipedProcesses$$anonfun$6.class */
public final class ProcessImpl$PipedProcesses$$anonfun$6 extends AbstractFunction0<String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ProcessImpl.PipedProcesses $outer;

    public ProcessImpl$PipedProcesses$$anonfun$6(ProcessImpl.PipedProcesses pipedProcesses) {
        Objects.requireNonNull(pipedProcesses);
        this.$outer = pipedProcesses;
    }

    @Override // scala.Function0
    public final String apply() {
        return this.$outer.scala$sys$process$ProcessImpl$PipedProcesses$$b.toString();
    }
}
