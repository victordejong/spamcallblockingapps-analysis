package scala.sys.process;

import java.util.Objects;
import scala.Serializable;
import scala.concurrent.SyncVar;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$CompoundProcess$$anonfun$1.class */
public final class ProcessImpl$CompoundProcess$$anonfun$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ ProcessImpl.CompoundProcess $outer;
    public final SyncVar code$1;

    public ProcessImpl$CompoundProcess$$anonfun$1(ProcessImpl.CompoundProcess compoundProcess, SyncVar syncVar) {
        Objects.requireNonNull(compoundProcess);
        this.$outer = compoundProcess;
        this.code$1 = syncVar;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.code$1.set(this.$outer.runAndExitValue());
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.code$1.set(this.$outer.runAndExitValue());
    }
}
