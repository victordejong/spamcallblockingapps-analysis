package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\u001a\u0017\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0001\u001a\u00020��¢\u0006\u0004\b\u0003\u0010\u0004\u001aD\u0010\n\u001a\u00028��\"\u0004\b��\u0010\u0005*\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\bH\u0086Hø\u0001��\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\n\u0010\u000b\"\u001c\u0010\r\u001a\u00020\f8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u0012\u0004\b\u000f\u0010\u0010\"\u001c\u0010\u0011\u001a\u00020\f8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u000e\u0012\u0004\b\u0012\u0010\u0010\"\u001c\u0010\u0014\u001a\u00020\u00138\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u0012\u0004\b\u0016\u0010\u0010\"\u001c\u0010\u0017\u001a\u00020\u00138\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0015\u0012\u0004\b\u0018\u0010\u0010\"\u001c\u0010\u0019\u001a\u00020\u00138\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u0015\u0012\u0004\b\u001a\u0010\u0010\"\u001c\u0010\u001b\u001a\u00020\u00138\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0015\u0012\u0004\b\u001c\u0010\u0010\"\u001c\u0010\u001d\u001a\u00020\u00138\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u0015\u0012\u0004\b\u001e\u0010\u0010\"\u001c\u0010\u001f\u001a\u00020\u00138\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001f\u0010\u0015\u0012\u0004\b \u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"", "locked", "Lkotlinx/coroutines/sync/Mutex;", "Mutex", "(Z)Lkotlinx/coroutines/sync/Mutex;", "T", "", "owner", "Lkotlin/Function0;", "action", "withLock", "(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/sync/Empty;", "EMPTY_LOCKED", "Lkotlinx/coroutines/sync/Empty;", "getEMPTY_LOCKED$annotations", "()V", "EMPTY_UNLOCKED", "getEMPTY_UNLOCKED$annotations", "Lkotlinx/coroutines/internal/Symbol;", "ENQUEUE_FAIL", "Lkotlinx/coroutines/internal/Symbol;", "getENQUEUE_FAIL$annotations", "LOCKED", "getLOCKED$annotations", "LOCK_FAIL", "getLOCK_FAIL$annotations", "SELECT_SUCCESS", "getSELECT_SUCCESS$annotations", "UNLOCKED", "getUNLOCKED$annotations", "UNLOCK_FAIL", "getUNLOCK_FAIL$annotations", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/MutexKt.class */
public final class MutexKt {

    /* renamed from: a */
    private static final Symbol f24072a = new Symbol("LOCK_FAIL");

    /* renamed from: b */
    private static final Symbol f24073b = new Symbol("UNLOCK_FAIL");

    /* renamed from: c */
    private static final Symbol f24074c = new Symbol("SELECT_SUCCESS");

    /* renamed from: d */
    private static final Symbol f24075d = new Symbol("LOCKED");

    /* renamed from: e */
    private static final Symbol f24076e = new Symbol("UNLOCKED");

    /* renamed from: f */
    private static final Empty f24077f = new Empty(f24075d);

    /* renamed from: g */
    private static final Empty f24078g = new Empty(f24076e);

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007c  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m270h(@org.jetbrains.annotations.NotNull kotlinx.coroutines.sync.Mutex r4, @org.jetbrains.annotations.Nullable java.lang.Object r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<? extends T> r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super T> r7) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.MutexKt.m270h(kotlinx.coroutines.sync.Mutex, java.lang.Object, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
