package kotlin.reflect.jvm.internal.impl.f;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/c.class */
public final class c extends d {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f37636a;

    /* renamed from: c  reason: collision with root package name */
    private final Function1<InterruptedException, v> f37637c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(Runnable checkCancelled, Function1<? super InterruptedException, v> interruptedExceptionHandler) {
        this(new ReentrantLock(), checkCancelled, interruptedExceptionHandler);
        p.d(checkCancelled, "checkCancelled");
        p.d(interruptedExceptionHandler, "interruptedExceptionHandler");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public c(Lock lock, Runnable checkCancelled, Function1<? super InterruptedException, v> interruptedExceptionHandler) {
        super(lock);
        p.d(lock, "lock");
        p.d(checkCancelled, "checkCancelled");
        p.d(interruptedExceptionHandler, "interruptedExceptionHandler");
        this.f37636a = checkCancelled;
        this.f37637c = interruptedExceptionHandler;
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.d, kotlin.reflect.jvm.internal.impl.f.k
    public final void a() {
        while (!b().tryLock(50L, TimeUnit.MILLISECONDS)) {
            try {
                this.f37636a.run();
            } catch (InterruptedException e) {
                this.f37637c.invoke(e);
                return;
            }
        }
    }
}
