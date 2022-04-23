package androidx.core.p005os;

import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15107a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m815d2 = {"<anonymous>", "", "run"}, m814k = 3, m813mv = {1, 1, 15})
/* renamed from: androidx.core.os.HandlerKt$postAtTime$runnable$1 */
/* loaded from: classes-dex2jar.jar:androidx/core/os/HandlerKt$postAtTime$runnable$1.class */
public final class HandlerKt$postAtTime$runnable$1 implements Runnable {
    public final /* synthetic */ AbstractC15107a $action;

    public HandlerKt$postAtTime$runnable$1(AbstractC15107a aVar) {
        this.$action = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.$action.invoke();
    }
}
