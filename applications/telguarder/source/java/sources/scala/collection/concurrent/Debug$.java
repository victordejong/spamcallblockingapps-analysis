package scala.collection.concurrent;

import java.util.concurrent.ConcurrentLinkedQueue;
import scala.collection.JavaConversions$;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/Debug$.class */
public final class Debug$ {
    public static final Debug$ MODULE$ = null;
    private volatile boolean bitmap$0;
    private ConcurrentLinkedQueue<Object> logbuffer;

    static {
        new Debug$();
    }

    private Debug$() {
        MODULE$ = this;
    }

    private ConcurrentLinkedQueue logbuffer$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.logbuffer = new ConcurrentLinkedQueue<>();
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.logbuffer;
    }

    public void clear() {
        logbuffer().clear();
    }

    public void flush() {
        JavaConversions$.MODULE$.asScalaIterator(logbuffer().iterator()).foreach(new Debug$$anonfun$flush$1());
        logbuffer().clear();
    }

    public boolean log(Object obj) {
        return logbuffer().add(obj);
    }

    public ConcurrentLinkedQueue<Object> logbuffer() {
        return this.bitmap$0 ? this.logbuffer : logbuffer$lzycompute();
    }
}
