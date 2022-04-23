package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018��2\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0003H\u0003¢\u0006\u0004\b\n\u0010\u0005R\u001c\u0010\n\u001a\u00020\u00038\u0010@\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\u0005R\u0016\u0010\u000e\u001a\u00020\u00038P@\u0010X\u0090\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u0005¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/CompletableJob;", "Lkotlinx/coroutines/JobSupport;", "", "complete", "()Z", "", "exception", "completeExceptionally", "(Ljava/lang/Throwable;)Z", "handlesException", "Z", "getHandlesException$kotlinx_coroutines_core", "getOnCancelComplete$kotlinx_coroutines_core", "onCancelComplete", "Lkotlinx/coroutines/Job;", "parent", "<init>", "(Lkotlinx/coroutines/Job;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/JobImpl.class */
public class JobImpl extends JobSupport implements CompletableJob {

    /* renamed from: g */
    private final boolean f21201g = m1219P0();

    public JobImpl(@Nullable Job job) {
        super(true);
        m1162l0(job);
    }

    /* renamed from: P0 */
    private final boolean m1219P0() {
        ChildHandle h0 = m1165h0();
        ChildHandle childHandle = h0;
        if (!(h0 instanceof ChildHandleNode)) {
            childHandle = null;
        }
        ChildHandleNode childHandleNode = (ChildHandleNode) childHandle;
        if (childHandleNode == null) {
            return false;
        }
        JobSupport jobSupport = (JobSupport) childHandleNode.f21203i;
        if (jobSupport == null) {
            return false;
        }
        while (!jobSupport.mo1168e0()) {
            ChildHandle h02 = jobSupport.m1165h0();
            ChildHandle childHandle2 = h02;
            if (!(h02 instanceof ChildHandleNode)) {
                childHandle2 = null;
            }
            ChildHandleNode childHandleNode2 = (ChildHandleNode) childHandle2;
            if (childHandleNode2 == null) {
                return false;
            }
            jobSupport = (JobSupport) childHandleNode2.f21203i;
            if (jobSupport == null) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: e0 */
    public boolean mo1168e0() {
        return this.f21201g;
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: f0 */
    public boolean mo1167f0() {
        return true;
    }
}
