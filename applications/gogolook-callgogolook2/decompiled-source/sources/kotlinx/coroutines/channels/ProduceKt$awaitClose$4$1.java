package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuation;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, m815d2 = {"<anonymous>", "", "it", "", "invoke"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ProduceKt$awaitClose$4$1.class */
public final class ProduceKt$awaitClose$4$1 extends AbstractC15150l implements AbstractC15118l<Throwable, C14989s> {
    public final /* synthetic */ CancellableContinuation $cont;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProduceKt$awaitClose$4$1(CancellableContinuation cancellableContinuation) {
        super(1);
        this.$cont = cancellableContinuation;
    }

    @Override // p626l.p641z.p642c.AbstractC15118l
    public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
        invoke2(th);
        return C14989s.f33022a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        CancellableContinuation cancellableContinuation = this.$cont;
        C14989s sVar = C14989s.f33022a;
        C14979k.C14980a aVar = C14979k.f33013a;
        C14979k.m657a(sVar);
        cancellableContinuation.resumeWith(sVar);
    }
}
