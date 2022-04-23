package kotlin.coroutines;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\f\u001aF\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u0007\"\u0004\b��\u0010��2\u0006\u0010\u0002\u001a\u00020\u00012\u001a\b\u0004\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b\b\u0010\t\u001aB\u0010\u000b\u001a\u00028��\"\u0004\b��\u0010��2\u001a\b\u0004\u0010\n\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0004\u0012\u00020\u00050\u0003H\u0087Hø\u0001��\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u000b\u0010\f\u001aF\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\"\u0004\b��\u0010��*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00032\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\u0007H\u0007ø\u0001��¢\u0006\u0004\b\u000f\u0010\u0010\u001a_\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\"\u0004\b��\u0010\u0011\"\u0004\b\u0001\u0010��*#\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0012¢\u0006\u0002\b\u00132\u0006\u0010\u0014\u001a\u00028��2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007H\u0007ø\u0001��¢\u0006\u0004\b\u000f\u0010\u0015\u001a(\u0010\u0017\u001a\u00020\u0005\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00072\u0006\u0010\u0016\u001a\u00028��H\u0087\b¢\u0006\u0004\b\u0017\u0010\u0018\u001a(\u0010\u001b\u001a\u00020\u0005\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0087\b¢\u0006\u0004\b\u001b\u0010\u001c\u001a@\u0010\u001d\u001a\u00020\u0005\"\u0004\b��\u0010��*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00032\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\u0007H\u0007ø\u0001��¢\u0006\u0004\b\u001d\u0010\u001e\u001aY\u0010\u001d\u001a\u00020\u0005\"\u0004\b��\u0010\u0011\"\u0004\b\u0001\u0010��*#\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0012¢\u0006\u0002\b\u00132\u0006\u0010\u0014\u001a\u00028��2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007H\u0007ø\u0001��¢\u0006\u0004\b\u001d\u0010\u001f\"\u001d\u0010$\u001a\u00020\u00018Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010#\u001a\u0004\b \u0010!\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006%"}, d2 = {"T", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function1;", "Lkotlin/Result;", "", "resumeWith", "Lkotlin/coroutines/Continuation;", "Continuation", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/Function1;)Lkotlin/coroutines/Continuation;", "block", "suspendCoroutine", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "completion", "createCoroutine", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "R", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", FirebaseAnalytics.Param.VALUE, "resume", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", "", "exception", "resumeWithException", "(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;)V", "startCoroutine", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext$annotations", "()V", "coroutineContext", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/ContinuationKt.class */
public final class ContinuationKt {
    @SinceKotlin
    /* renamed from: a */
    public static final <T> void m1935a(@NotNull Function1<? super Continuation<? super T>, ? extends Object> startCoroutine, @NotNull Continuation<? super T> completion) {
        Continuation<Unit> a;
        Continuation c;
        Intrinsics.m1830e(startCoroutine, "$this$startCoroutine");
        Intrinsics.m1830e(completion, "completion");
        a = IntrinsicsKt__IntrinsicsJvmKt.m1923a(startCoroutine, completion);
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(a);
        Unit unit = Unit.f20447a;
        Result.Companion companion = Result.f20418g;
        Result.m2481b(unit);
        c.resumeWith(unit);
    }

    @SinceKotlin
    /* renamed from: b */
    public static final <R, T> void m1934b(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> startCoroutine, R r, @NotNull Continuation<? super T> completion) {
        Continuation<Unit> b;
        Continuation c;
        Intrinsics.m1830e(startCoroutine, "$this$startCoroutine");
        Intrinsics.m1830e(completion, "completion");
        b = IntrinsicsKt__IntrinsicsJvmKt.m1922b(startCoroutine, r, completion);
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(b);
        Unit unit = Unit.f20447a;
        Result.Companion companion = Result.f20418g;
        Result.m2481b(unit);
        c.resumeWith(unit);
    }
}
