package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010��\u001a\u00020\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u001a\u0019\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0007¢\u0006\u0002\b��\u001a@\u0010\u0005\u001a\u0002H\u0006\"\u0004\b��\u0010\u00062'\u0010\u0007\u001a#\b\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\b¢\u0006\u0002\b\fH\u0086@ø\u0001��¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, m815d2 = {"SupervisorJob", "Lkotlinx/coroutines/CompletableJob;", "parent", "Lkotlinx/coroutines/Job;", "SupervisorJob0", "supervisorScope", "R", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/SupervisorKt.class */
public final class SupervisorKt {
    public static final CompletableJob SupervisorJob(Job job) {
        return new SupervisorJobImpl(job);
    }

    public static final <R> Object supervisorScope(AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super R>, ? extends Object> pVar, AbstractC15044d<? super R> dVar) {
        SupervisorCoroutine supervisorCoroutine = new SupervisorCoroutine(dVar.getContext(), dVar);
        Object startUndispatchedOrReturn = UndispatchedKt.startUndispatchedOrReturn(supervisorCoroutine, supervisorCoroutine, pVar);
        if (startUndispatchedOrReturn == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return startUndispatchedOrReturn;
    }
}
