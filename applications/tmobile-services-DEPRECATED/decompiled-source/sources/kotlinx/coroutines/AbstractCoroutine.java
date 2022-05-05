package kotlinx.coroutines;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\b'\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0019\u0012\u0006\u0010:\u001a\u000200\u0012\b\b\u0002\u0010;\u001a\u00020\u0019¢\u0006\u0004\b<\u0010=J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0012\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH��¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0015\u001a\u00020\bH��¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u000bH\u0010¢\u0006\u0004\b\u0016\u0010\rJ\u001f\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00028��H\u0014¢\u0006\u0004\b\u001e\u0010\nJ\u0019\u0010\u001f\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0004¢\u0006\u0004\b\u001f\u0010\nJ\u000f\u0010 \u001a\u00020\bH\u0014¢\u0006\u0004\b \u0010\u0014J\u000f\u0010\"\u001a\u00020\bH��¢\u0006\u0004\b!\u0010\u0014J\u001e\u0010%\u001a\u00020\b2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028��0#ø\u0001��¢\u0006\u0004\b%\u0010\nJO\u0010(\u001a\u00020\b\"\u0004\b\u0001\u0010&2\u0006\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00028\u00012'\u0010,\u001a#\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00060*¢\u0006\u0002\b+ø\u0001��¢\u0006\u0004\b(\u0010-J6\u0010(\u001a\u00020\b2\u0006\u0010(\u001a\u00020'2\u001c\u0010,\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00060.ø\u0001��¢\u0006\u0004\b(\u0010/R\u001f\u00101\u001a\u0002008\u0006@\u0006¢\u0006\u0012\n\u0004\b1\u00102\u0012\u0004\b5\u0010\u0014\u001a\u0004\b3\u00104R\u0016\u00107\u001a\u0002008V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u00104R\u0016\u00108\u001a\u00020\u00198V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b8\u00109R\u0016\u0010:\u001a\u0002008\u0004@\u0005X\u0085\u0004¢\u0006\u0006\n\u0004\b:\u00102\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006>"}, d2 = {"Lkotlinx/coroutines/AbstractCoroutine;", "T", "Lkotlinx/coroutines/Job;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlinx/coroutines/JobSupport;", "", "state", "", "afterResume", "(Ljava/lang/Object;)V", "", "cancellationExceptionMessage", "()Ljava/lang/String;", "", "exception", "handleOnCompletionException$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "handleOnCompletionException", "initParentJob$kotlinx_coroutines_core", "()V", "initParentJob", "nameString$kotlinx_coroutines_core", "nameString", "cause", "", "handled", "onCancelled", "(Ljava/lang/Throwable;Z)V", FirebaseAnalytics.Param.VALUE, "onCompleted", "onCompletionInternal", "onStart", "onStartInternal$kotlinx_coroutines_core", "onStartInternal", "Lkotlin/Result;", "result", "resumeWith", "R", "Lkotlinx/coroutines/CoroutineStart;", "start", "receiver", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "block", "(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/Function1;", "(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;)V", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getContext$annotations", "getCoroutineContext", "coroutineContext", "isActive", "()Z", "parentContext", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/AbstractCoroutine.class */
public abstract class AbstractCoroutine<T> extends JobSupport implements Job, Continuation<T>, CoroutineScope {
    @NotNull

    /* renamed from: g */
    private final CoroutineContext f21074g;
    @JvmField
    @NotNull

    /* renamed from: h */
    protected final CoroutineContext f21075h;

    public AbstractCoroutine(@NotNull CoroutineContext coroutineContext, boolean z) {
        super(z);
        this.f21075h = coroutineContext;
        this.f21074g = coroutineContext.plus(this);
    }

    /* renamed from: P0 */
    protected void mo471P0(@Nullable Object obj) {
        mo472M(obj);
    }

    /* renamed from: Q0 */
    public final void m1387Q0() {
        m1162l0((Job) this.f21075h.get(Job.f21198d));
    }

    /* renamed from: R0 */
    protected void mo823R0(@NotNull Throwable th, boolean z) {
    }

    /* renamed from: S0 */
    protected void mo822S0(T t) {
    }

    /* renamed from: T0 */
    protected void mo834T0() {
    }

    @Override // kotlinx.coroutines.JobSupport
    @NotNull
    /* renamed from: U */
    protected String mo1177U() {
        return DebugStringsKt.m1304a(this) + " was cancelled";
    }

    /* renamed from: U0 */
    public final <R> void m1386U0(@NotNull CoroutineStart coroutineStart, R r, @NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        m1387Q0();
        coroutineStart.invoke(function2, r, this);
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public final CoroutineContext getContext() {
        return this.f21074g;
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: k0 */
    public final void mo1163k0(@NotNull Throwable th) {
        CoroutineExceptionHandlerKt.m1318a(this.f21074g, th);
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(@NotNull Object obj) {
        Object q0 = m1157q0(CompletedExceptionallyKt.m1327b(obj));
        if (q0 != JobSupportKt.f21223b) {
            mo471P0(q0);
        }
    }

    @Override // kotlinx.coroutines.JobSupport
    @NotNull
    /* renamed from: s0 */
    public String mo1090s0() {
        String b = CoroutineContextKt.m1324b(this.f21074g);
        if (b == null) {
            return super.mo1090s0();
        }
        return '\"' + b + "\":" + super.mo1090s0();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    @NotNull
    /* renamed from: u */
    public CoroutineContext mo567u() {
        return this.f21074g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: x0 */
    protected final void mo1152x0(@Nullable Object obj) {
        if (obj instanceof CompletedExceptionally) {
            CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
            mo823R0(completedExceptionally.f21127a, completedExceptionally.m1330a());
            return;
        }
        mo822S0(obj);
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: y0 */
    public final void mo1150y0() {
        mo834T0();
    }
}
