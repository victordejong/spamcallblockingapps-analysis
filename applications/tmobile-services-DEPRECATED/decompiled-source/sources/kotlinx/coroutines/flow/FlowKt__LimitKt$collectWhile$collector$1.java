package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1", "Lkotlinx/coroutines/flow/FlowCollector;", FirebaseAnalytics.Param.VALUE, "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1.class */
public final class FlowKt__LimitKt$collectWhile$collector$1 implements FlowCollector<T> {

    /* renamed from: f */
    final /* synthetic */ Function2 f22823f;

    public FlowKt__LimitKt$collectWhile$collector$1(Function2 function2) {
        this.f22823f = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a7  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    @org.jetbrains.annotations.Nullable
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo588b(T r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1$emit$1
            if (r0 == 0) goto L_0x0028
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1$emit$1) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f22825g
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0028
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f22825g = r1
            r0 = r8
            r7 = r0
            goto L_0x0032
        L_0x0028:
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1$emit$1
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r2, r3)
            r7 = r0
        L_0x0032:
            r0 = r7
            java.lang.Object r0 = r0.f22824f
            r8 = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r10 = r0
            r0 = r7
            int r0 = r0.f22825g
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x006d
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L_0x0063
            r0 = r7
            java.lang.Object r0 = r0.f22828j
            r6 = r0
            r0 = r7
            java.lang.Object r0 = r0.f22827i
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1) r0
            r7 = r0
            r0 = r8
            kotlin.ResultKt.m2472b(r0)
            r0 = r8
            r6 = r0
            goto L_0x0099
        L_0x0063:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x006d:
            r0 = r8
            kotlin.ResultKt.m2472b(r0)
            r0 = r5
            kotlin.jvm.functions.Function2 r0 = r0.f22823f
            r8 = r0
            r0 = r7
            r1 = r5
            r0.f22827i = r1
            r0 = r7
            r1 = r6
            r0.f22828j = r1
            r0 = r7
            r1 = 1
            r0.f22825g = r1
            r0 = r8
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.mo422o(r1, r2)
            r6 = r0
            r0 = r6
            r1 = r10
            if (r0 != r1) goto L_0x0097
            r0 = r10
            return r0
        L_0x0097:
            r0 = r5
            r7 = r0
        L_0x0099:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x00a7
            kotlin.Unit r0 = kotlin.Unit.f20447a
            return r0
        L_0x00a7:
            kotlinx.coroutines.flow.internal.AbortFlowException r0 = new kotlinx.coroutines.flow.internal.AbortFlowException
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1.mo588b(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
