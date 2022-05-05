package kotlinx.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.JobSupportKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a@\u0010\u0007\u001a\u00020\u0006\"\u0004\b��\u0010��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u00012\u001a\u0010\u0005\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003H\u0082\b¢\u0006\u0004\b\u0007\u0010\b\u001a@\u0010\t\u001a\u00020\u0006\"\u0004\b��\u0010��*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001H��ø\u0001��¢\u0006\u0004\b\t\u0010\n\u001aT\u0010\t\u001a\u00020\u0006\"\u0004\b��\u0010\u000b\"\u0004\b\u0001\u0010��*\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\f2\u0006\u0010\r\u001a\u00028��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001H��ø\u0001��¢\u0006\u0004\b\t\u0010\u000e\u001a@\u0010\u000f\u001a\u00020\u0006\"\u0004\b��\u0010��*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001H��ø\u0001��¢\u0006\u0004\b\u000f\u0010\n\u001aT\u0010\u000f\u001a\u00020\u0006\"\u0004\b��\u0010\u000b\"\u0004\b\u0001\u0010��*\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\f2\u0006\u0010\r\u001a\u00028��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001H��ø\u0001��¢\u0006\u0004\b\u000f\u0010\u000e\u001a[\u0010\u0012\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u00028��0\u00102\u0006\u0010\r\u001a\u00028\u00012'\u0010\u0005\u001a#\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\f¢\u0006\u0002\b\u0011H��ø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013\u001a[\u0010\u0014\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u00028��0\u00102\u0006\u0010\r\u001a\u00028\u00012'\u0010\u0005\u001a#\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\f¢\u0006\u0002\b\u0011H��ø\u0001��¢\u0006\u0004\b\u0014\u0010\u0013\u001aF\u0010\u001a\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00102\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u00032\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0018H\u0082\b¢\u0006\u0004\b\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"T", "Lkotlin/coroutines/Continuation;", "completion", "Lkotlin/Function1;", "", "block", "", "startDirect", "(Lkotlin/coroutines/Continuation;Lkotlin/Function1;)V", "startCoroutineUndispatched", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "R", "Lkotlin/Function2;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "startCoroutineUnintercepted", "Lkotlinx/coroutines/internal/ScopeCoroutine;", "Lkotlin/ExtensionFunctionType;", "startUndispatchedOrReturn", "(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "startUndispatchedOrReturnIgnoreTimeout", "", "", "shouldThrow", "Lkotlin/Function0;", "startBlock", "undispatchedResult", "(Lkotlinx/coroutines/internal/ScopeCoroutine;Lkotlin/Function1;Lkotlin/Function0;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/intrinsics/UndispatchedKt.class */
public final class UndispatchedKt {
    /* renamed from: a */
    public static final <T> void m398a(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, @NotNull Continuation<? super T> continuation) {
        Object d;
        DebugProbesKt.m1906a(continuation);
        try {
            CoroutineContext context = continuation.getContext();
            Object c = ThreadContextKt.m427c(context, null);
            if (function1 != null) {
                TypeIntrinsics.m1785b(function1, 1);
                Object invoke = function1.invoke(continuation);
                ThreadContextKt.m429a(context, c);
                d = IntrinsicsKt__IntrinsicsKt.m1920d();
                if (invoke != d) {
                    Result.Companion companion = Result.f20418g;
                    Result.m2481b(invoke);
                    continuation.resumeWith(invoke);
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            Object a = ResultKt.m2473a(th);
            Result.m2481b(a);
            continuation.resumeWith(a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static final <R, T> void m397b(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, @NotNull Continuation<? super T> continuation) {
        Object d;
        DebugProbesKt.m1906a(continuation);
        try {
            CoroutineContext context = continuation.getContext();
            Object c = ThreadContextKt.m427c(context, null);
            if (function2 != null) {
                TypeIntrinsics.m1785b(function2, 2);
                Object o = function2.mo422o(r, continuation);
                ThreadContextKt.m429a(context, c);
                d = IntrinsicsKt__IntrinsicsKt.m1920d();
                if (o != d) {
                    Result.Companion companion = Result.f20418g;
                    Result.m2481b(o);
                    continuation.resumeWith(o);
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            Object a = ResultKt.m2473a(th);
            Result.m2481b(a);
            continuation.resumeWith(a);
        }
    }

    /* renamed from: c */
    public static final <T> void m396c(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, @NotNull Continuation<? super T> continuation) {
        Object d;
        DebugProbesKt.m1906a(continuation);
        try {
            if (function1 != null) {
                TypeIntrinsics.m1785b(function1, 1);
                Object invoke = function1.invoke(continuation);
                d = IntrinsicsKt__IntrinsicsKt.m1920d();
                if (invoke != d) {
                    Result.Companion companion = Result.f20418g;
                    Result.m2481b(invoke);
                    continuation.resumeWith(invoke);
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            Object a = ResultKt.m2473a(th);
            Result.m2481b(a);
            continuation.resumeWith(a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public static final <R, T> void m395d(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, @NotNull Continuation<? super T> continuation) {
        Object d;
        DebugProbesKt.m1906a(continuation);
        try {
            if (function2 != null) {
                TypeIntrinsics.m1785b(function2, 2);
                Object o = function2.mo422o(r, continuation);
                d = IntrinsicsKt__IntrinsicsKt.m1920d();
                if (o != d) {
                    Result.Companion companion = Result.f20418g;
                    Result.m2481b(o);
                    continuation.resumeWith(o);
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            Object a = ResultKt.m2473a(th);
            Result.m2481b(a);
            continuation.resumeWith(a);
        }
    }

    @Nullable
    /* renamed from: e */
    public static final <T, R> Object m394e(@NotNull ScopeCoroutine<? super T> scopeCoroutine, R r, @NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        Object obj;
        Object d;
        Object obj2;
        scopeCoroutine.m1387Q0();
        try {
        } catch (Throwable th) {
            obj = new CompletedExceptionally(th, false, 2, null);
        }
        if (function2 != null) {
            TypeIntrinsics.m1785b(function2, 2);
            obj = function2.mo422o(r, scopeCoroutine);
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            if (obj == d) {
                obj2 = IntrinsicsKt__IntrinsicsKt.m1920d();
            } else {
                Object q0 = scopeCoroutine.m1157q0(obj);
                if (q0 == JobSupportKt.f21223b) {
                    obj2 = IntrinsicsKt__IntrinsicsKt.m1920d();
                } else if (q0 instanceof CompletedExceptionally) {
                    Throwable th2 = ((CompletedExceptionally) q0).f21127a;
                    Continuation<? super T> continuation = scopeCoroutine.f23944i;
                    Throwable th3 = th2;
                    if (DebugKt.m1305d()) {
                        th3 = !(continuation instanceof CoroutineStackFrame) ? th2 : StackTraceRecoveryKt.m447j(th2, (CoroutineStackFrame) continuation);
                    }
                    throw th3;
                } else {
                    obj2 = JobSupportKt.m1127h(q0);
                }
            }
            return obj2;
        }
        throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
    }

    @Nullable
    /* renamed from: f */
    public static final <T, R> Object m393f(@NotNull ScopeCoroutine<? super T> scopeCoroutine, R r, @NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        Object obj;
        Object d;
        Object obj2;
        scopeCoroutine.m1387Q0();
        boolean z = false;
        try {
        } catch (Throwable th) {
            obj = new CompletedExceptionally(th, false, 2, null);
        }
        if (function2 != null) {
            TypeIntrinsics.m1785b(function2, 2);
            obj = function2.mo422o(r, scopeCoroutine);
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            if (obj == d) {
                obj2 = IntrinsicsKt__IntrinsicsKt.m1920d();
            } else {
                Object q0 = scopeCoroutine.m1157q0(obj);
                if (q0 == JobSupportKt.f21223b) {
                    obj2 = IntrinsicsKt__IntrinsicsKt.m1920d();
                } else if (q0 instanceof CompletedExceptionally) {
                    CompletedExceptionally completedExceptionally = (CompletedExceptionally) q0;
                    Throwable th2 = completedExceptionally.f21127a;
                    if (!(th2 instanceof TimeoutCancellationException) || ((TimeoutCancellationException) th2).f21255f != scopeCoroutine) {
                        z = true;
                    }
                    if (z) {
                        Throwable th3 = completedExceptionally.f21127a;
                        Continuation<? super T> continuation = scopeCoroutine.f23944i;
                        Throwable th4 = th3;
                        if (DebugKt.m1305d()) {
                            th4 = !(continuation instanceof CoroutineStackFrame) ? th3 : StackTraceRecoveryKt.m447j(th3, (CoroutineStackFrame) continuation);
                        }
                        throw th4;
                    }
                    obj2 = obj;
                    if (obj instanceof CompletedExceptionally) {
                        Throwable th5 = ((CompletedExceptionally) obj).f21127a;
                        Continuation<? super T> continuation2 = scopeCoroutine.f23944i;
                        Throwable th6 = th5;
                        if (DebugKt.m1305d()) {
                            th6 = !(continuation2 instanceof CoroutineStackFrame) ? th5 : StackTraceRecoveryKt.m447j(th5, (CoroutineStackFrame) continuation2);
                        }
                        throw th6;
                    }
                } else {
                    obj2 = JobSupportKt.m1127h(q0);
                }
            }
            return obj2;
        }
        throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
    }
}
