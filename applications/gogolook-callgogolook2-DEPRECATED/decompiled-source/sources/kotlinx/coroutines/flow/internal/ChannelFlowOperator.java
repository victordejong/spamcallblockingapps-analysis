package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15045e;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n��\b \u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00020\u0003B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u001f\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\u000eH\u0096@ø\u0001��¢\u0006\u0002\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00010\u0012H\u0094@ø\u0001��¢\u0006\u0002\u0010\u0013J'\u0010\u0014\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e2\u0006\u0010\u0015\u001a\u00020\u0007H\u0082@ø\u0001��¢\u0006\u0002\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\u000eH¤@ø\u0001��¢\u0006\u0002\u0010\u000fJ\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00058\u0006X\u0087\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, m815d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "flow", "Lkotlinx/coroutines/flow/Flow;", "context", "Lkotlin/coroutines/CoroutineContext;", "capacity", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;I)V", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectTo", "scope", "Lkotlinx/coroutines/channels/ProducerScope;", "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectWithContextUndispatched", "newContext", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "flowCollect", "toString", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowOperator.class */
public abstract class ChannelFlowOperator<S, T> extends ChannelFlow<T> {
    public final Flow<S> flow;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowOperator(Flow<? extends S> flow, AbstractC15049g gVar, int i) {
        super(gVar, i);
        this.flow = flow;
    }

    public static /* synthetic */ Object collect$suspendImpl(ChannelFlowOperator channelFlowOperator, FlowCollector flowCollector, AbstractC15044d dVar) {
        if (channelFlowOperator.capacity == -3) {
            AbstractC15049g context = dVar.getContext();
            AbstractC15049g plus = context.plus(channelFlowOperator.context);
            if (C15149k.m384a(plus, context)) {
                Object flowCollect = channelFlowOperator.flowCollect(flowCollector, dVar);
                return flowCollect == C15064c.m478a() ? flowCollect : C14989s.f33022a;
            } else if (C15149k.m384a((AbstractC15045e) plus.get(AbstractC15045e.f33077M), (AbstractC15045e) context.get(AbstractC15045e.f33077M))) {
                Object collectWithContextUndispatched = channelFlowOperator.collectWithContextUndispatched(flowCollector, plus, dVar);
                return collectWithContextUndispatched == C15064c.m478a() ? collectWithContextUndispatched : C14989s.f33022a;
            }
        }
        Object collect = super.collect(flowCollector, dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }

    public static /* synthetic */ Object collectTo$suspendImpl(ChannelFlowOperator channelFlowOperator, ProducerScope producerScope, AbstractC15044d dVar) {
        Object flowCollect = channelFlowOperator.flowCollect(new SendingCollector(producerScope), dVar);
        return flowCollect == C15064c.m478a() ? flowCollect : C14989s.f33022a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector<? super T> flowCollector, AbstractC15044d<? super C14989s> dVar) {
        return collect$suspendImpl((ChannelFlowOperator) this, (FlowCollector) flowCollector, (AbstractC15044d) dVar);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Object collectTo(ProducerScope<? super T> producerScope, AbstractC15044d<? super C14989s> dVar) {
        return collectTo$suspendImpl(this, producerScope, dVar);
    }

    public final /* synthetic */ Object collectWithContextUndispatched(FlowCollector<? super T> flowCollector, AbstractC15049g gVar, AbstractC15044d<? super C14989s> dVar) {
        FlowCollector withUndispatchedContextCollector;
        withUndispatchedContextCollector = ChannelFlowKt.withUndispatchedContextCollector(flowCollector, dVar.getContext());
        Object withContextUndispatched$default = ChannelFlowKt.withContextUndispatched$default(gVar, null, new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), withUndispatchedContextCollector, dVar, 2, null);
        return withContextUndispatched$default == C15064c.m478a() ? withContextUndispatched$default : C14989s.f33022a;
    }

    public abstract Object flowCollect(FlowCollector<? super T> flowCollector, AbstractC15044d<? super C14989s> dVar);

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public String toString() {
        return this.flow + " -> " + super.toString();
    }
}
