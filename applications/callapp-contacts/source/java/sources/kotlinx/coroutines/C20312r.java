package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\b��\u0018��2\u00020\fB%\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, m4298d2 = {"Lkotlinx/coroutines/CancelledContinuation;", "Lkotlin/coroutines/Continuation;", "continuation", "", "cause", "", "handled", "<init>", "(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V", "makeResumed", "()Z", "kotlinx-coroutines-core", "Lkotlinx/coroutines/CompletedExceptionally;"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.r */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/r.class */
public final class C20312r extends C20322z {

    /* renamed from: a */
    static final /* synthetic */ AtomicIntegerFieldUpdater f66788a = AtomicIntegerFieldUpdater.newUpdater(C20312r.class, "_resumed");
    private volatile /* synthetic */ int _resumed;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20312r(kotlin.p521c.AbstractC18332d<?> r5, java.lang.Throwable r6, boolean r7) {
        /*
            r4 = this;
            r0 = r6
            r8 = r0
            r0 = r6
            if (r0 != 0) goto L2e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Continuation "
            r1.<init>(r2)
            r6 = r0
            r0 = r6
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = " was cancelled normally"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.util.concurrent.CancellationException r0 = new java.util.concurrent.CancellationException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r8 = r0
        L2e:
            r0 = r4
            r1 = r8
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r4
            r1 = 0
            r0._resumed = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C20312r.<init>(kotlin.c.d, java.lang.Throwable, boolean):void");
    }
}
