package kotlinx.coroutines;

import java.util.concurrent.Future;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/DisposableFutureHandle;", "Lkotlinx/coroutines/DisposableHandle;", "future", "Ljava/util/concurrent/Future;", "(Ljava/util/concurrent/Future;)V", "dispose", "", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ba.class */
final class ba implements bb {

    /* renamed from: a  reason: collision with root package name */
    private final Future<?> f38730a;

    public ba(Future<?> future) {
        this.f38730a = future;
    }

    @Override // kotlinx.coroutines.bb
    public final void a() {
        this.f38730a.cancel(false);
    }

    public final String toString() {
        return "DisposableFutureHandle[" + this.f38730a + ']';
    }
}
