package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a6\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0005\"\u0004\b��\u0010��2\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003H��ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007\u001a$\u0010\b\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0005H��ø\u0001��¢\u0006\u0004\b\b\u0010\t\u001a0\u0010\b\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00052\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\nH��ø\u0001��¢\u0006\u0004\b\b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"T", "", "state", "Lkotlin/coroutines/Continuation;", "uCont", "Lkotlin/Result;", "recoverResult", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toState", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/CancellableContinuation;", "caller", "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CompletedExceptionallyKt.class */
public final class CompletedExceptionallyKt {
    @NotNull
    /* renamed from: a */
    public static final <T> Object m1328a(@Nullable Object obj, @NotNull Continuation<? super T> continuation) {
        if (obj instanceof CompletedExceptionally) {
            Result.Companion companion = Result.f20418g;
            Throwable th = ((CompletedExceptionally) obj).f21127a;
            Throwable th2 = th;
            if (DebugKt.m1305d()) {
                th2 = !(continuation instanceof CoroutineStackFrame) ? th : StackTraceRecoveryKt.m456a(th, (CoroutineStackFrame) continuation);
            }
            obj = ResultKt.m2473a(th2);
            Result.m2481b(obj);
        } else {
            Result.Companion companion2 = Result.f20418g;
            Result.m2481b(obj);
        }
        return obj;
    }

    @Nullable
    /* renamed from: b */
    public static final <T> Object m1327b(@NotNull Object obj) {
        Throwable d = Result.m2479d(obj);
        if (d != null) {
            obj = new CompletedExceptionally(d, false, 2, null);
        }
        return obj;
    }

    @Nullable
    /* renamed from: c */
    public static final <T> Object m1326c(@NotNull Object obj, @NotNull CancellableContinuation<?> cancellableContinuation) {
        Throwable d = Result.m2479d(obj);
        if (d != null) {
            Throwable th = d;
            if (DebugKt.m1305d()) {
                th = !(cancellableContinuation instanceof CoroutineStackFrame) ? d : StackTraceRecoveryKt.m456a(d, (CoroutineStackFrame) cancellableContinuation);
            }
            obj = new CompletedExceptionally(th, false, 2, null);
        }
        return obj;
    }
}
