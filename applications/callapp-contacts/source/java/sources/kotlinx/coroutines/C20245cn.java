package kotlinx.coroutines;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\bÁ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0004\u0018\u00010\u0004H��¢\u0006\u0002\b\u000bJ\r\u0010\f\u001a\u00020\rH��¢\u0006\u0002\b\u000eJ\u0015\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H��¢\u0006\u0002\b\u0010R\u0014\u0010\u0003\u001a\u00020\u00048@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\"\u0010\u0007\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00040\bj\n\u0012\u0006\u0012\u0004\u0018\u00010\u0004`\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"Lkotlinx/coroutines/ThreadLocalEventLoop;", "", "()V", "eventLoop", "Lkotlinx/coroutines/EventLoop;", "getEventLoop$kotlinx_coroutines_core", "()Lkotlinx/coroutines/EventLoop;", "ref", "Ljava/lang/ThreadLocal;", "Lkotlinx/coroutines/internal/CommonThreadLocal;", "currentOrNull", "currentOrNull$kotlinx_coroutines_core", "resetEventLoop", "", "resetEventLoop$kotlinx_coroutines_core", "setEventLoop", "setEventLoop$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.cn */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cn.class */
public final class C20245cn {

    /* renamed from: a */
    public static final C20245cn f66700a = new C20245cn();

    /* renamed from: b */
    private static final ThreadLocal<AbstractC20196bf> f66701b = new ThreadLocal<>();

    private C20245cn() {
    }

    /* renamed from: a */
    public static AbstractC20196bf m913a() {
        ThreadLocal<AbstractC20196bf> threadLocal = f66701b;
        AbstractC20196bf abstractC20196bf = threadLocal.get();
        C20259g c20259g = abstractC20196bf;
        if (abstractC20196bf == null) {
            c20259g = new C20259g(Thread.currentThread());
            threadLocal.set(c20259g);
        }
        return c20259g;
    }

    /* renamed from: a */
    public static void m912a(AbstractC20196bf abstractC20196bf) {
        f66701b.set(abstractC20196bf);
    }

    /* renamed from: b */
    public static AbstractC20196bf m911b() {
        return f66701b.get();
    }

    /* renamed from: c */
    public static void m910c() {
        f66701b.set(null);
    }
}
