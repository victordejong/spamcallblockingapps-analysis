package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\u0015\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¢\u0006\u0002\b\u0004\u001a(\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b��\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\tH\u0007\u001a\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b��\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u0006H\u0007\u001a&\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b��\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a[\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\r0\u0006\"\u0004\b��\u0010\u0007\"\u0004\b\u0001\u0010\r*\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0006\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\t2#\u0010\u0010\u001a\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00070\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\r0\u00060\u0011¢\u0006\u0002\b\u0012H\u0007¨\u0006\u0013"}, m815d2 = {"checkFlowContext", "", "context", "Lkotlin/coroutines/CoroutineContext;", "checkFlowContext$FlowKt__ContextKt", "buffer", "Lkotlinx/coroutines/flow/Flow;", ExifInterface.GPS_DIRECTION_TRUE, "capacity", "", "conflate", "flowOn", "flowWith", "R", "flowContext", "bufferSize", "builder", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ContextKt.class */
public final /* synthetic */ class FlowKt__ContextKt {
    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> buffer(Flow<? extends T> flow, int i) {
        if (i >= 0 || i == -2 || i == -1) {
            return flow instanceof ChannelFlow ? ChannelFlow.update$default((ChannelFlow) flow, null, i, 1, null) : new ChannelFlowOperatorImpl<>(flow, null, i, 2, null);
        }
        throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i).toString());
    }

    public static /* synthetic */ Flow buffer$default(Flow flow, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -2;
        }
        return FlowKt.buffer(flow, i);
    }

    public static final void checkFlowContext$FlowKt__ContextKt(AbstractC15049g gVar) {
        if (!(gVar.get(Job.Key) == null)) {
            throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + gVar).toString());
        }
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> conflate(Flow<? extends T> flow) {
        return FlowKt.buffer(flow, -1);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> flowOn(Flow<? extends T> flow, AbstractC15049g gVar) {
        checkFlowContext$FlowKt__ContextKt(gVar);
        ChannelFlow channelFlow = flow;
        if (!C15149k.m384a(gVar, C15055h.f33080a)) {
            channelFlow = flow instanceof ChannelFlow ? ChannelFlow.update$default((ChannelFlow) flow, gVar, 0, 2, null) : new ChannelFlowOperatorImpl(flow, gVar, 0, 4, null);
        }
        return (Flow<T>) channelFlow;
    }

    @FlowPreview
    public static final <T, R> Flow<R> flowWith(final Flow<? extends T> flow, final AbstractC15049g gVar, final int i, final AbstractC15118l<? super Flow<? extends T>, ? extends Flow<? extends R>> lVar) {
        checkFlowContext$FlowKt__ContextKt(gVar);
        return new Flow<R>() { // from class: kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(final FlowCollector flowCollector, AbstractC15044d dVar) {
                Object collect = FlowKt.buffer(FlowKt.flowOn((Flow) lVar.invoke(FlowKt.buffer(FlowKt.flowOn(Flow.this, dVar.getContext().minusKey(Job.Key)), i)), gVar), i).collect(new FlowCollector<R>() { // from class: kotlinx.coroutines.flow.FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1$lambda$1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public Object emit(Object obj, AbstractC15044d dVar2) {
                        Object emit = FlowCollector.this.emit(obj, dVar2);
                        return emit == C15064c.m478a() ? emit : C14989s.f33022a;
                    }
                }, dVar);
                return collect == C15064c.m478a() ? collect : C14989s.f33022a;
            }
        };
    }

    public static /* synthetic */ Flow flowWith$default(Flow flow, AbstractC15049g gVar, int i, AbstractC15118l lVar, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -2;
        }
        return FlowKt.flowWith(flow, gVar, i, lVar);
    }
}
