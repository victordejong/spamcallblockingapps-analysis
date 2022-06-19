package scala.sys.process;

import java.util.Objects;
import scala.None$;
import scala.Serializable;
import scala.concurrent.SyncVar;
import scala.runtime.AbstractFunction0$mcI$sp;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3.class */
public final class ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3 extends AbstractFunction0$mcI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ProcessImpl.PipedProcesses $outer;
    private final SyncVar currentSink$1;
    private final SyncVar currentSource$1;
    private final Process first$2;
    private final Process second$2;

    public ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3(ProcessImpl.PipedProcesses pipedProcesses, SyncVar syncVar, SyncVar syncVar2, Process process, Process process2) {
        Objects.requireNonNull(pipedProcesses);
        this.$outer = pipedProcesses;
        this.currentSource$1 = syncVar;
        this.currentSink$1 = syncVar2;
        this.second$2 = process;
        this.first$2 = process2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, int] */
    @Override // scala.Function0
    public final Object apply() {
        return apply$mcI$sp();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public int apply$mcI$sp() {
        int exitValue = this.first$2.exitValue();
        this.currentSource$1.put(None$.MODULE$);
        this.currentSink$1.put(None$.MODULE$);
        int exitValue2 = this.second$2.exitValue();
        if (this.$outer.scala$sys$process$ProcessImpl$PipedProcesses$$b.hasExitValue()) {
            exitValue = exitValue2;
        }
        return exitValue;
    }
}
