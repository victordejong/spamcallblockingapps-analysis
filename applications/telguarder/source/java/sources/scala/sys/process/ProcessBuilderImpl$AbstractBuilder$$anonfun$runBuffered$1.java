package scala.sys.process;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcI$sp;
import scala.sys.process.ProcessBuilderImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1.class */
public final class ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1 extends AbstractFunction0$mcI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ ProcessBuilderImpl.AbstractBuilder $outer;
    public final boolean connectInput$1;
    public final ProcessLogger log$1;

    public ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1(ProcessBuilderImpl.AbstractBuilder abstractBuilder, ProcessLogger processLogger, boolean z) {
        Objects.requireNonNull(abstractBuilder);
        this.$outer = abstractBuilder;
        this.log$1 = processLogger;
        this.connectInput$1 = z;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, int] */
    @Override // scala.Function0
    public final Object apply() {
        return this.$outer.run(this.log$1, this.connectInput$1).exitValue();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public int apply$mcI$sp() {
        return this.$outer.run(this.log$1, this.connectInput$1).exitValue();
    }
}
