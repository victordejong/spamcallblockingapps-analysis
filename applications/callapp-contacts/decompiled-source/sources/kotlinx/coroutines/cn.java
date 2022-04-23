package kotlinx.coroutines;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\bÁ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0004\u0018\u00010\u0004H��¢\u0006\u0002\b\u000bJ\r\u0010\f\u001a\u00020\rH��¢\u0006\u0002\b\u000eJ\u0015\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H��¢\u0006\u0002\b\u0010R\u0014\u0010\u0003\u001a\u00020\u00048@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\"\u0010\u0007\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00040\bj\n\u0012\u0006\u0012\u0004\u0018\u00010\u0004`\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/ThreadLocalEventLoop;", "", "()V", "eventLoop", "Lkotlinx/coroutines/EventLoop;", "getEventLoop$kotlinx_coroutines_core", "()Lkotlinx/coroutines/EventLoop;", "ref", "Ljava/lang/ThreadLocal;", "Lkotlinx/coroutines/internal/CommonThreadLocal;", "currentOrNull", "currentOrNull$kotlinx_coroutines_core", "resetEventLoop", "", "resetEventLoop$kotlinx_coroutines_core", "setEventLoop", "setEventLoop$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cn.class */
public final class cn {

    /* renamed from: a  reason: collision with root package name */
    public static final cn f38784a = new cn();

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<bf> f38785b = new ThreadLocal<>();

    private cn() {
    }

    public static bf a() {
        ThreadLocal<bf> threadLocal = f38785b;
        bf bfVar = threadLocal.get();
        g gVar = bfVar;
        if (bfVar == null) {
            gVar = new g(Thread.currentThread());
            threadLocal.set(gVar);
        }
        return gVar;
    }

    public static void a(bf bfVar) {
        f38785b.set(bfVar);
    }

    public static bf b() {
        return f38785b.get();
    }

    public static void c() {
        f38785b.set(null);
    }
}
