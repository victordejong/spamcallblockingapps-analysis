package kotlinx.coroutines.android;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\u001a\u0013\u0010\u0001\u001a\u00020��H\u0086@ø\u0001��¢\u0006\u0004\b\u0001\u0010\u0002\u001a%\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020��0\u0005H\u0002¢\u0006\u0004\b\b\u0010\t\u001a\u001d\u0010\n\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020��0\u0005H\u0002¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\u0012\u001a\u00020\u000f*\u00020\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u001b\u0010\u0016\u001a\u00020\f*\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0014H\u0001¢\u0006\u0004\b\u0016\u0010\u0017\"\u0016\u0010\u0018\u001a\u00020��8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019\"\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u000f8��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u0012\u0004\b\u001c\u0010\u001d\"\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010\u001e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"", "awaitFrame", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/view/Choreographer;", "choreographer", "Lkotlinx/coroutines/CancellableContinuation;", "cont", "", "postFrameCallback", "(Landroid/view/Choreographer;Lkotlinx/coroutines/CancellableContinuation;)V", "updateChoreographerAndPostFrameCallback", "(Lkotlinx/coroutines/CancellableContinuation;)V", "Landroid/os/Handler;", "", "name", "Lkotlinx/coroutines/android/HandlerDispatcher;", Constants.MessagePayloadKeys.FROM, "(Landroid/os/Handler;Ljava/lang/String;)Lkotlinx/coroutines/android/HandlerDispatcher;", "asCoroutineDispatcher", "Landroid/os/Looper;", "", "async", "asHandler", "(Landroid/os/Looper;Z)Landroid/os/Handler;", "MAX_DELAY", "J", "Main", "Lkotlinx/coroutines/android/HandlerDispatcher;", "getMain$annotations", "()V", "Landroid/view/Choreographer;", "kotlinx-coroutines-android"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/android/HandlerDispatcherKt.class */
public final class HandlerDispatcherKt {
    private static volatile Choreographer choreographer;

    static {
        Object obj = null;
        try {
            Result.Companion companion = Result.f20418g;
            obj = new HandlerContext(m1081b(Looper.getMainLooper(), true), null, 2, null);
            Result.m2481b(obj);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            obj = ResultKt.m2473a(th);
            Result.m2481b(obj);
        }
        if (Result.m2477f(obj)) {
        }
        HandlerDispatcher handlerDispatcher = (HandlerDispatcher) obj;
    }

    @VisibleForTesting
    @NotNull
    /* renamed from: b */
    public static final Handler m1081b(@NotNull Looper looper, boolean z) {
        int i;
        if (!z || (i = Build.VERSION.SDK_INT) < 16) {
            return new Handler(looper);
        }
        if (i >= 28) {
            Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
            if (invoke != null) {
                return (Handler) invoke;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.os.Handler");
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (NoSuchMethodException e) {
            return new Handler(looper);
        }
    }

    /* renamed from: c */
    private static final void m1080c(Choreographer choreographer2, final CancellableContinuation<? super Long> cancellableContinuation) {
        choreographer2.postFrameCallback(new Choreographer.FrameCallback() { // from class: kotlinx.coroutines.android.HandlerDispatcherKt$postFrameCallback$1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                CancellableContinuation.this.mo1348s(Dispatchers.m1267b(), Long.valueOf(j));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static final void m1079d(CancellableContinuation<? super Long> cancellableContinuation) {
        Choreographer choreographer2 = choreographer;
        if (choreographer2 == null) {
            choreographer2 = Choreographer.getInstance();
            Intrinsics.m1832c(choreographer2);
            choreographer = choreographer2;
        }
        m1080c(choreographer2, cancellableContinuation);
    }
}
