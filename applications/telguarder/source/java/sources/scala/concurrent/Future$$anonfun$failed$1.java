package scala.concurrent;

import java.util.NoSuchElementException;
import scala.MatchError;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.util.Failure;
import scala.util.Success;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$failed$1.class */
public final class Future$$anonfun$failed$1 extends AbstractFunction1<Try<T>, Promise<Throwable>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Promise p$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Future$$anonfun$failed$1(Future future, Future<T> future2) {
        this.p$1 = future2;
    }

    public final Promise<Throwable> apply(Try<T> r6) {
        Promise<Throwable> promise;
        if (r6 instanceof Failure) {
            promise = this.p$1.success(((Failure) r6).exception());
        } else if (!(r6 instanceof Success)) {
            throw new MatchError(r6);
        } else {
            promise = this.p$1.failure(new NoSuchElementException("Future.failed not completed with a throwable."));
        }
        return promise;
    }
}
