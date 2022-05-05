package kotlinx.coroutines.flow;

import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��3\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, m815d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", C13032a.f29462d, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MergeKt$$special$$inlined$collect$2"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1.class */
public final class FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1 implements FlowCollector<T> {
    public final /* synthetic */ FlowCollector $this_unsafeFlow$inlined;
    public final /* synthetic */ FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2 this$0;

    public FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1(FlowCollector flowCollector, FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2 flowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2) {
        this.$this_unsafeFlow$inlined = flowCollector;
        this.this$0 = flowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public Object emit(Object obj, AbstractC15044d dVar) {
        return this.this$0.$transform$inlined.invoke(this.$this_unsafeFlow$inlined, obj, dVar);
    }

    public Object emit$$forInline(Object obj, AbstractC15044d dVar) {
        C15148j.m388c(4);
        new AbstractC15068d(dVar) { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1.1
            public int label;
            public /* synthetic */ Object result;

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj2) {
                this.result = obj2;
                this.label |= Integer.MIN_VALUE;
                return FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1.this.emit(null, this);
            }
        };
        C15148j.m388c(5);
        return this.this$0.$transform$inlined.invoke(this.$this_unsafeFlow$inlined, obj, dVar);
    }
}
