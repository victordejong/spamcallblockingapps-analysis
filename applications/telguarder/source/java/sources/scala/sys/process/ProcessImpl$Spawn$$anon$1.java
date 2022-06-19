package scala.sys.process;

import scala.Function0;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$Spawn$$anon$1.class */
public final class ProcessImpl$Spawn$$anon$1 extends Thread {
    private final Function0 f$1;

    public ProcessImpl$Spawn$$anon$1(ProcessImpl$Spawn$ processImpl$Spawn$, Function0 function0) {
        this.f$1 = function0;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.f$1.apply$mcV$sp();
    }
}
