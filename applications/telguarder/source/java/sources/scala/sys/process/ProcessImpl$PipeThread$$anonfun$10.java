package scala.sys.process;

import java.io.IOException;
import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$PipeThread$$anonfun$10.class */
public final class ProcessImpl$PipeThread$$anonfun$10 extends AbstractFunction1<IOException, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ProcessImpl.PipeThread $outer;

    public ProcessImpl$PipeThread$$anonfun$10(ProcessImpl.PipeThread pipeThread) {
        Objects.requireNonNull(pipeThread);
        this.$outer = pipeThread;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((IOException) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(IOException iOException) {
        this.$outer.scala$sys$process$ProcessImpl$PipeThread$$ioHandler(iOException);
    }
}
