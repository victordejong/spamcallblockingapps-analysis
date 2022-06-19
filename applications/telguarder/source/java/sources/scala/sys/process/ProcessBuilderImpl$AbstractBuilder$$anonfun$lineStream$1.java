package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.sys.process.BasicIO;
import scala.sys.process.ProcessBuilderImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1.class */
public final class ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final Process process$2;
    public final BasicIO.Streamed streamed$1;

    public ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1(ProcessBuilderImpl.AbstractBuilder abstractBuilder, BasicIO.Streamed streamed, Process process) {
        this.streamed$1 = streamed;
        this.process$2 = process;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.streamed$1.done().apply$mcVI$sp(this.process$2.exitValue());
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.streamed$1.done().apply$mcVI$sp(this.process$2.exitValue());
    }
}
