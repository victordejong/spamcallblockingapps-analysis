package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.ScopeCoroutine;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��*\u0004\b��\u0010\u0001*\n\b\u0001\u0010\u0002 ��*\u00028��2\u00020\u00032\u00020\u0004B\u001d\u0012\u0006\u0010\r\u001a\u00020\f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\b\u001a\u00020\u0005H\u0010¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/TimeoutCoroutine;", "U", "T", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/internal/ScopeCoroutine;", "", "nameString$kotlinx_coroutines_core", "()Ljava/lang/String;", "nameString", "", "run", "()V", "", "time", "J", "Lkotlin/coroutines/Continuation;", "uCont", "<init>", "(JLkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/TimeoutCoroutine.class */
final class TimeoutCoroutine<U, T extends U> extends ScopeCoroutine<T> implements Runnable {
    @JvmField

    /* renamed from: j */
    public final long f21256j;

    public TimeoutCoroutine(long j, @NotNull Continuation<? super U> continuation) {
        super(continuation.getContext(), continuation);
        this.f21256j = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        m1181P(TimeoutKt.m1089a(this.f21256j, this));
    }

    @Override // kotlinx.coroutines.AbstractCoroutine, kotlinx.coroutines.JobSupport
    @NotNull
    /* renamed from: s0 */
    public String mo1090s0() {
        return super.mo1090s0() + "(timeMillis=" + this.f21256j + ')';
    }
}
