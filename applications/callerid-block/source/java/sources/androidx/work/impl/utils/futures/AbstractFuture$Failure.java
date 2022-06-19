package androidx.work.impl.utils.futures;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$Failure.class */
final class AbstractFuture$Failure {

    /* renamed from: b */
    static final AbstractFuture$Failure f3129b = new AbstractFuture$Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.work.impl.utils.futures.AbstractFuture$Failure.1
        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            synchronized (this) {
            }
            return this;
        }
    });

    /* renamed from: a */
    final Throwable f3130a;

    AbstractFuture$Failure(Throwable th) {
        AbstractFuture.d(th);
        this.f3130a = th;
    }
}
