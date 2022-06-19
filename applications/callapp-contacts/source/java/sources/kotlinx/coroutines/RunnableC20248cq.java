package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.p521c.AbstractC18332d;
import kotlinx.coroutines.internal.C20294t;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0002\u0018��*\u0004\b��\u0010\u0001*\n\b\u0001\u0010\u0002 ��*\u0002H\u00012\b\u0012\u0004\u0012\u0002H\u00020\u00032\u00060\u0004j\u0002`\u0005B\u001b\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\t¢\u0006\u0002\u0010\nJ\r\u0010\u000b\u001a\u00020\fH\u0010¢\u0006\u0002\b\rJ\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lkotlinx/coroutines/TimeoutCoroutine;", "U", "T", "Lkotlinx/coroutines/internal/ScopeCoroutine;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "time", "", "uCont", "Lkotlin/coroutines/Continuation;", "(JLkotlin/coroutines/Continuation;)V", "nameString", "", "nameString$kotlinx_coroutines_core", "run", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.cq */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cq.class */
public final class RunnableC20248cq<U, T extends U> extends C20294t<T> implements Runnable {

    /* renamed from: e */
    public final long f66703e;

    public RunnableC20248cq(long j, AbstractC18332d<? super U> abstractC18332d) {
        super(abstractC18332d.mo787b(), abstractC18332d);
        this.f66703e = j;
    }

    @Override // kotlinx.coroutines.AbstractC20132a, kotlinx.coroutines.C20228ca
    /* renamed from: j */
    public final String mo907j() {
        return super.mo907j() + "(timeMillis=" + this.f66703e + ')';
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j = this.f66703e;
        m956b((Throwable) new TimeoutCancellationException("Timed out waiting for " + j + " ms", this));
    }
}
