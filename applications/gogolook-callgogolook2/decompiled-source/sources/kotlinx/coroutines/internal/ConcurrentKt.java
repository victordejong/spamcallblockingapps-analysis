package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001d\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\b��\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0080\b\u001a\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH��\u001a\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u0002H\u00040\fj\b\u0012\u0004\u0012\u0002H\u0004`\r\"\u0004\b��\u0010\u0004H��\u001a*\u0010\u000e\u001a\u0002H\u000f\"\u0004\b��\u0010\u000f*\u00060\u0010j\u0002`\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0013H\u0080\b¢\u0006\u0002\u0010\u0014\"\u0010\u0010��\u001a\u0004\u0018\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��*\f\b��\u0010\u0015\"\u00020\u00102\u00020\u0010¨\u0006\u0016"}, m815d2 = {"REMOVE_FUTURE_ON_CANCEL", "Ljava/lang/reflect/Method;", "identitySet", "", ExifInterface.LONGITUDE_EAST, "expectedSize", "", "removeFutureOnCancel", "", "executor", "Ljava/util/concurrent/Executor;", "subscriberList", "", "Lkotlinx/coroutines/internal/SubscribersList;", "withLock", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "action", "Lkotlin/Function0;", "(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "ReentrantLock", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/ConcurrentKt.class */
public final class ConcurrentKt {
    public static final Method REMOVE_FUTURE_ON_CANCEL;

    static {
        Method method;
        try {
            method = ScheduledThreadPoolExecutor.class.getMethod("setRemoveOnCancelPolicy", Boolean.TYPE);
        } catch (Throwable th) {
            method = null;
        }
        REMOVE_FUTURE_ON_CANCEL = method;
    }

    public static /* synthetic */ void ReentrantLock$annotations() {
    }

    public static final <E> Set<E> identitySet(int i) {
        return Collections.newSetFromMap(new IdentityHashMap(i));
    }

    public static final boolean removeFutureOnCancel(Executor executor) {
        Method method;
        Executor executor2 = executor;
        try {
            if (!(executor instanceof ScheduledExecutorService)) {
                executor2 = null;
            }
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) executor2;
            if (scheduledExecutorService == null || (method = REMOVE_FUTURE_ON_CANCEL) == null) {
                return false;
            }
            method.invoke(scheduledExecutorService, true);
            return true;
        } catch (Throwable th) {
            return true;
        }
    }

    public static final <E> List<E> subscriberList() {
        return new CopyOnWriteArrayList();
    }

    public static final <T> T withLock(ReentrantLock reentrantLock, AbstractC15107a<? extends T> aVar) {
        reentrantLock.lock();
        try {
            T t = (T) aVar.invoke();
            C15148j.m389b(1);
            reentrantLock.unlock();
            C15148j.m390a(1);
            return t;
        } catch (Throwable th) {
            C15148j.m389b(1);
            reentrantLock.unlock();
            C15148j.m390a(1);
            throw th;
        }
    }
}
