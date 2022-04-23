package com.bytedance.sdk.openadsdk.l;

import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.utils.q;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/b.class */
class b implements Comparable, Runnable {

    /* renamed from: a  reason: collision with root package name */
    private g f9819a;

    /* renamed from: b  reason: collision with root package name */
    private a f9820b;

    /* renamed from: c  reason: collision with root package name */
    private long f9821c;

    /* renamed from: d  reason: collision with root package name */
    private Thread f9822d = null;

    public b(g gVar, a aVar) {
        this.f9819a = null;
        this.f9820b = null;
        this.f9821c = 0L;
        this.f9819a = gVar;
        this.f9820b = aVar;
        this.f9821c = SystemClock.uptimeMillis();
    }

    public g a() {
        return this.f9819a;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj instanceof b) {
            return this.f9819a.compareTo(((b) obj).a());
        }
        return 0;
    }

    public boolean equals(Object obj) {
        g gVar;
        return (obj instanceof b) && (gVar = this.f9819a) != null && gVar.equals(((b) obj).a());
    }

    public int hashCode() {
        return this.f9819a.hashCode();
    }

    @Override // java.lang.Runnable
    public void run() {
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = uptimeMillis - this.f9821c;
        this.f9822d = Thread.currentThread();
        g gVar = this.f9819a;
        if (gVar != null) {
            gVar.run();
        }
        long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
        a aVar = this.f9820b;
        if (aVar != null) {
            d.a(aVar, j, uptimeMillis2);
        }
        a aVar2 = this.f9820b;
        String str = JsonReaderKt.NULL;
        String a2 = aVar2 != null ? aVar2.a() : JsonReaderKt.NULL;
        g gVar2 = this.f9819a;
        if (gVar2 != null) {
            str = gVar2.b();
        }
        q.a("DelegateRunnable", "run: pool  = ", a2, " waitTime =", Long.valueOf(j), " taskCost = ", Long.valueOf(uptimeMillis2), " name=", str);
    }
}
