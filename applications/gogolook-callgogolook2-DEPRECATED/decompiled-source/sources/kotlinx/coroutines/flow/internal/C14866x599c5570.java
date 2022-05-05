package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlinx.coroutines.channels.ReceiveChannel;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15159u;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, m815d2 = {"<anonymous>", "", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$onReceive$1", "kotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$$special$$inlined$onReceive$1"}, m814k = 3, m813mv = {1, 1, 16})
/* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2 */
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2.class */
public final class C14866x599c5570 extends AbstractC15078m implements AbstractC15122p<Object, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ ReceiveChannel $firstChannel$inlined;
    public final /* synthetic */ C15159u $firstIsClosed$inlined;
    public final /* synthetic */ C15164z $firstValue$inlined;
    public final /* synthetic */ AbstractC15122p $onReceive;
    public final /* synthetic */ ReceiveChannel $secondChannel$inlined;
    public final /* synthetic */ C15159u $secondIsClosed$inlined;
    public final /* synthetic */ C15164z $secondValue$inlined;
    public Object L$0;
    public int label;
    public Object p$0;
    public final /* synthetic */ CombineKt$combineTransformInternal$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14866x599c5570(AbstractC15122p pVar, AbstractC15044d dVar, CombineKt$combineTransformInternal$2 combineKt$combineTransformInternal$2, C15159u uVar, ReceiveChannel receiveChannel, C15164z zVar, C15164z zVar2, C15159u uVar2, ReceiveChannel receiveChannel2) {
        super(2, dVar);
        this.$onReceive = pVar;
        this.this$0 = combineKt$combineTransformInternal$2;
        this.$firstIsClosed$inlined = uVar;
        this.$firstChannel$inlined = receiveChannel;
        this.$firstValue$inlined = zVar;
        this.$secondValue$inlined = zVar2;
        this.$secondIsClosed$inlined = uVar2;
        this.$secondChannel$inlined = receiveChannel2;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C14866x599c5570 combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2 = new C14866x599c5570(this.$onReceive, dVar, this.this$0, this.$firstIsClosed$inlined, this.$firstChannel$inlined, this.$firstValue$inlined, this.$secondValue$inlined, this.$secondIsClosed$inlined, this.$secondChannel$inlined);
        combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2.p$0 = obj;
        return combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((C14866x599c5570) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            Object obj2 = this.p$0;
            if (obj2 == null) {
                this.$firstIsClosed$inlined.f33147a = true;
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
