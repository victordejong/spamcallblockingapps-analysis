package kotlin.reflect.jvm.internal.impl.p554f;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
/* renamed from: kotlin.reflect.jvm.internal.impl.f.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/c.class */
public final class C19273c extends C19274d {

    /* renamed from: a */
    private final Runnable f65116a;

    /* renamed from: c */
    private final Function1<InterruptedException, C20128v> f65117c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C19273c(Runnable checkCancelled, Function1<? super InterruptedException, C20128v> interruptedExceptionHandler) {
        this(new ReentrantLock(), checkCancelled, interruptedExceptionHandler);
        C18524p.m3840d(checkCancelled, "checkCancelled");
        C18524p.m3840d(interruptedExceptionHandler, "interruptedExceptionHandler");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C19273c(Lock lock, Runnable checkCancelled, Function1<? super InterruptedException, C20128v> interruptedExceptionHandler) {
        super(lock);
        C18524p.m3840d(lock, "lock");
        C18524p.m3840d(checkCancelled, "checkCancelled");
        C18524p.m3840d(interruptedExceptionHandler, "interruptedExceptionHandler");
        this.f65116a = checkCancelled;
        this.f65117c = interruptedExceptionHandler;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.C19274d, kotlin.reflect.jvm.internal.impl.p554f.AbstractC19298k
    /* renamed from: a */
    public final void mo2320a() {
        while (!m2349b().tryLock(50L, TimeUnit.MILLISECONDS)) {
            try {
                this.f65116a.run();
            } catch (InterruptedException e) {
                this.f65117c.invoke(e);
                return;
            }
        }
    }
}
