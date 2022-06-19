package scala.sys.process;

import java.util.Objects;
import scala.Function0;
import scala.concurrent.SyncVar;
import scala.package$;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$Future$.class */
public class ProcessImpl$Future$ {
    public final /* synthetic */ Process$ $outer;

    public ProcessImpl$Future$(Process$ process$) {
        Objects.requireNonNull(process$);
        this.$outer = process$;
    }

    public <T> Function0<T> apply(Function0<T> function0) {
        SyncVar syncVar = new SyncVar();
        ProcessImpl$Spawn$$anon$1 processImpl$Spawn$$anon$1 = new ProcessImpl$Spawn$$anon$1(this.$outer.Spawn(), new ProcessImpl$Future$$anonfun$apply$1(this, function0, syncVar));
        processImpl$Spawn$$anon$1.setDaemon(false);
        processImpl$Spawn$$anon$1.start();
        return new ProcessImpl$Future$$anonfun$apply$4(this, syncVar);
    }

    public final void scala$sys$process$ProcessImpl$Future$$run$1(Function0 function0, SyncVar syncVar) {
        try {
            syncVar.set(package$.MODULE$.Right().apply(function0.apply()));
        } catch (Exception e) {
            syncVar.set(package$.MODULE$.Left().apply(e));
        }
    }
}
