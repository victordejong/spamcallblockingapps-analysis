package kotlinx.coroutines;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\u001a?\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��2\u001e\u0010\u0003\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028��0\u00020\u0001\"\b\u0012\u0004\u0012\u00028��0\u0002H\u0086@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\n\u001a\u00020\t2\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0001\"\u00020\u0007H\u0086@ø\u0001��¢\u0006\u0004\b\n\u0010\u000b\u001a/\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010��*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00020\fH\u0086@ø\u0001��¢\u0006\u0004\b\u0005\u0010\r\u001a\u001d\u0010\n\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\u00070\fH\u0086@ø\u0001��¢\u0006\u0004\b\n\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"T", "", "Lkotlinx/coroutines/Deferred;", "deferreds", "", "awaitAll", "([Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/Job;", "jobs", "", "joinAll", "([Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/AwaitKt.class */
public final class AwaitKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m1378a(@org.jetbrains.annotations.NotNull java.util.Collection<? extends kotlinx.coroutines.Deferred<? extends T>> r4, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.util.List<? extends T>> r5) {
        /*
            Method dump skipped, instructions count: 188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.m1378a(java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m1377b(@org.jetbrains.annotations.NotNull kotlinx.coroutines.Deferred<? extends T>[] r4, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.util.List<? extends T>> r5) {
        /*
            r0 = r5
            boolean r0 = r0 instanceof kotlinx.coroutines.AwaitKt$awaitAll$1
            if (r0 == 0) goto L_0x0025
            r0 = r5
            kotlinx.coroutines.AwaitKt$awaitAll$1 r0 = (kotlinx.coroutines.AwaitKt$awaitAll$1) r0
            r6 = r0
            r0 = r6
            int r0 = r0.f21084g
            r7 = r0
            r0 = r7
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r6
            r1 = r7
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f21084g = r1
            r0 = r6
            r5 = r0
            goto L_0x002e
        L_0x0025:
            kotlinx.coroutines.AwaitKt$awaitAll$1 r0 = new kotlinx.coroutines.AwaitKt$awaitAll$1
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r5 = r0
        L_0x002e:
            r0 = r5
            java.lang.Object r0 = r0.f21083f
            r6 = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r8 = r0
            r0 = r5
            int r0 = r0.f21084g
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0061
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0057
            r0 = r5
            java.lang.Object r0 = r0.f21085h
            kotlinx.coroutines.Deferred[] r0 = (kotlinx.coroutines.Deferred[]) r0
            r4 = r0
            r0 = r6
            kotlin.ResultKt.m2472b(r0)
            r0 = r6
            r4 = r0
            goto L_0x00a0
        L_0x0057:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0061:
            r0 = r6
            kotlin.ResultKt.m2472b(r0)
            r0 = r4
            int r0 = r0.length
            if (r0 != 0) goto L_0x006f
            r0 = 1
            r7 = r0
            goto L_0x0071
        L_0x006f:
            r0 = 0
            r7 = r0
        L_0x0071:
            r0 = r7
            if (r0 == 0) goto L_0x007c
            java.util.List r0 = kotlin.collections.CollectionsKt.m2196f()
            r4 = r0
            goto L_0x00a5
        L_0x007c:
            kotlinx.coroutines.AwaitAll r0 = new kotlinx.coroutines.AwaitAll
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r6 = r0
            r0 = r5
            r1 = r4
            r0.f21085h = r1
            r0 = r5
            r1 = 1
            r0.f21084g = r1
            r0 = r6
            r1 = r5
            java.lang.Object r0 = r0.m1384b(r1)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = r8
            if (r0 != r1) goto L_0x00a0
            r0 = r8
            return r0
        L_0x00a0:
            r0 = r4
            java.util.List r0 = (java.util.List) r0
            r4 = r0
        L_0x00a5:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.m1377b(kotlinx.coroutines.Deferred[], kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009e  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m1376c(@org.jetbrains.annotations.NotNull java.util.Collection<? extends kotlinx.coroutines.Job> r4, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.m1376c(java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0114  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0102 -> B:22:0x0107). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m1375d(@org.jetbrains.annotations.NotNull kotlinx.coroutines.Job[] r4, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.m1375d(kotlinx.coroutines.Job[], kotlin.coroutines.Continuation):java.lang.Object");
    }
}
