package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.channels.ReceiveChannel;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$2"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2.class */
public final class FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2 extends AbstractC15078m implements AbstractC15122p<C14989s, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ FlowCollector $downstream$inlined;
    public final /* synthetic */ C15164z $lastValue$inlined;
    public final /* synthetic */ ReceiveChannel $ticker$inlined;
    public final /* synthetic */ ReceiveChannel $values$inlined;
    public Object L$0;
    public Object L$1;
    public int label;
    public C14989s p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2(AbstractC15044d dVar, ReceiveChannel receiveChannel, ReceiveChannel receiveChannel2, C15164z zVar, FlowCollector flowCollector) {
        super(2, dVar);
        this.$values$inlined = receiveChannel;
        this.$ticker$inlined = receiveChannel2;
        this.$lastValue$inlined = zVar;
        this.$downstream$inlined = flowCollector;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2 flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2 = new FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2(dVar, this.$values$inlined, this.$ticker$inlined, this.$lastValue$inlined, this.$downstream$inlined);
        flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2.p$0 = (C14989s) obj;
        return flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(C14989s sVar, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2) create(sVar, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r6 = r0
            r0 = r4
            int r0 = r0.label
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x002c
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0022
            r0 = r4
            java.lang.Object r0 = r0.L$0
            l.s r0 = (p626l.C14989s) r0
            r8 = r0
            r0 = r5
            p626l.C14982l.m653a(r0)
            goto L_0x0084
        L_0x0022:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x002c:
            r0 = r5
            p626l.C14982l.m653a(r0)
            r0 = r4
            l.s r0 = r0.p$0
            r9 = r0
            r0 = r4
            l.z.d.z r0 = r0.$lastValue$inlined
            r10 = r0
            r0 = r10
            T r0 = r0.f33152a
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0088
            r0 = 0
            r5 = r0
            r0 = r10
            r1 = 0
            r0.f33152a = r1
            r0 = r4
            kotlinx.coroutines.flow.FlowCollector r0 = r0.$downstream$inlined
            r10 = r0
            r0 = r8
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.flow.internal.NullSurrogateKt.NULL
            if (r0 != r1) goto L_0x0061
            goto L_0x0064
        L_0x0061:
            r0 = r8
            r5 = r0
        L_0x0064:
            r0 = r4
            r1 = r9
            r0.L$0 = r1
            r0 = r4
            r1 = r8
            r0.L$1 = r1
            r0 = r4
            r1 = 1
            r0.label = r1
            r0 = r10
            r1 = r5
            r2 = r4
            java.lang.Object r0 = r0.emit(r1, r2)
            r1 = r6
            if (r0 != r1) goto L_0x0084
            r0 = r6
            return r0
        L_0x0084:
            l.s r0 = p626l.C14989s.f33022a
            return r0
        L_0x0088:
            l.s r0 = p626l.C14989s.f33022a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
