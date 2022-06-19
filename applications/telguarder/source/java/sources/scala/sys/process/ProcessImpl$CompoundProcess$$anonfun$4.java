package scala.sys.process;

import scala.Function0;
import scala.None$;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$CompoundProcess$$anonfun$4.class */
public final class ProcessImpl$CompoundProcess$$anonfun$4 extends AbstractFunction0<None$> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 destroyImpl$1;

    public ProcessImpl$CompoundProcess$$anonfun$4(ProcessImpl.CompoundProcess compoundProcess, Function0 function0) {
        this.destroyImpl$1 = function0;
    }

    @Override // scala.Function0
    public final None$ apply() {
        this.destroyImpl$1.apply$mcV$sp();
        return None$.MODULE$;
    }
}
