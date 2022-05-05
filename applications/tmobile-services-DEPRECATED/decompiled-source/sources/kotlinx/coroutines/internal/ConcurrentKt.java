package kotlinx.coroutines.internal;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n��\n\u0002\u0010\b\n��\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a$\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\u0006\u0010\u0002\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H��¢\u0006\u0004\b\t\u0010\n\u001a%\u0010\r\u001a\u0012\u0012\u0004\u0012\u00028��0\u000bj\b\u0012\u0004\u0012\u00028��`\f\"\u0004\b��\u0010��H��¢\u0006\u0004\b\r\u0010\u000e\u001a,\u0010\u0014\u001a\u00028��\"\u0004\b��\u0010\u000f*\u00060\u0010j\u0002`\u00112\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u0012H\u0080\b¢\u0006\u0004\b\u0014\u0010\u0015\"\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018*\f\b��\u0010\u0019\"\u00020\u00102\u00020\u0010¨\u0006\u001a"}, d2 = {"E", "", "expectedSize", "", "identitySet", "(I)Ljava/util/Set;", "Ljava/util/concurrent/Executor;", "executor", "", "removeFutureOnCancel", "(Ljava/util/concurrent/Executor;)Z", "", "Lkotlinx/coroutines/internal/SubscribersList;", "subscriberList", "()Ljava/util/List;", "T", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "Lkotlin/Function0;", "action", "withLock", "(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Ljava/lang/reflect/Method;", "REMOVE_FUTURE_ON_CANCEL", "Ljava/lang/reflect/Method;", "ReentrantLock", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ConcurrentKt.class */
public final class ConcurrentKt {
    static {
        try {
            ScheduledThreadPoolExecutor.class.getMethod("setRemoveOnCancelPolicy", Boolean.TYPE);
        } catch (Throwable th) {
        }
    }
}
