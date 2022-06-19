package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* renamed from: kotlinx.coroutines.n */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/n.class */
public final class C1937n extends C1945t {

    /* renamed from: b */
    private static final AtomicIntegerFieldUpdater f4688b = AtomicIntegerFieldUpdater.newUpdater(C1937n.class, "resumed");

    /* renamed from: c */
    private static final AtomicIntegerFieldUpdater f4689c = AtomicIntegerFieldUpdater.newUpdater(C1937n.class, "handled");
    private volatile int handled;
    private volatile int resumed;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1937n(kotlin.p075c.AbstractC1641c<?> r5, java.lang.Throwable r6, boolean r7) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "continuation"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r6
            if (r0 == 0) goto Ld
            goto L38
        Ld:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Continuation "
            java.lang.StringBuilder r0 = r0.append(r1)
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
            r6 = r0
        L38:
            r0 = r4
            r1 = r6
            r0.<init>(r1)
            r0 = r4
            r1 = 0
            r0.resumed = r1
            r0 = r4
            r1 = r7
            r0.handled = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1937n.<init>(kotlin.c.c, java.lang.Throwable, boolean):void");
    }

    /* renamed from: a */
    public final boolean m2529a() {
        return f4688b.compareAndSet(this, 0, 1);
    }

    /* renamed from: b */
    public final boolean m2528b() {
        return f4689c.compareAndSet(this, 0, 1);
    }
}
