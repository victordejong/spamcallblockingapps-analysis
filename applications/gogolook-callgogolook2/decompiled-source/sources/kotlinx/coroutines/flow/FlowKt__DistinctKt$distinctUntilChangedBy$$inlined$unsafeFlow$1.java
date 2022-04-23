package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006��"}, m815d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1.class */
public final class FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1 implements Flow<T> {
    public final /* synthetic */ AbstractC15122p $areEquivalent$inlined;
    public final /* synthetic */ AbstractC15118l $keySelector$inlined;
    public final /* synthetic */ Flow $this_distinctUntilChangedBy$inlined;

    public FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1(Flow flow, AbstractC15118l lVar, AbstractC15122p pVar) {
        this.$this_distinctUntilChangedBy$inlined = flow;
        this.$keySelector$inlined = lVar;
        this.$areEquivalent$inlined = pVar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.internal.Symbol, T] */
    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector flowCollector, AbstractC15044d dVar) {
        C15164z zVar = new C15164z();
        zVar.f33152a = NullSurrogateKt.NULL;
        Object collect = this.$this_distinctUntilChangedBy$inlined.collect(new C14726x59d1cced(flowCollector, zVar, this), dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.internal.Symbol, T] */
    public Object collect$$forInline(FlowCollector flowCollector, AbstractC15044d dVar) {
        C15148j.m388c(4);
        new AbstractC15068d(dVar) { // from class: kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1.1
            public int label;
            public /* synthetic */ Object result;

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1.this.collect(null, this);
            }
        };
        C15148j.m388c(5);
        C15164z zVar = new C15164z();
        zVar.f33152a = NullSurrogateKt.NULL;
        Flow flow = this.$this_distinctUntilChangedBy$inlined;
        C14726x59d1cced flowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1$lambda$1 = new C14726x59d1cced(flowCollector, zVar, this);
        C15148j.m388c(0);
        flow.collect(flowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$1$lambda$1, dVar);
        C15148j.m388c(2);
        C15148j.m388c(1);
        return C14989s.f33022a;
    }
}
