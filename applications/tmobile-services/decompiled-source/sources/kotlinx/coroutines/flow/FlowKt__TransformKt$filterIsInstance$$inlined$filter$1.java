package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$2"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$1.class */
public final class FlowKt__TransformKt$filterIsInstance$$inlined$filter$1 implements Flow<Object> {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@¨\u0006\n"}, d2 = {"collect", "", "T", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$unsafeTransform$$inlined$unsafeFlow$3$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$2$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$1.class */
    public static final class C23591 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f23220f;

        /* renamed from: g */
        int f23221g;

        /* renamed from: h */
        final /* synthetic */ FlowKt__TransformKt$filterIsInstance$$inlined$filter$1 f23222h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f23220f = obj;
            this.f23221g |= Integer.MIN_VALUE;
            this.f23222h.mo589a(null, this);
            throw null;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", FirebaseAnalytics.Param.VALUE, "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$2$2"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2.class */
    public static final class C23602 implements FlowCollector<Object> {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\n"}, d2 = {"emit", "", "T", FirebaseAnalytics.Param.VALUE, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$$special$$inlined$collect$3$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$unsafeTransform$$inlined$unsafeFlow$3$lambda$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$2$2$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2", m1914f = "Transform.kt", m1913l = {135}, m1912m = "emit")
        /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2$1 */
        /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2$1.class */
        public static final class C23611 extends ContinuationImpl {

            /* renamed from: f */
            /* synthetic */ Object f23223f;

            /* renamed from: g */
            int f23224g;

            /* renamed from: h */
            Object f23225h;

            /* renamed from: i */
            Object f23226i;

            /* renamed from: j */
            Object f23227j;

            /* renamed from: k */
            Object f23228k;

            /* renamed from: l */
            Object f23229l;

            /* renamed from: m */
            Object f23230m;

            /* renamed from: n */
            Object f23231n;

            public C23611(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f23223f = obj;
                this.f23224g |= Integer.MIN_VALUE;
                return C23602.this.mo588b(null, this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x008b  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        @org.jetbrains.annotations.Nullable
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object mo588b(java.lang.Object r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation r7) {
            /*
                r5 = this;
                r0 = r7
                boolean r0 = r0 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1.C23602.C23611
                if (r0 == 0) goto L_0x0023
                r0 = r7
                kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1.C23602.C23611) r0
                r6 = r0
                r0 = r6
                int r0 = r0.f23224g
                r8 = r0
                r0 = r8
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0023
                r0 = r6
                r1 = r8
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f23224g = r1
                goto L_0x002d
            L_0x0023:
                kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2$1
                r1 = r0
                r2 = r5
                r3 = r7
                r1.<init>(r3)
                r6 = r0
            L_0x002d:
                r0 = r6
                java.lang.Object r0 = r0.f23223f
                r7 = r0
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
                r0 = r6
                int r0 = r0.f23224g
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x008b
                r0 = r8
                r1 = 1
                if (r0 != r1) goto L_0x0081
                r0 = r6
                java.lang.Object r0 = r0.f23231n
                kotlinx.coroutines.flow.FlowCollector r0 = (kotlinx.coroutines.flow.FlowCollector) r0
                r9 = r0
                r0 = r6
                java.lang.Object r0 = r0.f23230m
                r9 = r0
                r0 = r6
                java.lang.Object r0 = r0.f23229l
                kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1.C23602.C23611) r0
                r9 = r0
                r0 = r6
                java.lang.Object r0 = r0.f23228k
                r9 = r0
                r0 = r6
                java.lang.Object r0 = r0.f23227j
                kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1.C23602.C23611) r0
                r9 = r0
                r0 = r6
                java.lang.Object r0 = r0.f23226i
                r9 = r0
                r0 = r6
                java.lang.Object r0 = r0.f23225h
                kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1.C23602) r0
                r6 = r0
                r0 = r7
                kotlin.ResultKt.m2472b(r0)
                kotlin.Unit r0 = kotlin.Unit.f20447a
                return r0
            L_0x0081:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L_0x008b:
                r0 = r7
                kotlin.ResultKt.m2472b(r0)
                r0 = 3
                java.lang.String r1 = "R"
                kotlin.jvm.internal.Intrinsics.m1825j(r0, r1)
                r0 = 0
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1.C23602.mo588b(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    @Override // kotlinx.coroutines.flow.Flow
    @Nullable
    /* renamed from: a */
    public Object mo589a(@NotNull FlowCollector<? super Object> flowCollector, @NotNull Continuation continuation) {
        Intrinsics.m1826i();
        throw null;
    }
}
