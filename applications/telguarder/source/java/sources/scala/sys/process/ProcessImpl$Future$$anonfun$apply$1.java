package scala.sys.process;

import java.util.Objects;
import scala.Function0;
import scala.Serializable;
import scala.concurrent.SyncVar;
import scala.runtime.AbstractFunction0$mcV$sp;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$Future$$anonfun$apply$1.class */
public final class ProcessImpl$Future$$anonfun$apply$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ ProcessImpl$Future$ $outer;
    public final Function0 f$2;
    public final SyncVar result$1;

    public ProcessImpl$Future$$anonfun$apply$1(ProcessImpl$Future$ processImpl$Future$, Function0 function0, SyncVar syncVar) {
        Objects.requireNonNull(processImpl$Future$);
        this.$outer = processImpl$Future$;
        this.f$2 = function0;
        this.result$1 = syncVar;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.$outer.scala$sys$process$ProcessImpl$Future$$run$1(this.f$2, this.result$1);
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.scala$sys$process$ProcessImpl$Future$$run$1(this.f$2, this.result$1);
    }
}
