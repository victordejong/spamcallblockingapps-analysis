package scala.sys.process;

import java.util.Objects;
import scala.Serializable;
import scala.concurrent.SyncVar;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.runtime.BoxesRunTime;
import scala.sys.process.ProcessBuilderImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1.class */
public final class ProcessBuilderImpl$ThreadBuilder$$anonfun$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ProcessBuilderImpl.ThreadBuilder $outer;
    private final ProcessIO io$1;
    private final SyncVar success$1;

    public ProcessBuilderImpl$ThreadBuilder$$anonfun$1(ProcessBuilderImpl.ThreadBuilder threadBuilder, ProcessIO processIO, SyncVar syncVar) {
        Objects.requireNonNull(threadBuilder);
        this.$outer = threadBuilder;
        this.io$1 = processIO;
        this.success$1 = syncVar;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        apply$mcV$sp();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.scala$sys$process$ProcessBuilderImpl$ThreadBuilder$$runImpl.apply(this.io$1);
        this.success$1.set(BoxesRunTime.boxToBoolean(true));
    }
}
