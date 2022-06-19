package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.C20159ao;
import kotlinx.coroutines.flow.AbstractC20258a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n��\b��\u0018��2\u00060\u0001j\u0002`\u0002B\u0011\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016R\u0015\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, m4298d2 = {"Lkotlinx/coroutines/flow/internal/AbortFlowException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "owner", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;)V", "getOwner", "()Lkotlinx/coroutines/flow/FlowCollector;", "fillInStackTrace", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/flow/internal/AbortFlowException.class */
public final class AbortFlowException extends CancellationException {

    /* renamed from: a */
    private final AbstractC20258a<?> f66714a;

    public AbortFlowException(AbstractC20258a<?> abstractC20258a) {
        super("Flow was aborted, no more elements needed");
        this.f66714a = abstractC20258a;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        if (C20159ao.m1082b()) {
            return super.fillInStackTrace();
        }
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
