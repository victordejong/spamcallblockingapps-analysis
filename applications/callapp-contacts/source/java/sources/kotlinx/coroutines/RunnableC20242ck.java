package kotlinx.coroutines;

import kotlin.C20128v;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018��2\u00060\u0001j\u0002`\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\u0007H\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, m4298d2 = {"Lkotlinx/coroutines/ResumeUndispatchedRunnable;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CancellableContinuation;)V", "run", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ck */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ck.class */
final class RunnableC20242ck implements Runnable {

    /* renamed from: a */
    private final AbstractC20140af f66698a;

    /* renamed from: b */
    private final AbstractC20308n<C20128v> f66699b;

    /* JADX WARN: Multi-variable type inference failed */
    public RunnableC20242ck(AbstractC20140af abstractC20140af, AbstractC20308n<? super C20128v> abstractC20308n) {
        this.f66698a = abstractC20140af;
        this.f66699b = abstractC20308n;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f66699b.mo791a(this.f66698a, C20128v.f66529a);
    }
}
