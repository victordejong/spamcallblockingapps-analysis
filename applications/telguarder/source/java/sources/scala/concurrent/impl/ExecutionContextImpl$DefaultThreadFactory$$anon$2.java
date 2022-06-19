package scala.concurrent.impl;

import scala.Function0;
import scala.concurrent.BlockContext;
import scala.concurrent.CanAwait;
import scala.concurrent.forkjoin.ForkJoinPool;
import scala.concurrent.forkjoin.ForkJoinWorkerThread;
import scala.concurrent.impl.ExecutionContextImpl;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2.class */
public final class ExecutionContextImpl$DefaultThreadFactory$$anon$2 extends ForkJoinWorkerThread implements BlockContext {
    public ExecutionContextImpl$DefaultThreadFactory$$anon$2(ExecutionContextImpl.DefaultThreadFactory defaultThreadFactory, ForkJoinPool forkJoinPool) {
        super(forkJoinPool);
    }

    @Override // scala.concurrent.BlockContext
    public <T> T blockOn(Function0<T> function0, CanAwait canAwait) {
        ObjectRef create = ObjectRef.create(null);
        ForkJoinPool.managedBlock(new ForkJoinPool.ManagedBlocker(this, function0, create) { // from class: scala.concurrent.impl.ExecutionContextImpl$DefaultThreadFactory$$anon$2$$anon$4
            private volatile boolean isdone = false;
            private final ObjectRef result$1;
            private final Function0 thunk$1;

            {
                this.thunk$1 = function0;
                this.result$1 = create;
            }

            private boolean isdone() {
                return this.isdone;
            }

            private void isdone_$eq(boolean z) {
                this.isdone = z;
            }

            /* JADX WARN: Finally extract failed */
            /* JADX WARN: Type inference failed for: r0v6, types: [T, java.lang.Object] */
            @Override // scala.concurrent.forkjoin.ForkJoinPool.ManagedBlocker
            public boolean block() {
                ObjectRef objectRef = this.result$1;
                try {
                    ?? apply = this.thunk$1.apply();
                    isdone_$eq(true);
                    objectRef.elem = apply;
                    return true;
                } catch (Throwable th) {
                    isdone_$eq(true);
                    throw th;
                }
            }

            @Override // scala.concurrent.forkjoin.ForkJoinPool.ManagedBlocker
            public boolean isReleasable() {
                return isdone();
            }
        });
        return create.elem;
    }
}
