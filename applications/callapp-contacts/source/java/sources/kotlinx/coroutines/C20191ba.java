package kotlinx.coroutines;

import java.util.concurrent.Future;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lkotlinx/coroutines/DisposableFutureHandle;", "Lkotlinx/coroutines/DisposableHandle;", "future", "Ljava/util/concurrent/Future;", "(Ljava/util/concurrent/Future;)V", "dispose", "", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ba */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ba.class */
final class C20191ba implements AbstractC20192bb {

    /* renamed from: a */
    private final Future<?> f66637a;

    public C20191ba(Future<?> future) {
        this.f66637a = future;
    }

    @Override // kotlinx.coroutines.AbstractC20192bb
    /* renamed from: a */
    public final void mo918a() {
        this.f66637a.cancel(false);
    }

    public final String toString() {
        return "DisposableFutureHandle[" + this.f66637a + ']';
    }
}
