package androidx.work;

import androidx.work.Operation;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuationImpl;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001d\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\u0086Hø\u0001��¢\u0006\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0005"}, m815d2 = {"await", "Landroidx/work/Operation$State$SUCCESS;", "kotlin.jvm.PlatformType", "Landroidx/work/Operation;", "(Landroidx/work/Operation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "work-runtime-ktx_release"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes-dex2jar.jar:androidx/work/OperationKt.class */
public final class OperationKt {
    public static final Object await(Operation operation, AbstractC15044d<? super Operation.State.SUCCESS> dVar) {
        Operation.State.SUCCESS success;
        AbstractFutureC9382a<Operation.State.SUCCESS> result = operation.getResult();
        C15149k.m383a((Object) result, "result");
        if (result.isDone()) {
            try {
                success = result.get();
            } catch (ExecutionException e) {
                e = e;
                Throwable cause = e.getCause();
                if (cause != null) {
                    e = cause;
                }
                throw e;
            }
        } else {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
            result.addListener(new OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1(cancellableContinuationImpl, result), DirectExecutor.INSTANCE);
            Object result2 = cancellableContinuationImpl.getResult();
            success = result2;
            if (result2 == C15064c.m478a()) {
                C15072h.m462c(dVar);
                success = result2;
            }
        }
        return success;
    }

    public static final Object await$$forInline(Operation operation, AbstractC15044d dVar) {
        Object obj;
        AbstractFutureC9382a<Operation.State.SUCCESS> result = operation.getResult();
        C15149k.m383a((Object) result, "result");
        if (result.isDone()) {
            try {
                obj = result.get();
            } catch (ExecutionException e) {
                e = e;
                Throwable cause = e.getCause();
                if (cause != null) {
                    e = cause;
                }
                throw e;
            }
        } else {
            C15148j.m388c(0);
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
            result.addListener(new OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1(cancellableContinuationImpl, result), DirectExecutor.INSTANCE);
            obj = cancellableContinuationImpl.getResult();
            if (obj == C15064c.m478a()) {
                C15072h.m462c(dVar);
            }
            C15148j.m388c(1);
        }
        return obj;
    }
}
