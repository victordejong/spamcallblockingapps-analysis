package androidx.media2.common.futures;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/futures/AbstractResolvableFuture$Failure$1.class */
public final class AbstractResolvableFuture$Failure$1 extends Throwable {
    public AbstractResolvableFuture$Failure$1(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        synchronized (this) {
        }
        return this;
    }
}
