package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ThreadContextKt;
import p459j.p460a.p541n0.C13032a;
import p626l.C14986p;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15138d0;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a[\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001\"\u0004\b\u0001\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\"\u0010\u0007\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\u00060\b2\u0006\u0010\n\u001a\u0002H\u0002H\u0082@ø\u0001��¢\u0006\u0002\u0010\u000b\u001a\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00010\r\"\u0004\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u000eH��\u001a&\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0010\"\u0004\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, m815d2 = {"withContextUndispatched", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "newContext", "Lkotlin/coroutines/CoroutineContext;", "countOrElement", "", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", C13032a.f29462d, "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "asChannelFlow", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlinx/coroutines/flow/Flow;", "withUndispatchedContextCollector", "Lkotlinx/coroutines/flow/FlowCollector;", "emitContext", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowKt.class */
public final class ChannelFlowKt {
    public static final <T> ChannelFlow<T> asChannelFlow(Flow<? extends T> flow) {
        ChannelFlow<T> channelFlow = (ChannelFlow) (!(flow instanceof ChannelFlow) ? null : flow);
        return channelFlow != null ? channelFlow : new ChannelFlowOperatorImpl<>(flow, null, 0, 6, null);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <T, V> Object withContextUndispatched(final AbstractC15049g gVar, final Object obj, final AbstractC15122p<? super V, ? super AbstractC15044d<? super T>, ? extends Object> pVar, final V v, final AbstractC15044d<? super T> dVar) {
        Object updateThreadContext = ThreadContextKt.updateThreadContext(gVar, obj);
        try {
            AbstractC15044d<T> channelFlowKt$withContextUndispatched$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1 = new AbstractC15044d<T>() { // from class: kotlinx.coroutines.flow.internal.ChannelFlowKt$withContextUndispatched$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1
                @Override // p626l.p634w.AbstractC15044d
                public AbstractC15049g getContext() {
                    return AbstractC15049g.this;
                }

                @Override // p626l.p634w.AbstractC15044d
                public void resumeWith(Object obj2) {
                    dVar.resumeWith(obj2);
                }
            };
            if (pVar != null) {
                C15138d0.m399a(pVar, 2);
                Object invoke = pVar.invoke(v, channelFlowKt$withContextUndispatched$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1);
                ThreadContextKt.restoreThreadContext(gVar, updateThreadContext);
                if (invoke == C15064c.m478a()) {
                    C15072h.m462c(dVar);
                }
                return invoke;
            }
            throw new C14986p("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            ThreadContextKt.restoreThreadContext(gVar, updateThreadContext);
            throw th;
        }
    }

    public static /* synthetic */ Object withContextUndispatched$default(AbstractC15049g gVar, Object obj, AbstractC15122p pVar, Object obj2, AbstractC15044d dVar, int i, Object obj3) {
        if ((i & 2) != 0) {
            obj = ThreadContextKt.threadContextElements(gVar);
        }
        return withContextUndispatched(gVar, obj, pVar, obj2, dVar);
    }

    public static final <T> FlowCollector<T> withUndispatchedContextCollector(FlowCollector<? super T> flowCollector, AbstractC15049g gVar) {
        boolean z = flowCollector instanceof SendingCollector;
        UndispatchedContextCollector undispatchedContextCollector = flowCollector;
        if (!z) {
            boolean z2 = flowCollector instanceof NopCollector;
            undispatchedContextCollector = flowCollector;
            if (!z2) {
                undispatchedContextCollector = new UndispatchedContextCollector(flowCollector, gVar);
            }
        }
        return (FlowCollector<T>) undispatchedContextCollector;
    }
}
