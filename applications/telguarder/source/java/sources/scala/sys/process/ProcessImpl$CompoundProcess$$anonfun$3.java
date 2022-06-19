package scala.sys.process;

import scala.Option;
import scala.Serializable;
import scala.concurrent.SyncVar;
import scala.runtime.AbstractFunction0;
import scala.sys.process.ProcessImpl;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/ProcessImpl$CompoundProcess$$anonfun$3.class */
public final class ProcessImpl$CompoundProcess$$anonfun$3 extends AbstractFunction0<Option<Object>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final SyncVar code$1;
    private final Thread thread$1;

    public ProcessImpl$CompoundProcess$$anonfun$3(ProcessImpl.CompoundProcess compoundProcess, SyncVar syncVar, Thread thread) {
        this.code$1 = syncVar;
        this.thread$1 = thread;
    }

    @Override // scala.Function0
    public final Option<Object> apply() {
        this.thread$1.join();
        return (Option) this.code$1.get();
    }
}
