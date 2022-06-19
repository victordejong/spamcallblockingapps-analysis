package kotlinx.coroutines;

import kotlin.Metadata;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0003\n��\b\u0010\u0018��2\u00020\u00012\u00020\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0003R\u0014\u0010\u0006\u001a\u00020\u0007X\u0090\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\t¨\u0006\u0010"}, m4298d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableJob;", "parent", "Lkotlinx/coroutines/Job;", "(Lkotlinx/coroutines/Job;)V", "handlesException", "", "getHandlesException$kotlinx_coroutines_core", "()Z", "onCancelComplete", "getOnCancelComplete$kotlinx_coroutines_core", EventConstants.COMPLETE, "completeExceptionally", "exception", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.bx */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bx.class */
public final class C20222bx extends C20228ca implements AbstractC20320x {

    /* renamed from: a */
    private final boolean f66668a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20222bx(AbstractC20218bv abstractC20218bv) {
        super(true);
        boolean z = true;
        m966a(abstractC20218bv);
        AbstractC20314t o = m936o();
        C20315u c20315u = (C20315u) (!(o instanceof C20315u) ? null : o);
        if (c20315u != null) {
            C20228ca c = c20315u.m980c();
            C20228ca c20228ca = c;
            if (c != null) {
                while (!c20228ca.av_()) {
                    AbstractC20314t m936o = c20228ca.m936o();
                    C20315u c20315u2 = (C20315u) (!(m936o instanceof C20315u) ? null : m936o);
                    if (c20315u2 != null) {
                        C20228ca c2 = c20315u2.m980c();
                        c20228ca = c2;
                        if (c2 == null) {
                        }
                    }
                }
                this.f66668a = z;
            }
        }
        z = false;
        this.f66668a = z;
    }

    @Override // kotlinx.coroutines.C20228ca
    public final boolean au_() {
        return true;
    }

    @Override // kotlinx.coroutines.C20228ca
    public final boolean av_() {
        return this.f66668a;
    }
}
