package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n��\n\u0002\u0010\u001f\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\"\n\u0002\b\u0003\u001a=\u0010\u0005\u001a\u00028\u0001\"\u0004\b��\u0010��\"\u0010\b\u0001\u0010\u0002*\n\u0012\u0006\b��\u0012\u00028��0\u0001*\b\u0012\u0004\u0012\u00028��0\u00032\u0006\u0010\u0004\u001a\u00028\u0001H\u0086@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u001a9\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0007H\u0086@ø\u0001��¢\u0006\u0004\b\t\u0010\n\u001a9\u0010\r\u001a\b\u0012\u0004\u0012\u00028��0\f\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u000bH\u0086@ø\u0001��¢\u0006\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"T", "", "C", "Lkotlinx/coroutines/flow/Flow;", FirebaseAnalytics.Param.DESTINATION, "toCollection", "(Lkotlinx/coroutines/flow/Flow;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "", "toList", "(Lkotlinx/coroutines/flow/Flow;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "", "toSet", "(Lkotlinx/coroutines/flow/Flow;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__CollectionKt.class */
public final /* synthetic */ class FlowKt__CollectionKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, C extends java.util.Collection<? super T>> java.lang.Object m722a(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.Flow<? extends T> r4, @org.jetbrains.annotations.NotNull final C r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super C> r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1
            if (r0 == 0) goto L_0x0028
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1 r0 = (kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f22455g
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0028
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f22455g = r1
            r0 = r7
            r6 = r0
            goto L_0x0031
        L_0x0028:
            kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1 r0 = new kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r6 = r0
        L_0x0031:
            r0 = r6
            java.lang.Object r0 = r0.f22454f
            r7 = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r9 = r0
            r0 = r6
            int r0 = r0.f22455g
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0075
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x006b
            r0 = r6
            java.lang.Object r0 = r0.f22458j
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            r4 = r0
            r0 = r6
            java.lang.Object r0 = r0.f22457i
            java.util.Collection r0 = (java.util.Collection) r0
            r5 = r0
            r0 = r6
            java.lang.Object r0 = r0.f22456h
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            r4 = r0
            r0 = r7
            kotlin.ResultKt.m2472b(r0)
            goto L_0x00a6
        L_0x006b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0075:
            r0 = r7
            kotlin.ResultKt.m2472b(r0)
            kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$$inlined$collect$1 r0 = new kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$$inlined$collect$1
            r1 = r0
            r2 = r5
            r1.<init>()
            r7 = r0
            r0 = r6
            r1 = r4
            r0.f22456h = r1
            r0 = r6
            r1 = r5
            r0.f22457i = r1
            r0 = r6
            r1 = r4
            r0.f22458j = r1
            r0 = r6
            r1 = 1
            r0.f22455g = r1
            r0 = r4
            r1 = r7
            r2 = r6
            java.lang.Object r0 = r0.mo589a(r1, r2)
            r1 = r9
            if (r0 != r1) goto L_0x00a6
            r0 = r9
            return r0
        L_0x00a6:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__CollectionKt.m722a(kotlinx.coroutines.flow.Flow, java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
