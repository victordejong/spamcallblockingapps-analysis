package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n��\b��\u0018��2\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0096\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/ChildHandleNode;", "Lkotlinx/coroutines/JobCancellingNode;", "Lkotlinx/coroutines/ChildHandle;", "childJob", "Lkotlinx/coroutines/ChildJob;", "(Lkotlinx/coroutines/ChildJob;)V", "childCancelled", "", "cause", "", "invoke", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/u.class */
public final class u extends bw implements t {

    /* renamed from: a  reason: collision with root package name */
    public final v f38859a;

    public u(v vVar) {
        this.f38859a = vVar;
    }

    @Override // kotlinx.coroutines.ab
    public final void a(Throwable th) {
        this.f38859a.a((ci) c());
    }

    @Override // kotlinx.coroutines.t
    public final boolean b(Throwable th) {
        ca c2 = c();
        if (th instanceof CancellationException) {
            return true;
        }
        return c2.e(th) && c2.av_();
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ v invoke(Throwable th) {
        a(th);
        return v.f38654a;
    }
}
