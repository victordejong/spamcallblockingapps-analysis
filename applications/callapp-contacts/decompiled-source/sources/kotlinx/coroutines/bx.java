package kotlinx.coroutines;

import kotlin.Metadata;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0003\n��\b\u0010\u0018��2\u00020\u00012\u00020\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0003R\u0014\u0010\u0006\u001a\u00020\u0007X\u0090\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\t¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableJob;", "parent", "Lkotlinx/coroutines/Job;", "(Lkotlinx/coroutines/Job;)V", "handlesException", "", "getHandlesException$kotlinx_coroutines_core", "()Z", "onCancelComplete", "getOnCancelComplete$kotlinx_coroutines_core", EventConstants.COMPLETE, "completeExceptionally", "exception", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bx.class */
public final class bx extends ca implements x {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f38760a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bx(bv bvVar) {
        super(true);
        boolean z = true;
        a(bvVar);
        t o = o();
        u uVar = (u) (!(o instanceof u) ? null : o);
        if (uVar != null) {
            ca c2 = uVar.c();
            ca caVar = c2;
            if (c2 != null) {
                while (!caVar.av_()) {
                    t o2 = caVar.o();
                    u uVar2 = (u) (!(o2 instanceof u) ? null : o2);
                    if (uVar2 != null) {
                        ca c3 = uVar2.c();
                        caVar = c3;
                        if (c3 == null) {
                        }
                    }
                }
                this.f38760a = z;
            }
        }
        z = false;
        this.f38760a = z;
    }

    @Override // kotlinx.coroutines.ca
    public final boolean au_() {
        return true;
    }

    @Override // kotlinx.coroutines.ca
    public final boolean av_() {
        return this.f38760a;
    }
}
