package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\b \u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, m4298d2 = {"Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/CompletionHandlerBase;", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/Incomplete;", "()V", "isActive", "", "()Z", "job", "Lkotlinx/coroutines/JobSupport;", "getJob", "()Lkotlinx/coroutines/JobSupport;", "setJob", "(Lkotlinx/coroutines/JobSupport;)V", "list", "Lkotlinx/coroutines/NodeList;", "getList", "()Lkotlinx/coroutines/NodeList;", "dispose", "", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.bz */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bz.class */
public abstract class AbstractC20224bz extends AbstractC20136ab implements AbstractC20192bb, AbstractC20213bq {

    /* renamed from: c */
    public C20228ca f66669c;

    @Override // kotlinx.coroutines.AbstractC20192bb
    /* renamed from: a */
    public final void mo918a() {
        Object m935p;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        C20195be c20195be;
        C20228ca c20228ca = this.f66669c;
        if (c20228ca == null) {
            C18524p.m3848a("job");
        }
        do {
            m935p = c20228ca.m935p();
            if (!(m935p instanceof AbstractC20224bz)) {
                if (!(m935p instanceof AbstractC20213bq) || ((AbstractC20213bq) m935p).ax_() == null) {
                    return;
                }
                ay_();
                return;
            } else if (m935p != this) {
                return;
            } else {
                atomicReferenceFieldUpdater = C20228ca.f66677d;
                c20195be = C20233cb.f66693g;
            }
        } while (!atomicReferenceFieldUpdater.compareAndSet(c20228ca, m935p, c20195be));
    }

    @Override // kotlinx.coroutines.AbstractC20213bq
    public final C20237cf ax_() {
        return null;
    }

    @Override // kotlinx.coroutines.AbstractC20213bq
    /* renamed from: b */
    public final boolean mo919b() {
        return true;
    }

    /* renamed from: c */
    public final C20228ca m980c() {
        C20228ca c20228ca = this.f66669c;
        if (c20228ca == null) {
            C18524p.m3848a("job");
        }
        return c20228ca;
    }

    @Override // kotlinx.coroutines.internal.C20283l
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[job@");
        C20228ca c20228ca = this.f66669c;
        if (c20228ca == null) {
            C18524p.m3848a("job");
        }
        sb.append(Integer.toHexString(System.identityHashCode(c20228ca)));
        sb.append(']');
        return sb.toString();
    }
}
