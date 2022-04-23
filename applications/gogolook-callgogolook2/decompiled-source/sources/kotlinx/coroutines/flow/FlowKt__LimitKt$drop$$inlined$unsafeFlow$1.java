package kotlinx.coroutines.flow;

import kotlin.Metadata;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p643d.C15162x;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006��"}, m815d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1.class */
public final class FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 implements Flow<T> {
    public final /* synthetic */ int $count$inlined;
    public final /* synthetic */ Flow $this_drop$inlined;

    public FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(Flow flow, int i) {
        this.$this_drop$inlined = flow;
        this.$count$inlined = i;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(final FlowCollector flowCollector, AbstractC15044d dVar) {
        final C15162x xVar = new C15162x();
        xVar.f33150a = 0;
        Object collect = this.$this_drop$inlined.collect(new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1$lambda$1
            @Override // kotlinx.coroutines.flow.FlowCollector
            public Object emit(Object obj, AbstractC15044d dVar2) {
                C15162x xVar2 = xVar;
                int i = xVar2.f33150a;
                if (i >= this.$count$inlined) {
                    Object emit = FlowCollector.this.emit(obj, dVar2);
                    if (emit == C15064c.m478a()) {
                        return emit;
                    }
                } else {
                    xVar2.f33150a = i + 1;
                    int i2 = xVar2.f33150a;
                }
                return C14989s.f33022a;
            }
        }, dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }
}
