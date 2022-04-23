package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u001aB\u0010\n\u001a\u00020\u0005*\u0006\u0012\u0002\b\u00030��2\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0082\b¢\u0006\u0004\b\n\u0010\u000b\u001a0\u0010\u0010\u001a\u00020\b\"\u0004\b��\u0010\f*\b\u0012\u0004\u0012\u00028��0\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000eH\u0007ø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0019\u0010\u0012\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\b0��H��¢\u0006\u0004\b\u0012\u0010\u0013\"\u001c\u0010\u0015\u001a\u00020\u00148��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u0012\u0004\b\u0017\u0010\u0018\"\u001c\u0010\u0019\u001a\u00020\u00148\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u0012\u0004\b\u001a\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lkotlinx/coroutines/DispatchedContinuation;", "", "contState", "", "mode", "", "doYield", "Lkotlin/Function0;", "", "block", "executeUnconfined", "(Lkotlinx/coroutines/DispatchedContinuation;Ljava/lang/Object;IZLkotlin/Function0;)Z", "T", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "result", "resumeCancellableWith", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", "yieldUndispatched", "(Lkotlinx/coroutines/DispatchedContinuation;)Z", "Lkotlinx/coroutines/internal/Symbol;", "REUSABLE_CLAIMED", "Lkotlinx/coroutines/internal/Symbol;", "getREUSABLE_CLAIMED$annotations", "()V", "UNDEFINED", "getUNDEFINED$annotations", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/DispatchedContinuationKt.class */
public final class DispatchedContinuationKt {

    /* renamed from: a */
    private static final Symbol f21162a = new Symbol("UNDEFINED");
    @JvmField
    @NotNull

    /* renamed from: b */
    public static final Symbol f21163b = new Symbol("REUSABLE_CLAIMED");

    @InternalCoroutinesApi
    /* renamed from: b */
    public static final <T> void m1284b(@NotNull Continuation<? super T> continuation, @NotNull Object obj) {
        boolean z;
        if (continuation instanceof DispatchedContinuation) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            Object b = CompletedExceptionallyKt.m1327b(obj);
            if (dispatchedContinuation.f21160l.mo478V(dispatchedContinuation.getContext())) {
                dispatchedContinuation.f21157i = b;
                dispatchedContinuation.f21165h = 1;
                dispatchedContinuation.f21160l.mo241t(dispatchedContinuation.getContext(), dispatchedContinuation);
                return;
            }
            EventLoop a = ThreadLocalEventLoop.f21244b.m1110a();
            if (a.m1261e0()) {
                dispatchedContinuation.f21157i = b;
                dispatchedContinuation.f21165h = 1;
                a.m1264Y(dispatchedContinuation);
                return;
            }
            a.m1263b0(true);
            try {
                Job job = (Job) dispatchedContinuation.getContext().get(Job.f21198d);
                if (job == null || job.isActive()) {
                    z = false;
                } else {
                    CancellationException m = job.mo1119m();
                    Result.Companion companion = Result.f20418g;
                    Object a2 = ResultKt.m2473a(m);
                    Result.m2481b(a2);
                    dispatchedContinuation.resumeWith(a2);
                    z = true;
                }
                if (!z) {
                    CoroutineContext context = dispatchedContinuation.getContext();
                    Object c = ThreadContextKt.m427c(context, dispatchedContinuation.f21159k);
                    dispatchedContinuation.f21161m.resumeWith(obj);
                    Unit unit = Unit.f20447a;
                    ThreadContextKt.m429a(context, c);
                }
                do {
                } while (a.m1259j0());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        continuation.resumeWith(obj);
    }

    /* renamed from: c */
    public static final boolean m1283c(@NotNull DispatchedContinuation<? super Unit> dispatchedContinuation) {
        Unit unit = Unit.f20447a;
        EventLoop a = ThreadLocalEventLoop.f21244b.m1110a();
        boolean z = false;
        if (!a.m1260i0()) {
            if (a.m1261e0()) {
                dispatchedContinuation.f21157i = unit;
                dispatchedContinuation.f21165h = 1;
                a.m1264Y(dispatchedContinuation);
                z = true;
            } else {
                a.m1263b0(true);
                try {
                    dispatchedContinuation.run();
                    do {
                    } while (a.m1259j0());
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        }
        return z;
    }
}
