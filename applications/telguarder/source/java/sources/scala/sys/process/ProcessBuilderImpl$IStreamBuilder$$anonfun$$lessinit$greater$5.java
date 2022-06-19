package scala.sys.process;

import java.io.InputStream;
import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$IStreamBuilder$$anonfun$$lessinit$greater$5.class */
public final class ProcessBuilderImpl$IStreamBuilder$$anonfun$$lessinit$greater$5 extends AbstractFunction1<ProcessIO, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 stream$2;

    public ProcessBuilderImpl$IStreamBuilder$$anonfun$$lessinit$greater$5(ProcessBuilder$ processBuilder$, Function0 function0) {
        this.stream$2 = function0;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((ProcessIO) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(ProcessIO processIO) {
        processIO.processOutput().apply(BasicIO$Uncloseable$.MODULE$.protect((InputStream) this.stream$2.apply()));
    }
}
