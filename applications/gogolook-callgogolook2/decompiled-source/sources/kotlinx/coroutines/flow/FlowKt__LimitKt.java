package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import p459j.p460a.p541n0.C13032a;
import p626l.p634w.AbstractC15044d;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a&\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001aJ\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007H\u0007ø\u0001��¢\u0006\u0002\u0010\u000b\u001a+\u0010\f\u001a\u00020\r\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\u0002H\u0082@ø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011\u001a&\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001aJ\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\"\u0010\u0006\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007H\u0007ø\u0001��¢\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, m815d2 = {"drop", "Lkotlinx/coroutines/flow/Flow;", ExifInterface.GPS_DIRECTION_TRUE, "count", "", "dropWhile", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;", "emitAbort", "", "Lkotlinx/coroutines/flow/FlowCollector;", C13032a.f29462d, "emitAbort$FlowKt__LimitKt", "(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "take", "takeWhile", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__LimitKt.class */
public final /* synthetic */ class FlowKt__LimitKt {
    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> drop(Flow<? extends T> flow, int i) {
        if (i >= 0) {
            return new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(flow, i);
        }
        throw new IllegalArgumentException(("Drop count should be non-negative, but had " + i).toString());
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> dropWhile(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return new FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1(flow, pVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ <T> java.lang.Object emitAbort$FlowKt__LimitKt(kotlinx.coroutines.flow.FlowCollector<? super T> r4, T r5, p626l.p634w.AbstractC15044d<? super p626l.C14989s> r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1
            if (r0 == 0) goto L_0x0028
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.label
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0028
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.label = r1
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
            java.lang.Object r0 = r0.result
            r9 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r10 = r0
            r0 = r6
            int r0 = r0.label
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
            java.lang.Object r0 = r0.L$1
            r4 = r0
            r0 = r6
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.flow.FlowCollector r0 = (kotlinx.coroutines.flow.FlowCollector) r0
            r7 = r0
            r0 = r9
            p626l.C14982l.m653a(r0)
            goto L_0x0092
        L_0x006c:
            r0 = r9
            p626l.C14982l.m653a(r0)
            r0 = r6
            r1 = r4
            r0.L$0 = r1
            r0 = r6
            r1 = r5
            r0.L$1 = r1
            r0 = r6
            r1 = 1
            r0.label = r1
            r0 = r4
            r7 = r0
            r0 = r4
            r1 = r5
            r2 = r6
            java.lang.Object r0 = r0.emit(r1, r2)
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
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt.emitAbort$FlowKt__LimitKt(kotlinx.coroutines.flow.FlowCollector, java.lang.Object, l.w.d):java.lang.Object");
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> take(Flow<? extends T> flow, int i) {
        if (i > 0) {
            return new FlowKt__LimitKt$take$$inlined$unsafeFlow$1(flow, i);
        }
        throw new IllegalArgumentException(("Requested element count " + i + " should be positive").toString());
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> takeWhile(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(flow, pVar);
    }
}
