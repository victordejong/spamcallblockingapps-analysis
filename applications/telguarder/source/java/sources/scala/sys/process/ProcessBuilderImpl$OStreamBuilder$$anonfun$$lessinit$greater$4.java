package scala.sys.process;

import java.io.OutputStream;
import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessBuilderImpl$OStreamBuilder$$anonfun$$lessinit$greater$4.class */
public final class ProcessBuilderImpl$OStreamBuilder$$anonfun$$lessinit$greater$4 extends AbstractFunction1<ProcessIO, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 stream$1;

    public ProcessBuilderImpl$OStreamBuilder$$anonfun$$lessinit$greater$4(ProcessBuilder$ processBuilder$, Function0 function0) {
        this.stream$1 = function0;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((ProcessIO) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(ProcessIO processIO) {
        processIO.writeInput().apply(BasicIO$Uncloseable$.MODULE$.protect((OutputStream) this.stream$1.apply()));
    }
}
