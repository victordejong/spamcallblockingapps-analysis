package scala.concurrent.forkjoin;

import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/CountedCompleter.class */
public abstract class CountedCompleter<T> extends ForkJoinTask<T> {
    private static final long PENDING;

    /* renamed from: U */
    private static final Unsafe f1615U;
    private static final long serialVersionUID = 5232453752276485070L;
    final CountedCompleter<?> completer;
    volatile int pending;

    static {
        try {
            Unsafe unsafe = getUnsafe();
            f1615U = unsafe;
            PENDING = unsafe.objectFieldOffset(CountedCompleter.class.getDeclaredField("pending"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    protected CountedCompleter() {
        this.completer = null;
    }

    protected CountedCompleter(CountedCompleter<?> countedCompleter) {
        this.completer = countedCompleter;
    }

    protected CountedCompleter(CountedCompleter<?> countedCompleter, int i) {
        this.completer = countedCompleter;
        this.pending = i;
    }

    private static Unsafe getUnsafe() {
        return scala.concurrent.util.Unsafe.instance;
    }

    public final void addToPendingCount(int i) {
        Unsafe unsafe;
        long j;
        int i2;
        do {
            unsafe = f1615U;
            j = PENDING;
            i2 = this.pending;
        } while (!unsafe.compareAndSwapInt(this, j, i2, i2 + i));
    }

    public final boolean compareAndSetPendingCount(int i, int i2) {
        return f1615U.compareAndSwapInt(this, PENDING, i, i2);
    }

    @Override // scala.concurrent.forkjoin.ForkJoinTask
    public void complete(T t) {
        setRawResult(t);
        onCompletion(this);
        quietlyComplete();
        CountedCompleter<?> countedCompleter = this.completer;
        if (countedCompleter != null) {
            countedCompleter.tryComplete();
        }
    }

    public abstract void compute();

    public final int decrementPendingCountUnlessZero() {
        int i;
        do {
            i = this.pending;
            if (i == 0) {
                break;
            }
        } while (!f1615U.compareAndSwapInt(this, PENDING, i, i - 1));
        return i;
    }

    @Override // scala.concurrent.forkjoin.ForkJoinTask
    protected final boolean exec() {
        compute();
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CountedCompleter<?> firstComplete() {
        int i;
        do {
            i = this.pending;
            if (i == 0) {
                return this;
            }
        } while (!f1615U.compareAndSwapInt(this, PENDING, i, i - 1));
        return null;
    }

    public final CountedCompleter<?> getCompleter() {
        return this.completer;
    }

    public final int getPendingCount() {
        return this.pending;
    }

    @Override // scala.concurrent.forkjoin.ForkJoinTask
    public T getRawResult() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CountedCompleter<?> getRoot() {
        CountedCompleter countedCompleter = this;
        while (true) {
            CountedCompleter countedCompleter2 = countedCompleter;
            CountedCompleter countedCompleter3 = countedCompleter2.completer;
            if (countedCompleter3 != null) {
                countedCompleter = countedCompleter3;
            } else {
                return countedCompleter2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.concurrent.forkjoin.ForkJoinTask
    void internalPropagateException(Throwable th) {
        CountedCompleter countedCompleter;
        CountedCompleter countedCompleter2 = this;
        CountedCompleter countedCompleter3 = countedCompleter2;
        while (countedCompleter2.onExceptionalCompletion(th, countedCompleter3) && (countedCompleter = countedCompleter2.completer) != null && countedCompleter.status >= 0) {
            countedCompleter.recordExceptionalCompletion(th);
            countedCompleter3 = countedCompleter2;
            countedCompleter2 = countedCompleter;
        }
    }

    public final CountedCompleter<?> nextComplete() {
        CountedCompleter<?> countedCompleter = this.completer;
        if (countedCompleter != null) {
            return countedCompleter.firstComplete();
        }
        quietlyComplete();
        return null;
    }

    public void onCompletion(CountedCompleter<?> countedCompleter) {
    }

    public boolean onExceptionalCompletion(Throwable th, CountedCompleter<?> countedCompleter) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void propagateCompletion() {
        CountedCompleter countedCompleter = this;
        while (true) {
            int i = countedCompleter.pending;
            if (i == 0) {
                CountedCompleter countedCompleter2 = countedCompleter.completer;
                if (countedCompleter2 == null) {
                    countedCompleter.quietlyComplete();
                    return;
                }
                countedCompleter = countedCompleter2;
            } else if (f1615U.compareAndSwapInt(countedCompleter, PENDING, i, i - 1)) {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void quietlyCompleteRoot() {
        CountedCompleter countedCompleter = this;
        while (true) {
            CountedCompleter countedCompleter2 = countedCompleter;
            CountedCompleter countedCompleter3 = countedCompleter2.completer;
            if (countedCompleter3 == null) {
                countedCompleter2.quietlyComplete();
                return;
            }
            countedCompleter = countedCompleter3;
        }
    }

    public final void setPendingCount(int i) {
        this.pending = i;
    }

    @Override // scala.concurrent.forkjoin.ForkJoinTask
    protected void setRawResult(T t) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void tryComplete() {
        CountedCompleter countedCompleter = this;
        CountedCompleter countedCompleter2 = countedCompleter;
        while (true) {
            int i = countedCompleter.pending;
            if (i == 0) {
                countedCompleter.onCompletion(countedCompleter2);
                CountedCompleter countedCompleter3 = countedCompleter.completer;
                if (countedCompleter3 == null) {
                    countedCompleter.quietlyComplete();
                    return;
                } else {
                    countedCompleter2 = countedCompleter;
                    countedCompleter = countedCompleter3;
                }
            } else if (f1615U.compareAndSwapInt(countedCompleter, PENDING, i, i - 1)) {
                return;
            }
        }
    }
}
