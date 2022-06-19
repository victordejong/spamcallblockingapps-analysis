package kotlinx.coroutines;

import java.util.concurrent.Executor;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m4298d2 = {"Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;", "executor", "Ljava/util/concurrent/Executor;", "(Ljava/util/concurrent/Executor;)V", "getExecutor", "()Ljava/util/concurrent/Executor;", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.bm */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bm.class */
final class C20209bm extends AbstractC20208bl {

    /* renamed from: b */
    private final Executor f66658b;

    public C20209bm(Executor executor) {
        this.f66658b = executor;
        m984c();
    }

    @Override // kotlinx.coroutines.AbstractC20205bk
    /* renamed from: a */
    public final Executor mo765a() {
        return this.f66658b;
    }
}
