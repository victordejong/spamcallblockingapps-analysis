package scala.concurrent.forkjoin;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/RecursiveAction.class */
public abstract class RecursiveAction extends ForkJoinTask<Void> {
    private static final long serialVersionUID = 5232453952276485070L;

    public abstract void compute();

    @Override // scala.concurrent.forkjoin.ForkJoinTask
    protected final boolean exec() {
        compute();
        return true;
    }

    @Override // scala.concurrent.forkjoin.ForkJoinTask
    public final Void getRawResult() {
        return null;
    }

    public final void setRawResult(Void r2) {
    }
}
