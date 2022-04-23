package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\b��\u0018��2\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/PoolThread;", "Ljava/lang/Thread;", "Lkotlinx/coroutines/ThreadPoolDispatcher;", "dispatcher", "Lkotlinx/coroutines/ThreadPoolDispatcher;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "target", "", "name", "<init>", "(Lkotlinx/coroutines/ThreadPoolDispatcher;Ljava/lang/Runnable;Ljava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/PoolThread.class */
public final class PoolThread extends Thread {
    @JvmField
    @NotNull

    /* renamed from: f */
    public final ThreadPoolDispatcher f21232f;

    public PoolThread(@NotNull ThreadPoolDispatcher threadPoolDispatcher, @NotNull Runnable runnable, @NotNull String str) {
        super(runnable, str);
        this.f21232f = threadPoolDispatcher;
        setDaemon(true);
    }
}
