package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\b \u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/CompletionHandlerBase;", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/Incomplete;", "()V", "isActive", "", "()Z", "job", "Lkotlinx/coroutines/JobSupport;", "getJob", "()Lkotlinx/coroutines/JobSupport;", "setJob", "(Lkotlinx/coroutines/JobSupport;)V", "list", "Lkotlinx/coroutines/NodeList;", "getList", "()Lkotlinx/coroutines/NodeList;", "dispose", "", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bz.class */
public abstract class bz extends ab implements bb, bq {

    /* renamed from: c  reason: collision with root package name */
    public ca f38761c;

    @Override // kotlinx.coroutines.bb
    public final void a() {
        Object p;
        ca caVar = this.f38761c;
        if (caVar == null) {
            p.a("job");
        }
        do {
            p = caVar.p();
            if (p instanceof bz) {
                if (p != this) {
                    return;
                }
            } else if ((p instanceof bq) && ((bq) p).ax_() != null) {
                ay_();
                return;
            } else {
                return;
            }
        } while (!ca.f38768d.compareAndSet(caVar, p, cb.b()));
    }

    @Override // kotlinx.coroutines.bq
    public final cf ax_() {
        return null;
    }

    @Override // kotlinx.coroutines.bq
    public final boolean b() {
        return true;
    }

    public final ca c() {
        ca caVar = this.f38761c;
        if (caVar == null) {
            p.a("job");
        }
        return caVar;
    }

    @Override // kotlinx.coroutines.internal.l
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[job@");
        ca caVar = this.f38761c;
        if (caVar == null) {
            p.a("job");
        }
        sb.append(Integer.toHexString(System.identityHashCode(caVar)));
        sb.append(']');
        return sb.toString();
    }
}
