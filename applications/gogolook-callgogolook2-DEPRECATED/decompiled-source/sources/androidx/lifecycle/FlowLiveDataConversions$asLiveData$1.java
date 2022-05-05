package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@AbstractC15070f(m473c = "androidx.lifecycle.FlowLiveDataConversions$asLiveData$1", m472f = "FlowLiveData.kt", m471l = {139}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/LiveDataScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FlowLiveDataConversions$asLiveData$1.class */
public final class FlowLiveDataConversions$asLiveData$1 extends AbstractC15078m implements AbstractC15122p<LiveDataScope<T>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ Flow $this_asLiveData;
    public Object L$0;
    public Object L$1;
    public int label;

    /* renamed from: p$ */
    public LiveDataScope f71p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowLiveDataConversions$asLiveData$1(Flow flow, AbstractC15044d dVar) {
        super(2, dVar);
        this.$this_asLiveData = flow;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C15149k.m377b(dVar, "completion");
        FlowLiveDataConversions$asLiveData$1 flowLiveDataConversions$asLiveData$1 = new FlowLiveDataConversions$asLiveData$1(this.$this_asLiveData, dVar);
        flowLiveDataConversions$asLiveData$1.f71p$ = (LiveDataScope) obj;
        return flowLiveDataConversions$asLiveData$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowLiveDataConversions$asLiveData$1) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            LiveDataScope liveDataScope = this.f71p$;
            Flow flow = this.$this_asLiveData;
            C0383x662b223e flowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1 = new C0383x662b223e(liveDataScope);
            this.L$0 = liveDataScope;
            this.L$1 = flow;
            this.label = 1;
            if (flow.collect(flowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1, this) == a) {
                return a;
            }
        } else if (i == 1) {
            Flow flow2 = (Flow) this.L$1;
            LiveDataScope liveDataScope2 = (LiveDataScope) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }
}
