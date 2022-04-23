package kotlinx.coroutines.internal;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.c.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.au;
import kotlinx.coroutines.bb;
import kotlinx.coroutines.ce;
import kotlinx.coroutines.n;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0001\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u00012\u00020\u0002B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0096@ø\u0001��¢\u0006\u0002\u0010\u000fJ\u001c\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0016J$\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000e2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u00152\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u001b\u001a\u00020\fH\u0002J\u001e\u0010\u001c\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u000e2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\b\u0010 \u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\b\u001a\u00020\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;", "Lkotlinx/coroutines/MainCoroutineDispatcher;", "Lkotlinx/coroutines/Delay;", "cause", "", "errorHint", "", "(Ljava/lang/Throwable;Ljava/lang/String;)V", "immediate", "getImmediate", "()Lkotlinx/coroutines/MainCoroutineDispatcher;", "delay", "", "time", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dispatch", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "isDispatchNeeded", "", "missing", "scheduleResumeAfterDelay", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "", "toString", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/q.class */
public final class q extends ce implements au {

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f38838b;

    /* renamed from: d  reason: collision with root package name */
    private final String f38839d;

    public q(Throwable th, String str) {
        this.f38838b = th;
        this.f38839d = str;
    }

    public /* synthetic */ q(Throwable th, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i & 2) != 0 ? null : str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
        if (r0 == null) goto L_0x002a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Void d() {
        /*
            r5 = this;
            r0 = r5
            java.lang.Throwable r0 = r0.f38838b
            if (r0 == 0) goto L_0x0046
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Module with the Main dispatcher had failed to initialize"
            r1.<init>(r2)
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.f38839d
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x002a
            java.lang.String r0 = ". "
            r1 = r7
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r0 = r0.concat(r1)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            if (r0 != 0) goto L_0x002d
        L_0x002a:
            java.lang.String r0 = ""
            r7 = r0
        L_0x002d:
            r0 = r6
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r3 = r5
            java.lang.Throwable r3 = r3.f38838b
            r1.<init>(r2, r3)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L_0x0046:
            java.lang.Void r0 = kotlinx.coroutines.internal.p.a()
            kotlin.KotlinNothingValueException r0 = new kotlin.KotlinNothingValueException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.q.d():java.lang.Void");
    }

    @Override // kotlinx.coroutines.au
    public final bb a(long j, Runnable runnable, f fVar) {
        d();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.ce
    public final ce a() {
        return this;
    }

    @Override // kotlinx.coroutines.au
    public final /* synthetic */ void a(long j, n nVar) {
        d();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.af
    public final /* synthetic */ void a(f fVar, Runnable runnable) {
        d();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.af
    public final boolean b() {
        d();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.ce, kotlinx.coroutines.af
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dispatchers.Main[missing");
        if (this.f38838b != null) {
            str = ", cause=" + this.f38838b;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(']');
        return sb.toString();
    }
}
