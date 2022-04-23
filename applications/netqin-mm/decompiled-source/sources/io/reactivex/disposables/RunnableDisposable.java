package io.reactivex.disposables;
/* loaded from: classes2-dex2jar.jar:io/reactivex/disposables/RunnableDisposable.class */
public final class RunnableDisposable extends ReferenceDisposable<Runnable> {
    public static final long serialVersionUID = -8219729196779211169L;

    public RunnableDisposable(Runnable runnable) {
        super(runnable);
    }

    public void onDisposed(Runnable runnable) {
        runnable.run();
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        return "RunnableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }
}
