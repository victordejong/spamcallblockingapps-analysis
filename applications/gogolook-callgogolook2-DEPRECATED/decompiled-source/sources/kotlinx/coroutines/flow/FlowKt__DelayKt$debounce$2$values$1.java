package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2$values$1", m472f = "Delay.kt", m471l = {137}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/ProducerScope;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$values$1.class */
public final class FlowKt__DelayKt$debounce$2$values$1 extends AbstractC15078m implements AbstractC15122p<ProducerScope<? super Object>, AbstractC15044d<? super C14989s>, Object> {
    public Object L$0;
    public Object L$1;
    public int label;

    /* renamed from: p$ */
    public ProducerScope f32866p$;
    public final /* synthetic */ FlowKt__DelayKt$debounce$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$debounce$2$values$1(FlowKt__DelayKt$debounce$2 flowKt__DelayKt$debounce$2, AbstractC15044d dVar) {
        super(2, dVar);
        this.this$0 = flowKt__DelayKt$debounce$2;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        FlowKt__DelayKt$debounce$2$values$1 flowKt__DelayKt$debounce$2$values$1 = new FlowKt__DelayKt$debounce$2$values$1(this.this$0, dVar);
        flowKt__DelayKt$debounce$2$values$1.f32866p$ = (ProducerScope) obj;
        return flowKt__DelayKt$debounce$2$values$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(ProducerScope<? super Object> producerScope, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__DelayKt$debounce$2$values$1) create(producerScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            final ProducerScope producerScope = this.f32866p$;
            Flow flow = this.this$0.$this_debounce;
            Object flowKt__DelayKt$debounce$2$values$1$invokeSuspend$$inlined$collect$1 = new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2$values$1$invokeSuspend$$inlined$collect$1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public Object emit(Object obj2, AbstractC15044d dVar) {
                    ProducerScope producerScope2 = ProducerScope.this;
                    if (obj2 == null) {
                        obj2 = NullSurrogateKt.NULL;
                    }
                    Object send = producerScope2.send(obj2, dVar);
                    return send == C15064c.m478a() ? send : C14989s.f33022a;
                }
            };
            this.L$0 = producerScope;
            this.L$1 = flow;
            this.label = 1;
            if (flow.collect(flowKt__DelayKt$debounce$2$values$1$invokeSuspend$$inlined$collect$1, this) == a) {
                return a;
            }
        } else if (i == 1) {
            Flow flow2 = (Flow) this.L$1;
            ProducerScope producerScope2 = (ProducerScope) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }
}
