package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\n\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u001d\u0012\b\u0010!\u001a\u0004\u0018\u00010 \u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u001d¢\u0006\u0004\b(\u0010)J\u001b\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096@ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\b2\n\u0010\f\u001a\u00060\nj\u0002`\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00032\n\u0010\f\u001a\u00060\nj\u0002`\u000bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J%\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00032\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010!\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010#\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, d2 = {"Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;", "Lkotlinx/coroutines/Delay;", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "", "time", "", "delay", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)Ljava/lang/Void;", "timeMillis", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnTimeout", "(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;", "", "isDispatchNeeded", "(Lkotlin/coroutines/CoroutineContext;)Z", "missing", "()Ljava/lang/Void;", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "(JLkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Void;", "", "toString", "()Ljava/lang/String;", "", "cause", "Ljava/lang/Throwable;", "errorHint", "Ljava/lang/String;", "getImmediate", "()Lkotlinx/coroutines/MainCoroutineDispatcher;", "immediate", "<init>", "(Ljava/lang/Throwable;Ljava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/MissingMainCoroutineDispatcher.class */
public final class MissingMainCoroutineDispatcher extends MainCoroutineDispatcher implements Delay {

    /* renamed from: g */
    private final Throwable f23941g;

    /* renamed from: h */
    private final String f23942h;

    public MissingMainCoroutineDispatcher(@Nullable Throwable th, @Nullable String str) {
        this.f23941g = th;
        this.f23942h = str;
    }

    public /* synthetic */ MissingMainCoroutineDispatcher(Throwable th, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i & 2) != 0 ? null : str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x003a, code lost:
        if (r8 != null) goto L_0x0043;
     */
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Void m475Z() {
        /*
            r5 = this;
            r0 = r5
            java.lang.Throwable r0 = r0.f23941g
            if (r0 == 0) goto L_0x0059
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Module with the Main dispatcher had failed to initialize"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.f23942h
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0040
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = ". "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0040
            goto L_0x0043
        L_0x0040:
            java.lang.String r0 = ""
            r8 = r0
        L_0x0043:
            r0 = r6
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r3 = r5
            java.lang.Throwable r3 = r3.f23941g
            r1.<init>(r2, r3)
            throw r0
        L_0x0059:
            java.lang.Void r0 = kotlinx.coroutines.internal.MainDispatchersKt.m480c()
            r0 = 0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.MissingMainCoroutineDispatcher.m475Z():java.lang.Void");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: V */
    public boolean mo478V(@NotNull CoroutineContext coroutineContext) {
        m475Z();
        throw null;
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher
    @NotNull
    /* renamed from: W */
    public MainCoroutineDispatcher mo477W() {
        return this;
    }

    @NotNull
    /* renamed from: Y */
    public Void m476Y(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        m475Z();
        throw null;
    }

    @NotNull
    /* renamed from: b0 */
    public Void m474b0(long j, @NotNull CancellableContinuation<? super Unit> cancellableContinuation) {
        m475Z();
        throw null;
    }

    @Override // kotlinx.coroutines.Delay
    /* renamed from: h */
    public /* bridge */ /* synthetic */ void mo243h(long j, CancellableContinuation cancellableContinuation) {
        m474b0(j, cancellableContinuation);
        throw null;
    }

    @Override // kotlinx.coroutines.Delay
    @NotNull
    /* renamed from: q */
    public DisposableHandle mo242q(long j, @NotNull Runnable runnable) {
        m475Z();
        throw null;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: t */
    public /* bridge */ /* synthetic */ void mo241t(CoroutineContext coroutineContext, Runnable runnable) {
        m476Y(coroutineContext, runnable);
        throw null;
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Dispatchers.Main[missing");
        if (this.f23941g != null) {
            str = ", cause=" + this.f23941g;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(']');
        return sb.toString();
    }
}
