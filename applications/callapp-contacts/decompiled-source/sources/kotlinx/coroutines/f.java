package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u000b\u0010\u0011\u001a\u00028��¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\n\u001a\u00020\u000b8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\f¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/BlockingCoroutine;", "T", "Lkotlinx/coroutines/AbstractCoroutine;", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "blockedThread", "Ljava/lang/Thread;", "eventLoop", "Lkotlinx/coroutines/EventLoop;", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/EventLoop;)V", "isScopedCoroutine", "", "()Z", "afterCompletion", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "joinBlocking", "()Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/f.class */
public final class f<T> extends a<T> {
    private final Thread e;
    private final bf f;

    public f(kotlin.c.f fVar, Thread thread, bf bfVar) {
        super(fVar, true);
        this.e = thread;
        this.f = bfVar;
    }

    @Override // kotlinx.coroutines.ca
    protected final boolean aA_() {
        return true;
    }

    public final T d() {
        bf bfVar = this.f;
        if (bfVar != null) {
            bfVar.a(false);
        }
        while (!Thread.interrupted()) {
            bf bfVar2 = this.f;
            long c2 = bfVar2 != null ? bfVar2.c() : Long.MAX_VALUE;
            if (k()) {
                bf bfVar3 = this.f;
                if (bfVar3 != null) {
                    bfVar3.b(false);
                }
                T t = (T) cb.b(p());
                z zVar = (z) (!(t instanceof z) ? null : t);
                if (zVar == null) {
                    return t;
                }
                throw zVar.f38868b;
            } else if (cp.f38786a == null) {
                LockSupport.parkNanos(this, c2);
            }
        }
        InterruptedException interruptedException = new InterruptedException();
        b((Throwable) interruptedException);
        throw interruptedException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.ca
    public final void d(Object obj) {
        if (!p.a(Thread.currentThread(), this.e)) {
            Thread thread = this.e;
            if (cp.f38786a == null) {
                LockSupport.unpark(thread);
            }
        }
    }
}
