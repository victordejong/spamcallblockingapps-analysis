package scala.sys.process;

import scala.Function0;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$Spawn$.class */
public class ProcessImpl$Spawn$ {
    public ProcessImpl$Spawn$(Process$ process$) {
    }

    public Thread apply(Function0<BoxedUnit> function0) {
        return apply(function0, false);
    }

    public Thread apply(Function0<BoxedUnit> function0, boolean z) {
        ProcessImpl$Spawn$$anon$1 processImpl$Spawn$$anon$1 = new ProcessImpl$Spawn$$anon$1(this, function0);
        processImpl$Spawn$$anon$1.setDaemon(z);
        processImpl$Spawn$$anon$1.start();
        return processImpl$Spawn$$anon$1;
    }
}
