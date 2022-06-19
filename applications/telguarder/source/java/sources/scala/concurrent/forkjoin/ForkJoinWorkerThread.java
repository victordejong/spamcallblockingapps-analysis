package scala.concurrent.forkjoin;

import scala.concurrent.forkjoin.ForkJoinPool;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/ForkJoinWorkerThread.class */
public class ForkJoinWorkerThread extends Thread {
    final ForkJoinPool pool;
    final ForkJoinPool.WorkQueue workQueue;

    public ForkJoinWorkerThread(ForkJoinPool forkJoinPool) {
        super("aForkJoinWorkerThread");
        this.pool = forkJoinPool;
        this.workQueue = forkJoinPool.registerWorker(this);
    }

    public ForkJoinPool getPool() {
        return this.pool;
    }

    public int getPoolIndex() {
        return this.workQueue.poolIndex;
    }

    protected void onStart() {
    }

    protected void onTermination(Throwable th) {
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            onStart();
            this.pool.runWorker(this.workQueue);
            th = null;
            try {
                onTermination(null);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                onTermination(th);
            } catch (Throwable th3) {
            }
        }
        this.pool.deregisterWorker(this, th);
    }
}
