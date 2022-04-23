package kotlinx.coroutines;

import java.util.List;
import java.util.ServiceLoader;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0002H��¢\u0006\u0004\b\u0005\u0010\u0006\"\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "context", "", "exception", "", "handleCoroutineExceptionImpl", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V", "", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "handlers", "Ljava/util/List;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CoroutineExceptionHandlerImplKt.class */
public final class CoroutineExceptionHandlerImplKt {

    /* renamed from: a */
    private static final List<CoroutineExceptionHandler> f21137a;

    static {
        Sequence b;
        List<CoroutineExceptionHandler> r;
        b = SequencesKt__SequencesKt.m1631b(ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader()).iterator());
        r = SequencesKt___SequencesKt.m1612r(b);
        f21137a = r;
    }

    /* renamed from: a */
    public static final void m1319a(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
        for (CoroutineExceptionHandler coroutineExceptionHandler : f21137a) {
            try {
                coroutineExceptionHandler.handleException(coroutineContext, th);
            } catch (Throwable th2) {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, CoroutineExceptionHandlerKt.m1317b(th, th2));
            }
        }
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }
}
