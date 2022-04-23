package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aG\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032'\u0010\u0004\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tø\u0001��¢\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, m815d2 = {"runBlocking", ExifInterface.GPS_DIRECTION_TRUE, "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/BuildersKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/BuildersKt__BuildersKt.class */
public final /* synthetic */ class BuildersKt__BuildersKt {
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
        if (r10 != null) goto L_0x0066;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> T runBlocking(p626l.p634w.AbstractC15049g r6, p626l.p641z.p642c.AbstractC15122p<? super kotlinx.coroutines.CoroutineScope, ? super p626l.p634w.AbstractC15044d<? super T>, ? extends java.lang.Object> r7) throws java.lang.InterruptedException {
        /*
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r8 = r0
            r0 = r6
            l.w.e$b r1 = p626l.p634w.AbstractC15045e.f33077M
            l.w.g$b r0 = r0.get(r1)
            l.w.e r0 = (p626l.p634w.AbstractC15045e) r0
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x002f
            kotlinx.coroutines.ThreadLocalEventLoop r0 = kotlinx.coroutines.ThreadLocalEventLoop.INSTANCE
            kotlinx.coroutines.EventLoop r0 = r0.getEventLoop$kotlinx_coroutines_core()
            r10 = r0
            kotlinx.coroutines.GlobalScope r0 = kotlinx.coroutines.GlobalScope.INSTANCE
            r1 = r6
            r2 = r10
            l.w.g r1 = r1.plus(r2)
            l.w.g r0 = kotlinx.coroutines.CoroutineContextKt.newCoroutineContext(r0, r1)
            r6 = r0
            goto L_0x006e
        L_0x002f:
            r0 = r9
            r10 = r0
            r0 = r9
            boolean r0 = r0 instanceof kotlinx.coroutines.EventLoop
            if (r0 != 0) goto L_0x003c
            r0 = 0
            r10 = r0
        L_0x003c:
            r0 = r10
            kotlinx.coroutines.EventLoop r0 = (kotlinx.coroutines.EventLoop) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x005e
            r0 = r10
            boolean r0 = r0.shouldBeProcessedFromContext()
            if (r0 == 0) goto L_0x0053
            goto L_0x0056
        L_0x0053:
            r0 = 0
            r10 = r0
        L_0x0056:
            r0 = r10
            if (r0 == 0) goto L_0x005e
            goto L_0x0066
        L_0x005e:
            kotlinx.coroutines.ThreadLocalEventLoop r0 = kotlinx.coroutines.ThreadLocalEventLoop.INSTANCE
            kotlinx.coroutines.EventLoop r0 = r0.currentOrNull$kotlinx_coroutines_core()
            r10 = r0
        L_0x0066:
            kotlinx.coroutines.GlobalScope r0 = kotlinx.coroutines.GlobalScope.INSTANCE
            r1 = r6
            l.w.g r0 = kotlinx.coroutines.CoroutineContextKt.newCoroutineContext(r0, r1)
            r6 = r0
        L_0x006e:
            kotlinx.coroutines.BlockingCoroutine r0 = new kotlinx.coroutines.BlockingCoroutine
            r1 = r0
            r2 = r6
            r3 = r8
            r4 = r10
            r1.<init>(r2, r3, r4)
            r6 = r0
            r0 = r6
            kotlinx.coroutines.CoroutineStart r1 = kotlinx.coroutines.CoroutineStart.DEFAULT
            r2 = r6
            r3 = r7
            r0.start(r1, r2, r3)
            r0 = r6
            java.lang.Object r0 = r0.joinBlocking()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.BuildersKt__BuildersKt.runBlocking(l.w.g, l.z.c.p):java.lang.Object");
    }

    public static /* synthetic */ Object runBlocking$default(AbstractC15049g gVar, AbstractC15122p pVar, int i, Object obj) throws InterruptedException {
        if ((i & 1) != 0) {
            gVar = C15055h.f33080a;
        }
        return BuildersKt.runBlocking(gVar, pVar);
    }
}
