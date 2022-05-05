package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0002\u001a!\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0087@ø\u0001��¢\u0006\u0002\u0010\u0004\u001aE\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\"\u0010\u0005\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0087@ø\u0001��¢\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, m815d2 = {"count", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/Flow;", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__CountKt.class */
public final /* synthetic */ class FlowKt__CountKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    @kotlinx.coroutines.ExperimentalCoroutinesApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object count(kotlinx.coroutines.flow.Flow<? extends T> r4, p626l.p634w.AbstractC15044d<? super java.lang.Integer> r5) {
        /*
            r0 = r5
            boolean r0 = r0 instanceof kotlinx.coroutines.flow.FlowKt__CountKt$count$1
            if (r0 == 0) goto L_0x0025
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__CountKt$count$1 r0 = (kotlinx.coroutines.flow.FlowKt__CountKt$count$1) r0
            r6 = r0
            r0 = r6
            int r0 = r0.label
            r7 = r0
            r0 = r7
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r6
            r1 = r7
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.label = r1
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
            java.lang.Object r0 = r0.result
            r6 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r8 = r0
            r0 = r5
            int r0 = r0.label
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006f
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0065
            r0 = r5
            java.lang.Object r0 = r0.L$2
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            r4 = r0
            r0 = r5
            java.lang.Object r0 = r0.L$1
            l.z.d.x r0 = (p626l.p641z.p643d.C15162x) r0
            r4 = r0
            r0 = r5
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            r5 = r0
            r0 = r6
            p626l.C14982l.m653a(r0)
            goto L_0x00b1
        L_0x0065:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x006f:
            r0 = r6
            p626l.C14982l.m653a(r0)
            l.z.d.x r0 = new l.z.d.x
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = 0
            r0.f33150a = r1
            kotlinx.coroutines.flow.FlowKt__CountKt$count$$inlined$collect$1 r0 = new kotlinx.coroutines.flow.FlowKt__CountKt$count$$inlined$collect$1
            r1 = r0
            r2 = r6
            r1.<init>()
            r9 = r0
            r0 = r5
            r1 = r4
            r0.L$0 = r1
            r0 = r5
            r1 = r6
            r0.L$1 = r1
            r0 = r5
            r1 = r4
            r0.L$2 = r1
            r0 = r5
            r1 = 1
            r0.label = r1
            r0 = r4
            r1 = r9
            r2 = r5
            java.lang.Object r0 = r0.collect(r1, r2)
            r1 = r8
            if (r0 != r1) goto L_0x00af
            r0 = r8
            return r0
        L_0x00af:
            r0 = r6
            r4 = r0
        L_0x00b1:
            r0 = r4
            int r0 = r0.f33150a
            java.lang.Integer r0 = p626l.p634w.p636k.p637a.C15066b.m476a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__CountKt.count(kotlinx.coroutines.flow.Flow, l.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    @kotlinx.coroutines.ExperimentalCoroutinesApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object count(kotlinx.coroutines.flow.Flow<? extends T> r5, p626l.p641z.p642c.AbstractC15122p<? super T, ? super p626l.p634w.AbstractC15044d<? super java.lang.Boolean>, ? extends java.lang.Object> r6, p626l.p634w.AbstractC15044d<? super java.lang.Integer> r7) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__CountKt.count(kotlinx.coroutines.flow.Flow, l.z.c.p, l.w.d):java.lang.Object");
    }
}
