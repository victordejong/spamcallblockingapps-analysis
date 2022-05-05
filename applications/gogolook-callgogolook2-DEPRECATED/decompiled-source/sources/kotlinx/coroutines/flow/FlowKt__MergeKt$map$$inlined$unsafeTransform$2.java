package kotlinx.coroutines.flow;

import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, m815d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MergeKt$map$$inlined$unsafeTransform$2.class */
public final class FlowKt__MergeKt$map$$inlined$unsafeTransform$2 implements Flow<R> {
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;
    public final /* synthetic */ AbstractC15122p $transform$inlined$1;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u007f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\b"}, m815d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", C13032a.f29462d, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MergeKt$$special$$inlined$collect$2", "kotlinx/coroutines/flow/FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1"}, m814k = 1, m813mv = {1, 1, 16})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$map$$inlined$unsafeTransform$2$2 */
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MergeKt$map$$inlined$unsafeTransform$2$2.class */
    public static final class C147552 implements FlowCollector<T> {
        public final /* synthetic */ FlowCollector $this_unsafeFlow$inlined;
        public final /* synthetic */ FlowKt__MergeKt$map$$inlined$unsafeTransform$2 this$0;

        public C147552(FlowCollector flowCollector, FlowKt__MergeKt$map$$inlined$unsafeTransform$2 flowKt__MergeKt$map$$inlined$unsafeTransform$2) {
            this.$this_unsafeFlow$inlined = flowCollector;
            this.this$0 = flowKt__MergeKt$map$$inlined$unsafeTransform$2;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public Object emit(Object obj, AbstractC15044d dVar) {
            Object emit = this.$this_unsafeFlow$inlined.emit(this.this$0.$transform$inlined$1.invoke(obj, dVar), dVar);
            return emit == C15064c.m478a() ? emit : C14989s.f33022a;
        }

        public Object emit$$forInline(Object obj, AbstractC15044d dVar) {
            C15148j.m388c(4);
            new AbstractC15068d(dVar) { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$map$.inlined.unsafeTransform.2.2.1
                public int label;
                public /* synthetic */ Object result;

                @Override // p626l.p634w.p636k.p637a.AbstractC15065a
                public final Object invokeSuspend(Object obj2) {
                    this.result = obj2;
                    this.label |= Integer.MIN_VALUE;
                    return C147552.this.emit(null, this);
                }
            };
            C15148j.m388c(5);
            FlowCollector flowCollector = this.$this_unsafeFlow$inlined;
            Object invoke = this.this$0.$transform$inlined$1.invoke(obj, dVar);
            C15148j.m388c(0);
            Object emit = flowCollector.emit(invoke, dVar);
            C15148j.m388c(2);
            C15148j.m388c(1);
            return emit;
        }
    }

    public FlowKt__MergeKt$map$$inlined$unsafeTransform$2(Flow flow, AbstractC15122p pVar) {
        this.$this_unsafeTransform$inlined = flow;
        this.$transform$inlined$1 = pVar;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector flowCollector, AbstractC15044d dVar) {
        Object collect = this.$this_unsafeTransform$inlined.collect(new C147552(flowCollector, this), dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }

    public Object collect$$forInline(FlowCollector flowCollector, AbstractC15044d dVar) {
        C15148j.m388c(4);
        new AbstractC15068d(dVar) { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$map$$inlined$unsafeTransform$2.1
            public int label;
            public /* synthetic */ Object result;

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return FlowKt__MergeKt$map$$inlined$unsafeTransform$2.this.collect(null, this);
            }
        };
        C15148j.m388c(5);
        Flow flow = this.$this_unsafeTransform$inlined;
        C147552 r0 = new C147552(flowCollector, this);
        C15148j.m388c(0);
        flow.collect(r0, dVar);
        C15148j.m388c(2);
        C15148j.m388c(1);
        return C14989s.f33022a;
    }
}
