package com.bytedance.sdk.openadsdk.p184l;

import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.bytedance.sdk.openadsdk.l.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/b.class */
class RunnableC5049b implements Comparable, Runnable {

    /* renamed from: a */
    private AbstractRunnableC5055g f18283a;

    /* renamed from: b */
    private C5043a f18284b;

    /* renamed from: c */
    private long f18285c;

    /* renamed from: d */
    private Thread f18286d = null;

    public RunnableC5049b(AbstractRunnableC5055g abstractRunnableC5055g, C5043a c5043a) {
        this.f18283a = null;
        this.f18284b = null;
        this.f18285c = 0L;
        this.f18283a = abstractRunnableC5055g;
        this.f18284b = c5043a;
        this.f18285c = SystemClock.uptimeMillis();
    }

    /* renamed from: a */
    public AbstractRunnableC5055g m33169a() {
        return this.f18283a;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj instanceof RunnableC5049b) {
            return this.f18283a.compareTo(((RunnableC5049b) obj).m33169a());
        }
        return 0;
    }

    public boolean equals(Object obj) {
        AbstractRunnableC5055g abstractRunnableC5055g;
        return (obj instanceof RunnableC5049b) && (abstractRunnableC5055g = this.f18283a) != null && abstractRunnableC5055g.equals(((RunnableC5049b) obj).m33169a());
    }

    public int hashCode() {
        return this.f18283a.hashCode();
    }

    @Override // java.lang.Runnable
    public void run() {
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = uptimeMillis - this.f18285c;
        this.f18286d = Thread.currentThread();
        AbstractRunnableC5055g abstractRunnableC5055g = this.f18283a;
        if (abstractRunnableC5055g != null) {
            abstractRunnableC5055g.run();
        }
        long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
        C5043a c5043a = this.f18284b;
        if (c5043a != null) {
            C5051d.m33166a(c5043a, j, uptimeMillis2);
        }
        C5043a c5043a2 = this.f18284b;
        String str = JsonReaderKt.NULL;
        String m33193a = c5043a2 != null ? c5043a2.m33193a() : JsonReaderKt.NULL;
        AbstractRunnableC5055g abstractRunnableC5055g2 = this.f18283a;
        if (abstractRunnableC5055g2 != null) {
            str = abstractRunnableC5055g2.m33147b();
        }
        C5478q.m32116a("DelegateRunnable", "run: pool  = ", m33193a, " waitTime =", Long.valueOf(j), " taskCost = ", Long.valueOf(uptimeMillis2), " name=", str);
    }
}
