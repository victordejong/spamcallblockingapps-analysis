package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlinx.coroutines.channels.ReceiveChannel;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15162x;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, m815d2 = {"<anonymous>", "", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$onReceive$1", "kotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$$special$$inlined$onReceive$1"}, m814k = 3, m813mv = {1, 1, 16})
/* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2 */
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2.class */
public final class C14864x2d5a9c56 extends AbstractC15078m implements AbstractC15122p<Object, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ ReceiveChannel[] $channels$inlined;
    public final /* synthetic */ int $i$inlined;
    public final /* synthetic */ Boolean[] $isClosed$inlined;
    public final /* synthetic */ Object[] $latestValues$inlined;
    public final /* synthetic */ C15162x $nonClosed$inlined;
    public final /* synthetic */ AbstractC15122p $onReceive;
    public final /* synthetic */ C15162x $remainingNulls$inlined;
    public final /* synthetic */ int $size$inlined;
    public Object L$0;
    public int label;
    public Object p$0;
    public final /* synthetic */ CombineKt$combineInternal$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14864x2d5a9c56(AbstractC15122p pVar, AbstractC15044d dVar, int i, CombineKt$combineInternal$2 combineKt$combineInternal$2, int i2, Boolean[] boolArr, ReceiveChannel[] receiveChannelArr, Object[] objArr, C15162x xVar, C15162x xVar2) {
        super(2, dVar);
        this.$onReceive = pVar;
        this.$i$inlined = i;
        this.this$0 = combineKt$combineInternal$2;
        this.$size$inlined = i2;
        this.$isClosed$inlined = boolArr;
        this.$channels$inlined = receiveChannelArr;
        this.$latestValues$inlined = objArr;
        this.$remainingNulls$inlined = xVar;
        this.$nonClosed$inlined = xVar2;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C14864x2d5a9c56 combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2 = new C14864x2d5a9c56(this.$onReceive, dVar, this.$i$inlined, this.this$0, this.$size$inlined, this.$isClosed$inlined, this.$channels$inlined, this.$latestValues$inlined, this.$remainingNulls$inlined, this.$nonClosed$inlined);
        combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2.p$0 = obj;
        return combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((C14864x2d5a9c56) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            Object obj2 = this.p$0;
            if (obj2 == null) {
                this.$isClosed$inlined[this.$i$inlined] = C15066b.m474a(true);
                C15162x xVar = this.$nonClosed$inlined;
                xVar.f33150a--;
                int i2 = xVar.f33150a;
            } else {
                AbstractC15122p pVar = this.$onReceive;
                this.L$0 = obj2;
                this.label = 1;
                if (pVar.invoke(obj2, this) == a) {
                    return a;
                }
            }
        } else if (i == 1) {
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }
}
