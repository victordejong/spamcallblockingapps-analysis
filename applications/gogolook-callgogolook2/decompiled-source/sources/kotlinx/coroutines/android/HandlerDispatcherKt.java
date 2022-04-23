package kotlinx.coroutines.android;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.VisibleForTesting;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14986p;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.C15055h;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\u001a\u0011\u0010\b\u001a\u00020\u0001H\u0086@ø\u0001��¢\u0006\u0002\u0010\t\u001a\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\rH\u0002\u001a\u0016\u0010\u000e\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\rH\u0002\u001a\u001d\u0010\u000f\u001a\u00020\u0003*\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007¢\u0006\u0002\b\u0013\u001a\u0014\u0010\u0014\u001a\u00020\u0010*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0001\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0004\u0010\u0005\"\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, m815d2 = {"MAX_DELAY", "", "Main", "Lkotlinx/coroutines/android/HandlerDispatcher;", "Main$annotations", "()V", "choreographer", "Landroid/view/Choreographer;", "awaitFrame", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "postFrameCallback", "", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "updateChoreographerAndPostFrameCallback", "asCoroutineDispatcher", "Landroid/os/Handler;", "name", "", "from", "asHandler", "Landroid/os/Looper;", "async", "", "kotlinx-coroutines-android"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/android/HandlerDispatcherKt.class */
public final class HandlerDispatcherKt {
    public static final long MAX_DELAY = 4611686018427387903L;
    public static final HandlerDispatcher Main;
    public static volatile Choreographer choreographer;

    static {
        Object obj;
        try {
            C14979k.C14980a aVar = C14979k.f33013a;
            obj = new HandlerContext(asHandler(Looper.getMainLooper(), true), "Main");
            C14979k.m657a(obj);
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            obj = C14982l.m652a(th);
            C14979k.m657a(obj);
        }
        Object obj2 = obj;
        if (C14979k.m655c(obj)) {
            obj2 = null;
        }
        Main = (HandlerDispatcher) obj2;
    }

    public static /* synthetic */ void Main$annotations() {
    }

    @VisibleForTesting
    public static final Handler asHandler(Looper looper, boolean z) {
        int i;
        if (!z || (i = Build.VERSION.SDK_INT) < 16) {
            return new Handler(looper);
        }
        if (i >= 28) {
            Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
            if (invoke != null) {
                return (Handler) invoke;
            }
            throw new C14986p("null cannot be cast to non-null type android.os.Handler");
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, true);
        } catch (NoSuchMethodException e) {
            return new Handler(looper);
        }
    }

    public static final Object awaitFrame(AbstractC15044d<? super Long> dVar) {
        Choreographer choreographer2 = choreographer;
        if (choreographer2 != null) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
            postFrameCallback(choreographer2, cancellableContinuationImpl);
            Object result = cancellableContinuationImpl.getResult();
            if (result == C15064c.m478a()) {
                C15072h.m462c(dVar);
            }
            return result;
        }
        final CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        Dispatchers.getMain().dispatch(C15055h.f33080a, new Runnable() { // from class: kotlinx.coroutines.android.HandlerDispatcherKt$$special$$inlined$Runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                HandlerDispatcherKt.updateChoreographerAndPostFrameCallback(CancellableContinuation.this);
            }
        });
        Object result2 = cancellableContinuationImpl2.getResult();
        if (result2 == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result2;
    }

    public static final HandlerDispatcher from(Handler handler) {
        return from$default(handler, null, 1, null);
    }

    public static final HandlerDispatcher from(Handler handler, String str) {
        return new HandlerContext(handler, str);
    }

    public static /* synthetic */ HandlerDispatcher from$default(Handler handler, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return from(handler, str);
    }

    public static final void postFrameCallback(Choreographer choreographer2, final CancellableContinuation<? super Long> cancellableContinuation) {
        choreographer2.postFrameCallback(new Choreographer.FrameCallback() { // from class: kotlinx.coroutines.android.HandlerDispatcherKt$postFrameCallback$1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                CancellableContinuation.this.resumeUndispatched(Dispatchers.getMain(), Long.valueOf(j));
            }
        });
    }

    public static final void updateChoreographerAndPostFrameCallback(CancellableContinuation<? super Long> cancellableContinuation) {
        Choreographer choreographer2 = choreographer;
        if (choreographer2 == null) {
            choreographer2 = Choreographer.getInstance();
            if (choreographer2 != null) {
                choreographer = choreographer2;
            } else {
                C15149k.m378b();
                throw null;
            }
        }
        postFrameCallback(choreographer2, cancellableContinuation);
    }
}
