package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0007R\"\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0002\u0010\u0003\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0004\u0010\u0005R\"\u0010\b\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0012\n\u0004\b\b\u0010\u0003\u0012\u0004\b\n\u0010\u0007\u001a\u0004\b\t\u0010\u0005R\u001c\u0010\u000f\u001a\u00020\u000b8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u000e\u0010\u0007\u001a\u0004\b\f\u0010\rR\"\u0010\u0010\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0010\u0010\u0003\u0012\u0004\b\u0012\u0010\u0007\u001a\u0004\b\u0011\u0010\u0005¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/Dispatchers;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Default", "Lkotlinx/coroutines/CoroutineDispatcher;", "getDefault", "()Lkotlinx/coroutines/CoroutineDispatcher;", "getDefault$annotations", "()V", "IO", "getIO", "getIO$annotations", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "getMain", "()Lkotlinx/coroutines/MainCoroutineDispatcher;", "getMain$annotations", "Main", "Unconfined", "getUnconfined", "getUnconfined$annotations", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/Dispatchers.class */
public final class Dispatchers {
    @NotNull

    /* renamed from: a */
    private static final CoroutineDispatcher f21167a = CoroutineContextKt.m1325a();

    static {
        Unconfined unconfined = Unconfined.f21262g;
        DefaultScheduler.f23990m.m352Z();
    }

    private Dispatchers() {
    }

    @NotNull
    /* renamed from: a */
    public static final CoroutineDispatcher m1268a() {
        return f21167a;
    }

    @NotNull
    /* renamed from: b */
    public static final MainCoroutineDispatcher m1267b() {
        return MainDispatcherLoader.f23939b;
    }
}
