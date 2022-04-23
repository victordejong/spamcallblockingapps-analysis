package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006��"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1.class */
public final class FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1 implements Flow<IndexedValue<? extends T>> {

    /* renamed from: a */
    final /* synthetic */ Flow f23408a;

    @Override // kotlinx.coroutines.flow.Flow
    @Nullable
    /* renamed from: a */
    public Object mo589a(@NotNull final FlowCollector flowCollector, @NotNull Continuation continuation) {
        Object d;
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.f20749f = 0;
        Object a = this.f23408a.mo589a(new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1$lambda$1
            @Override // kotlinx.coroutines.flow.FlowCollector
            @Nullable
            /* renamed from: b */
            public Object mo588b(Object obj, @NotNull Continuation continuation2) {
                Object d2;
                FlowCollector flowCollector2 = FlowCollector.this;
                Ref.IntRef intRef2 = intRef;
                int i = intRef2.f20749f;
                intRef2.f20749f = i + 1;
                if (i >= 0) {
                    Object b = flowCollector2.mo588b(new IndexedValue(i, obj), continuation2);
                    d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
                    return b == d2 ? b : Unit.f20447a;
                }
                throw new ArithmeticException("Index overflow has happened");
            }
        }, continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return a == d ? a : Unit.f20447a;
    }
}
