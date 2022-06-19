package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlinx.coroutines.AbstractC20197bg;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b \u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0004J\b\u0010\r\u001a\u00020\bH\u0004R\u0012\u0010\u0003\u001a\u00020\u0004X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, m4298d2 = {"Lkotlinx/coroutines/EventLoopImplPlatform;", "Lkotlinx/coroutines/EventLoop;", "()V", "thread", "Ljava/lang/Thread;", "getThread", "()Ljava/lang/Thread;", "reschedule", "", "now", "", "delayedTask", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "unpark", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.bh */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bh.class */
public abstract class AbstractC20202bh extends AbstractC20196bf {
    /* renamed from: a */
    protected abstract Thread mo903a();

    /* renamed from: b */
    public final void m992b(long j, AbstractC20197bg.AbstractRunnableC20200c abstractRunnableC20200c) {
        if (C20159ao.m1083a()) {
            if (!(this != RunnableC20161aq.f66567b)) {
                throw new AssertionError();
            }
        }
        RunnableC20161aq.f66567b.m1005a(j, abstractRunnableC20200c);
    }

    /* renamed from: k */
    public final void m991k() {
        Thread mo903a = mo903a();
        if (Thread.currentThread() == mo903a || C20247cp.f66702a != null) {
            return;
        }
        LockSupport.unpark(mo903a);
    }
}
