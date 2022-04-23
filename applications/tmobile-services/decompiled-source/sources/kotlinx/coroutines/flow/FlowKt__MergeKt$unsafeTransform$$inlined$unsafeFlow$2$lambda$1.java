package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", FirebaseAnalytics.Param.VALUE, "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MergeKt$$special$$inlined$collect$2"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1.class */
public final class FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1 implements FlowCollector<T> {

    /* renamed from: f */
    final /* synthetic */ FlowCollector f22923f;

    /* renamed from: g */
    final /* synthetic */ FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2 f22924g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\b"}, d2 = {"emit", "", "T", FirebaseAnalytics.Param.VALUE, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "kotlinx/coroutines/flow/FlowKt__MergeKt$$special$$inlined$collect$2$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1$1.class */
    public static final class C23271 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f22925f;

        /* renamed from: g */
        int f22926g;

        /* renamed from: h */
        final /* synthetic */ FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1 f22927h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f22925f = obj;
            this.f22926g |= Integer.MIN_VALUE;
            return this.f22927h.mo588b(null, this);
        }
    }

    public FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1(FlowCollector flowCollector, FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2 flowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2) {
        this.f22923f = flowCollector;
        this.f22924g = flowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    @Nullable
    /* renamed from: b */
    public Object mo588b(Object obj, @NotNull Continuation continuation) {
        return this.f22924g.f22919b.mo594a(this.f22923f, obj, continuation);
    }
}
