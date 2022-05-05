package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006��"}, m815d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__TransformKt$scanReduce$$inlined$unsafeFlow$1.class */
public final class FlowKt__TransformKt$scanReduce$$inlined$unsafeFlow$1 implements Flow<T> {
    public final /* synthetic */ AbstractC15123q $operation$inlined;
    public final /* synthetic */ Flow $this_scanReduce$inlined;

    public FlowKt__TransformKt$scanReduce$$inlined$unsafeFlow$1(Flow flow, AbstractC15123q qVar) {
        this.$this_scanReduce$inlined = flow;
        this.$operation$inlined = qVar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.internal.Symbol, T] */
    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector flowCollector, AbstractC15044d dVar) {
        C15164z zVar = new C15164z();
        zVar.f33152a = NullSurrogateKt.NULL;
        Object collect = this.$this_scanReduce$inlined.collect(new FlowKt__TransformKt$scanReduce$$inlined$unsafeFlow$1$lambda$1(flowCollector, zVar, this), dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }
}
