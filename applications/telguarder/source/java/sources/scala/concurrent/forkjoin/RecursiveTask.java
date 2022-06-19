package scala.concurrent.forkjoin;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/RecursiveTask.class */
public abstract class RecursiveTask<V> extends ForkJoinTask<V> {
    private static final long serialVersionUID = 5232453952276485270L;
    V result;

    protected abstract V compute();

    @Override // scala.concurrent.forkjoin.ForkJoinTask
    protected final boolean exec() {
        this.result = compute();
        return true;
    }

    @Override // scala.concurrent.forkjoin.ForkJoinTask
    public final V getRawResult() {
        return this.result;
    }

    @Override // scala.concurrent.forkjoin.ForkJoinTask
    protected final void setRawResult(V v) {
        this.result = v;
    }
}
