package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.sys.process.ProcessBuilderImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$Simple$$anonfun$3.class */
public final class ProcessBuilderImpl$Simple$$anonfun$3 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final ProcessIO io$2;
    public final Process process$1;

    public ProcessBuilderImpl$Simple$$anonfun$3(ProcessBuilderImpl.Simple simple, ProcessIO processIO, Process process) {
        this.io$2 = processIO;
        this.process$1 = process;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.io$2.processOutput().apply(this.process$1.getInputStream());
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.io$2.processOutput().apply(this.process$1.getInputStream());
    }
}
