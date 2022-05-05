package kotlinx.coroutines.flow;

import kotlin.Metadata;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0003\u001a#\u0010\u0003\u001a\u00020\u0002\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0001H\u0086@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004\u001aG\u0010\u0003\u001a\u00020\u0002\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\"\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0086@ø\u0001��¢\u0006\u0004\b\u0003\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"T", "Lkotlinx/coroutines/flow/Flow;", "", "count", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "predicate", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__CountKt.class */
public final /* synthetic */ class FlowKt__CountKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m718a(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.Flow<? extends T> r4, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.lang.Integer> r5) {
        /*
            r0 = r5
            boolean r0 = r0 instanceof kotlinx.coroutines.flow.FlowKt__CountKt$count$1
            if (r0 == 0) goto L_0x0025
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__CountKt$count$1 r0 = (kotlinx.coroutines.flow.FlowKt__CountKt$count$1) r0
            r6 = r0
            r0 = r6
            int r0 = r0.f22477g
            r7 = r0
            r0 = r7
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r6
            r1 = r7
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f22477g = r1
            r0 = r6
            r5 = r0
            goto L_0x002e
        L_0x0025:
            kotlinx.coroutines.flow.FlowKt__CountKt$count$1 r0 = new kotlinx.coroutines.flow.FlowKt__CountKt$count$1
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r5 = r0
        L_0x002e:
            r0 = r5
            java.lang.Object r0 = r0.f22476f
            r6 = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r8 = r0
            r0 = r5
            int r0 = r0.f22477g
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006f
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0065
            r0 = r5
            java.lang.Object r0 = r0.f22480j
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            r4 = r0
            r0 = r5
            java.lang.Object r0 = r0.f22479i
            kotlin.jvm.internal.Ref$IntRef r0 = (kotlin.jvm.internal.Ref.IntRef) r0
            r4 = r0
            r0 = r5
            java.lang.Object r0 = r0.f22478h
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            r5 = r0
            r0 = r6
            kotlin.ResultKt.m2472b(r0)
            goto L_0x00b1
        L_0x0065:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x006f:
            r0 = r6
            kotlin.ResultKt.m2472b(r0)
            kotlin.jvm.internal.Ref$IntRef r0 = new kotlin.jvm.internal.Ref$IntRef
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = 0
            r0.f20749f = r1
            kotlinx.coroutines.flow.FlowKt__CountKt$count$$inlined$collect$1 r0 = new kotlinx.coroutines.flow.FlowKt__CountKt$count$$inlined$collect$1
            r1 = r0
            r2 = r6
            r1.<init>()
            r9 = r0
            r0 = r5
            r1 = r4
            r0.f22478h = r1
            r0 = r5
            r1 = r6
            r0.f22479i = r1
            r0 = r5
            r1 = r4
            r0.f22480j = r1
            r0 = r5
            r1 = 1
            r0.f22477g = r1
            r0 = r4
            r1 = r9
            r2 = r5
            java.lang.Object r0 = r0.mo589a(r1, r2)
            r1 = r8
            if (r0 != r1) goto L_0x00af
            r0 = r8
            return r0
        L_0x00af:
            r0 = r6
            r4 = r0
        L_0x00b1:
            r0 = r4
            int r0 = r0.f20749f
            java.lang.Integer r0 = kotlin.coroutines.jvm.internal.Boxing.m1917c(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__CountKt.m718a(kotlinx.coroutines.flow.Flow, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m717b(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.Flow<? extends T> r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super java.lang.Boolean>, ? extends java.lang.Object> r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.lang.Integer> r7) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__CountKt.m717b(kotlinx.coroutines.flow.Flow, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
