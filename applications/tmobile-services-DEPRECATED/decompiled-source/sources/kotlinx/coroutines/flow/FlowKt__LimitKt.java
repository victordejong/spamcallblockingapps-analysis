package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aX\u0010\u000b\u001a\u00020\n\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u000123\b\u0004\u0010\t\u001a-\b\u0001\u0012\u0013\u0012\u00118��¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0002H\u0080Hø\u0001��¢\u0006\u0004\b\u000b\u0010\f\u001a+\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010\u001aJ\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\"\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0002ø\u0001��¢\u0006\u0004\b\u0011\u0010\u0012\u001a+\u0010\u0016\u001a\u00020\n\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00132\u0006\u0010\u0005\u001a\u00028��H\u0082@ø\u0001��¢\u0006\u0004\b\u0014\u0010\u0015\u001a+\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0017\u0010\u0010\u001aJ\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\"\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0002ø\u0001��¢\u0006\u0004\b\u0018\u0010\u0012\u001at\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u0019*\b\u0012\u0004\u0012\u00028��0\u00012D\b\u0001\u0010\u001c\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0013\u0012\u0013\u0012\u00118��¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u001a¢\u0006\u0002\b\u001bH\u0007ø\u0001��¢\u0006\u0004\b\u001d\u0010\u001e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"T", "Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", FirebaseAnalytics.Param.VALUE, "Lkotlin/coroutines/Continuation;", "", "", "predicate", "", "collectWhile", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "count", "drop", "(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;", "dropWhile", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "emitAbort$FlowKt__LimitKt", "(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "emitAbort", "take", "takeWhile", "R", "Lkotlin/Function3;", "Lkotlin/ExtensionFunctionType;", "transform", "transformWhile", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__LimitKt.class */
public final /* synthetic */ class FlowKt__LimitKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0079  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m702a(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.Flow<? extends T> r4, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super java.lang.Boolean>, ? extends java.lang.Object> r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$1
            if (r0 == 0) goto L_0x0028
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f22819g
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0028
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f22819g = r1
            r0 = r7
            r6 = r0
            goto L_0x0031
        L_0x0028:
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$1
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r6 = r0
        L_0x0031:
            r0 = r6
            java.lang.Object r0 = r0.f22818f
            r7 = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r9 = r0
            r0 = r6
            int r0 = r0.f22819g
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0079
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x006f
            r0 = r6
            java.lang.Object r0 = r0.f22822j
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1) r0
            r5 = r0
            r0 = r6
            java.lang.Object r0 = r0.f22821i
            kotlin.jvm.functions.Function2 r0 = (kotlin.jvm.functions.Function2) r0
            r4 = r0
            r0 = r6
            java.lang.Object r0 = r0.f22820h
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            r4 = r0
            r0 = r7
            kotlin.ResultKt.m2472b(r0)     // Catch: AbortFlowException -> 0x006b
            goto L_0x00b4
        L_0x006b:
            r4 = move-exception
            goto L_0x00af
        L_0x006f:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0079:
            r0 = r7
            kotlin.ResultKt.m2472b(r0)
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r7 = r0
            r0 = r6
            r1 = r4
            r0.f22820h = r1     // Catch: AbortFlowException -> 0x00ac
            r0 = r6
            r1 = r5
            r0.f22821i = r1     // Catch: AbortFlowException -> 0x00ac
            r0 = r6
            r1 = r7
            r0.f22822j = r1     // Catch: AbortFlowException -> 0x00ac
            r0 = r6
            r1 = 1
            r0.f22819g = r1     // Catch: AbortFlowException -> 0x00ac
            r0 = r4
            r1 = r7
            r2 = r6
            java.lang.Object r0 = r0.mo589a(r1, r2)     // Catch: AbortFlowException -> 0x00ac
            r4 = r0
            r0 = r4
            r1 = r9
            if (r0 != r1) goto L_0x00b4
            r0 = r9
            return r0
        L_0x00ac:
            r4 = move-exception
            r0 = r7
            r5 = r0
        L_0x00af:
            r0 = r4
            r1 = r5
            kotlinx.coroutines.flow.internal.FlowExceptions_commonKt.m603a(r0, r1)
        L_0x00b4:
            kotlin.Unit r0 = kotlin.Unit.f20447a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt.m702a(kotlinx.coroutines.flow.Flow, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006c  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ <T> java.lang.Object m701b(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.FlowCollector<? super T> r4, T r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1
            if (r0 == 0) goto L_0x0028
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f22830g
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0028
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f22830g = r1
            r0 = r7
            r6 = r0
            goto L_0x0031
        L_0x0028:
            kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r6 = r0
        L_0x0031:
            r0 = r6
            java.lang.Object r0 = r0.f22829f
            r9 = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r10 = r0
            r0 = r6
            int r0 = r0.f22830g
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006c
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L_0x0057
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0057:
            r0 = r6
            java.lang.Object r0 = r0.f22832i
            r4 = r0
            r0 = r6
            java.lang.Object r0 = r0.f22831h
            kotlinx.coroutines.flow.FlowCollector r0 = (kotlinx.coroutines.flow.FlowCollector) r0
            r7 = r0
            r0 = r9
            kotlin.ResultKt.m2472b(r0)
            goto L_0x0092
        L_0x006c:
            r0 = r9
            kotlin.ResultKt.m2472b(r0)
            r0 = r6
            r1 = r4
            r0.f22831h = r1
            r0 = r6
            r1 = r5
            r0.f22832i = r1
            r0 = r6
            r1 = 1
            r0.f22830g = r1
            r0 = r4
            r7 = r0
            r0 = r4
            r1 = r5
            r2 = r6
            java.lang.Object r0 = r0.mo588b(r1, r2)
            r1 = r10
            if (r0 != r1) goto L_0x0092
            r0 = r10
            return r0
        L_0x0092:
            kotlinx.coroutines.flow.internal.AbortFlowException r0 = new kotlinx.coroutines.flow.internal.AbortFlowException
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt.m701b(kotlinx.coroutines.flow.FlowCollector, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
