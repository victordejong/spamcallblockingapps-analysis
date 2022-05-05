package kotlinx.coroutines;

import kotlin.Metadata;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a\u0011\u0010��\u001a\u00020\u0001H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0002\u001a\f\u0010\u0003\u001a\u00020\u0001*\u00020\u0004H��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0005"}, m815d2 = {"yield", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkCompletion", "Lkotlin/coroutines/CoroutineContext;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/YieldKt.class */
public final class YieldKt {
    public static final void checkCompletion(AbstractC15049g gVar) {
        Job job = (Job) gVar.get(Job.Key);
        if (job != null && !job.isActive()) {
            throw job.getCancellationException();
        }
    }

    public static final Object yield(AbstractC15044d<? super C14989s> dVar) {
        Object obj;
        AbstractC15049g context = dVar.getContext();
        checkCompletion(context);
        AbstractC15044d a = C15059b.m481a(dVar);
        AbstractC15044d dVar2 = a;
        if (!(a instanceof DispatchedContinuation)) {
            dVar2 = null;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) dVar2;
        if (dispatchedContinuation != null) {
            if (dispatchedContinuation.dispatcher.isDispatchNeeded(context)) {
                dispatchedContinuation.dispatchYield$kotlinx_coroutines_core(context, C14989s.f33022a);
            } else {
                YieldContext yieldContext = new YieldContext();
                dispatchedContinuation.dispatchYield$kotlinx_coroutines_core(context.plus(yieldContext), C14989s.f33022a);
                if (yieldContext.dispatcherWasUnconfined) {
                    obj = DispatchedContinuationKt.yieldUndispatched(dispatchedContinuation) ? C15064c.m478a() : C14989s.f33022a;
                }
            }
            obj = C15064c.m478a();
        } else {
            obj = C14989s.f33022a;
        }
        if (obj == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return obj == C15064c.m478a() ? obj : C14989s.f33022a;
    }
}
