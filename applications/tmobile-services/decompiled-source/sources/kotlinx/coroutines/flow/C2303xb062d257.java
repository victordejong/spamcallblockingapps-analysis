package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", FirebaseAnalytics.Param.VALUE, "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__EmittersKt$$special$$inlined$collect$1"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1$lambda$1 */
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1$lambda$1.class */
public final class C2303xb062d257 implements FlowCollector<T> {

    /* renamed from: f */
    final /* synthetic */ FlowCollector f22673f;

    /* renamed from: g */
    final /* synthetic */ FlowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1 f22674g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\b"}, d2 = {"emit", "", "T", FirebaseAnalytics.Param.VALUE, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "kotlinx/coroutines/flow/FlowKt__EmittersKt$$special$$inlined$collect$1$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1$lambda$1$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1$lambda$1$1.class */
    public static final class C23041 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f22675f;

        /* renamed from: g */
        int f22676g;

        /* renamed from: h */
        final /* synthetic */ C2303xb062d257 f22677h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f22675f = obj;
            this.f22676g |= Integer.MIN_VALUE;
            return this.f22677h.mo588b(null, this);
        }
    }

    public C2303xb062d257(FlowCollector flowCollector, FlowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1 flowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1) {
        this.f22673f = flowCollector;
        this.f22674g = flowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    @Nullable
    /* renamed from: b */
    public Object mo588b(Object obj, @NotNull Continuation continuation) {
        return this.f22674g.f22669b.mo594a(this.f22673f, obj, continuation);
    }
}
