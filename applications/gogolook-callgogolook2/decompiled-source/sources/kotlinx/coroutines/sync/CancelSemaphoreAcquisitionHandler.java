package kotlinx.coroutines.sync;

import gogolook.callgogolook2.gson.UserProfile;
import kotlin.Metadata;
import kotlinx.coroutines.CancelHandler;
import p626l.C14989s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lkotlinx/coroutines/sync/CancelSemaphoreAcquisitionHandler;", "Lkotlinx/coroutines/CancelHandler;", "semaphore", "Lkotlinx/coroutines/sync/SemaphoreImpl;", "segment", "Lkotlinx/coroutines/sync/SemaphoreSegment;", "index", "", "(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlinx/coroutines/sync/SemaphoreSegment;I)V", "invoke", "", "cause", "", "toString", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/sync/CancelSemaphoreAcquisitionHandler.class */
public final class CancelSemaphoreAcquisitionHandler extends CancelHandler {
    public final int index;
    public final SemaphoreSegment segment;
    public final SemaphoreImpl semaphore;

    public CancelSemaphoreAcquisitionHandler(SemaphoreImpl semaphoreImpl, SemaphoreSegment semaphoreSegment, int i) {
        this.semaphore = semaphoreImpl;
        this.segment = semaphoreSegment;
        this.index = i;
    }

    @Override // p626l.p641z.p642c.AbstractC15118l
    public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
        invoke2(th);
        return C14989s.f33022a;
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public void invoke2(Throwable th) {
        if (this.semaphore.incPermits() < 0 && !this.segment.cancel(this.index)) {
            this.semaphore.resumeNextFromQueue$kotlinx_coroutines_core();
        }
    }

    public String toString() {
        return "CancelSemaphoreAcquisitionHandler[" + this.semaphore + UserProfile.CARD_CATE_SEPARATOR + this.segment + UserProfile.CARD_CATE_SEPARATOR + this.index + ']';
    }
}
