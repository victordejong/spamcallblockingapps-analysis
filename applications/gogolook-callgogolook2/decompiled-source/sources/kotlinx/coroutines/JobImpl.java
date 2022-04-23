package kotlinx.coroutines;

import kotlin.Metadata;
import p626l.C14989s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0003\n��\b\u0010\u0018��2\u00020\u00012\u00020\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0003R\u0014\u0010\u0006\u001a\u00020\u0007X\u0090\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\t¨\u0006\u0010"}, m815d2 = {"Lkotlinx/coroutines/JobImpl;", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableJob;", "parent", "Lkotlinx/coroutines/Job;", "(Lkotlinx/coroutines/Job;)V", "handlesException", "", "getHandlesException$kotlinx_coroutines_core", "()Z", "onCancelComplete", "getOnCancelComplete$kotlinx_coroutines_core", "complete", "completeExceptionally", "exception", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/JobImpl.class */
public class JobImpl extends JobSupport implements CompletableJob {
    public final boolean handlesException = handlesException();

    public JobImpl(Job job) {
        super(true);
        initParentJobInternal$kotlinx_coroutines_core(job);
    }

    private final boolean handlesException() {
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        ChildHandle childHandle = parentHandle$kotlinx_coroutines_core;
        if (!(parentHandle$kotlinx_coroutines_core instanceof ChildHandleNode)) {
            childHandle = null;
        }
        ChildHandleNode childHandleNode = (ChildHandleNode) childHandle;
        if (childHandleNode == null) {
            return false;
        }
        JobSupport jobSupport = (JobSupport) childHandleNode.job;
        if (jobSupport == null) {
            return false;
        }
        while (!jobSupport.getHandlesException$kotlinx_coroutines_core()) {
            ChildHandle parentHandle$kotlinx_coroutines_core2 = jobSupport.getParentHandle$kotlinx_coroutines_core();
            ChildHandle childHandle2 = parentHandle$kotlinx_coroutines_core2;
            if (!(parentHandle$kotlinx_coroutines_core2 instanceof ChildHandleNode)) {
                childHandle2 = null;
            }
            ChildHandleNode childHandleNode2 = (ChildHandleNode) childHandle2;
            if (childHandleNode2 == null) {
                return false;
            }
            jobSupport = (JobSupport) childHandleNode2.job;
            if (jobSupport == null) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlinx.coroutines.CompletableJob
    public boolean complete() {
        return makeCompleting$kotlinx_coroutines_core(C14989s.f33022a);
    }

    @Override // kotlinx.coroutines.CompletableJob
    public boolean completeExceptionally(Throwable th) {
        return makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(th, false, 2, null));
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean getHandlesException$kotlinx_coroutines_core() {
        return this.handlesException;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }
}
