package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.C20128v;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n��\b��\u0018��2\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0096\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lkotlinx/coroutines/ChildHandleNode;", "Lkotlinx/coroutines/JobCancellingNode;", "Lkotlinx/coroutines/ChildHandle;", "childJob", "Lkotlinx/coroutines/ChildJob;", "(Lkotlinx/coroutines/ChildJob;)V", "childCancelled", "", "cause", "", "invoke", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.u */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/u.class */
public final class C20315u extends AbstractC20221bw implements AbstractC20314t {

    /* renamed from: a */
    public final AbstractC20316v f66790a;

    public C20315u(AbstractC20316v abstractC20316v) {
        this.f66790a = abstractC20316v;
    }

    @Override // kotlinx.coroutines.AbstractC20136ab
    /* renamed from: a */
    public final void mo768a(Throwable th) {
        this.f66790a.mo766a((AbstractC20240ci) m980c());
    }

    @Override // kotlinx.coroutines.AbstractC20314t
    /* renamed from: b */
    public final boolean mo767b(Throwable th) {
        C20228ca c = m980c();
        if (th instanceof CancellationException) {
            return true;
        }
        return c.m948e(th) && c.av_();
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ C20128v invoke(Throwable th) {
        mo768a(th);
        return C20128v.f66529a;
    }
}
