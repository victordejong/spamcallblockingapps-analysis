package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\b��\u0018��2\u00020\u00012\u00020\u0002B\u001d\b\u0016\u0012\u0006\u0010$\u001a\u00020#\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b-\u0010.B#\b\u0002\u0012\u0006\u0010$\u001a\u00020#\u0012\b\u0010+\u001a\u0004\u0018\u00010\u001e\u0012\u0006\u0010)\u001a\u00020\r¢\u0006\u0004\b-\u0010/J#\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00132\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J%\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00132\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 R\u0018\u0010!\u001a\u0004\u0018\u00010��8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010$\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001c\u0010&\u001a\u00020��8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b&\u0010\"\u001a\u0004\b'\u0010(R\u0016\u0010)\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010+\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,¨\u00060"}, d2 = {"Lkotlinx/coroutines/android/HandlerContext;", "Lkotlinx/coroutines/Delay;", "Lkotlinx/coroutines/android/HandlerDispatcher;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "timeMillis", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnTimeout", "(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;", "isDispatchNeeded", "(Lkotlin/coroutines/CoroutineContext;)Z", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "(JLkotlinx/coroutines/CancellableContinuation;)V", "", "toString", "()Ljava/lang/String;", "_immediate", "Lkotlinx/coroutines/android/HandlerContext;", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "immediate", "getImmediate", "()Lkotlinx/coroutines/android/HandlerContext;", "invokeImmediately", "Z", "name", "Ljava/lang/String;", "<init>", "(Landroid/os/Handler;Ljava/lang/String;)V", "(Landroid/os/Handler;Ljava/lang/String;Z)V", "kotlinx-coroutines-android"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/android/HandlerContext.class */
public final class HandlerContext extends HandlerDispatcher implements Delay {
    private volatile HandlerContext _immediate;
    @NotNull

    /* renamed from: g */
    private final HandlerContext f21265g;

    /* renamed from: h */
    private final Handler f21266h;

    /* renamed from: i */
    private final String f21267i;

    /* renamed from: j */
    private final boolean f21268j;

    public HandlerContext(@NotNull Handler handler, @Nullable String str) {
        this(handler, str, false);
    }

    public /* synthetic */ HandlerContext(Handler handler, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i & 2) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private HandlerContext(Handler handler, String str, boolean z) {
        super(null);
        HandlerContext handlerContext = null;
        this.f21266h = handler;
        this.f21267i = str;
        this.f21268j = z;
        this._immediate = z ? this : handlerContext;
        HandlerContext handlerContext2 = this._immediate;
        if (handlerContext2 == null) {
            handlerContext2 = new HandlerContext(this.f21266h, this.f21267i, true);
            this._immediate = handlerContext2;
            Unit unit = Unit.f20447a;
        }
        this.f21265g = handlerContext2;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: V */
    public boolean mo478V(@NotNull CoroutineContext coroutineContext) {
        boolean z = true;
        if (this.f21268j) {
            z = Intrinsics.m1834a(Looper.myLooper(), this.f21266h.getLooper()) ^ true;
        }
        return z;
    }

    @NotNull
    /* renamed from: Z */
    public HandlerContext mo477W() {
        return this.f21265g;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof HandlerContext) && ((HandlerContext) obj).f21266h == this.f21266h;
    }

    @Override // kotlinx.coroutines.Delay
    /* renamed from: h */
    public void mo243h(long j, @NotNull final CancellableContinuation<? super Unit> cancellableContinuation) {
        long e;
        Runnable handlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1 = new Runnable() { // from class: kotlinx.coroutines.android.HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                cancellableContinuation.mo1348s(HandlerContext.this, Unit.f20447a);
            }
        };
        Handler handler = this.f21266h;
        e = RangesKt___RangesKt.m1710e(j, 4611686018427387903L);
        handler.postDelayed(handlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1, e);
        cancellableContinuation.mo1351p(new HandlerContext$scheduleResumeAfterDelay$1(this, handlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1));
    }

    public int hashCode() {
        return System.identityHashCode(this.f21266h);
    }

    @Override // kotlinx.coroutines.android.HandlerDispatcher, kotlinx.coroutines.Delay
    @NotNull
    /* renamed from: q */
    public DisposableHandle mo242q(long j, @NotNull final Runnable runnable) {
        long e;
        Handler handler = this.f21266h;
        e = RangesKt___RangesKt.m1710e(j, 4611686018427387903L);
        handler.postDelayed(runnable, e);
        return new DisposableHandle() { // from class: kotlinx.coroutines.android.HandlerContext$invokeOnTimeout$1
            @Override // kotlinx.coroutines.DisposableHandle
            public void dispose() {
                Handler handler2;
                handler2 = HandlerContext.this.f21266h;
                handler2.removeCallbacks(runnable);
            }
        };
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: t */
    public void mo241t(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        this.f21266h.post(runnable);
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String X = m1126X();
        if (X == null) {
            String str = this.f21267i;
            if (str == null) {
                str = this.f21266h.toString();
            }
            X = str;
            if (this.f21268j) {
                X = str + ".immediate";
            }
        }
        return X;
    }
}
