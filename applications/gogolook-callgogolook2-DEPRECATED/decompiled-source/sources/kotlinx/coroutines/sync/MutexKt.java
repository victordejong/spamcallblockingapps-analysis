package kotlinx.coroutines.sync;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;
import p626l.p634w.AbstractC15044d;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0016\u001a5\u0010\u0017\u001a\u0002H\u0018\"\u0004\b��\u0010\u0018*\u00020\u00142\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001cH\u0086Hø\u0001��¢\u0006\u0002\u0010\u001d\"\u0016\u0010��\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\b\u0010\u0003\"\u0016\u0010\t\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\n\u0010\u0003\"\u0016\u0010\u000b\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\f\u0010\u0003\"\u0016\u0010\r\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u000e\u0010\u0003\"\u0016\u0010\u000f\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0010\u0010\u0003\"\u0016\u0010\u0011\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0012\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, m815d2 = {"EMPTY_LOCKED", "Lkotlinx/coroutines/sync/Empty;", "EMPTY_LOCKED$annotations", "()V", "EMPTY_UNLOCKED", "EMPTY_UNLOCKED$annotations", "ENQUEUE_FAIL", "Lkotlinx/coroutines/internal/Symbol;", "ENQUEUE_FAIL$annotations", "LOCKED", "LOCKED$annotations", "LOCK_FAIL", "LOCK_FAIL$annotations", "SELECT_SUCCESS", "SELECT_SUCCESS$annotations", "UNLOCKED", "UNLOCKED$annotations", "UNLOCK_FAIL", "UNLOCK_FAIL$annotations", "Mutex", "Lkotlinx/coroutines/sync/Mutex;", "locked", "", "withLock", ExifInterface.GPS_DIRECTION_TRUE, "owner", "", "action", "Lkotlin/Function0;", "(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/sync/MutexKt.class */
public final class MutexKt {
    public static final Symbol LOCK_FAIL = new Symbol("LOCK_FAIL");
    public static final Symbol ENQUEUE_FAIL = new Symbol("ENQUEUE_FAIL");
    public static final Symbol UNLOCK_FAIL = new Symbol("UNLOCK_FAIL");
    public static final Symbol SELECT_SUCCESS = new Symbol("SELECT_SUCCESS");
    public static final Symbol LOCKED = new Symbol("LOCKED");
    public static final Symbol UNLOCKED = new Symbol("UNLOCKED");
    public static final Empty EMPTY_LOCKED = new Empty(LOCKED);
    public static final Empty EMPTY_UNLOCKED = new Empty(UNLOCKED);

    public static /* synthetic */ void EMPTY_LOCKED$annotations() {
    }

    public static /* synthetic */ void EMPTY_UNLOCKED$annotations() {
    }

    public static /* synthetic */ void ENQUEUE_FAIL$annotations() {
    }

    public static /* synthetic */ void LOCKED$annotations() {
    }

    public static /* synthetic */ void LOCK_FAIL$annotations() {
    }

    public static final Mutex Mutex(boolean z) {
        return new MutexImpl(z);
    }

    public static /* synthetic */ Mutex Mutex$default(boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return Mutex(z);
    }

    public static /* synthetic */ void SELECT_SUCCESS$annotations() {
    }

    public static /* synthetic */ void UNLOCKED$annotations() {
    }

    public static /* synthetic */ void UNLOCK_FAIL$annotations() {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object withLock(kotlinx.coroutines.sync.Mutex r4, java.lang.Object r5, p626l.p641z.p642c.AbstractC15107a<? extends T> r6, p626l.p634w.AbstractC15044d<? super T> r7) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.MutexKt.withLock(kotlinx.coroutines.sync.Mutex, java.lang.Object, l.z.c.a, l.w.d):java.lang.Object");
    }

    public static final Object withLock$$forInline(Mutex mutex, Object obj, AbstractC15107a aVar, AbstractC15044d dVar) {
        C15148j.m388c(0);
        mutex.lock(obj, dVar);
        C15148j.m388c(2);
        C15148j.m388c(1);
        try {
            Object invoke = aVar.invoke();
            C15148j.m389b(1);
            mutex.unlock(obj);
            C15148j.m390a(1);
            return invoke;
        } catch (Throwable th) {
            C15148j.m389b(1);
            mutex.unlock(obj);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static /* synthetic */ Object withLock$default(Mutex mutex, Object obj, AbstractC15107a aVar, AbstractC15044d dVar, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        C15148j.m388c(0);
        mutex.lock(obj, dVar);
        C15148j.m388c(2);
        C15148j.m388c(1);
        try {
            Object invoke = aVar.invoke();
            C15148j.m389b(1);
            mutex.unlock(obj);
            C15148j.m390a(1);
            return invoke;
        } catch (Throwable th) {
            C15148j.m389b(1);
            mutex.unlock(obj);
            C15148j.m390a(1);
            throw th;
        }
    }
}
