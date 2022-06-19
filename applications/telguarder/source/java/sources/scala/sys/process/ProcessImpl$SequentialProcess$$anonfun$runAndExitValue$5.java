package scala.sys.process;

import java.util.Objects;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5.class */
public final class ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5 extends AbstractFunction1<Object, Option<Object>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ ProcessImpl.SequentialProcess $outer;

    public ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5(ProcessImpl.SequentialProcess sequentialProcess) {
        Objects.requireNonNull(sequentialProcess);
        this.$outer = sequentialProcess;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final Option<Object> apply(int i) {
        Some some;
        if (this.$outer.f1639x9d729591.apply$mcZI$sp(i)) {
            Process run = this.$outer.scala$sys$process$ProcessImpl$SequentialProcess$$b.run(this.$outer.scala$sys$process$ProcessImpl$SequentialProcess$$io);
            some = this.$outer.runInterruptible(new C2595x510b85bf(this, run), new C2596x510b85c0(this, run));
        } else {
            some = new Some(BoxesRunTime.boxToInteger(i));
        }
        return some;
    }
}
