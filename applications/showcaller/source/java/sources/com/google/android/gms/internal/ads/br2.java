package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/br2.class */
public final class br2 {

    /* renamed from: a */
    private final BlockingQueue<Runnable> f20747a;

    /* renamed from: b */
    private final ThreadPoolExecutor f20748b;

    /* renamed from: c */
    private final ArrayDeque<ar2> f20749c = new ArrayDeque<>();

    /* renamed from: d */
    private ar2 f20750d = null;

    public br2() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f20747a = linkedBlockingQueue;
        this.f20748b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    /* renamed from: c */
    private final void m16252c() {
        ar2 poll = this.f20749c.poll();
        this.f20750d = poll;
        if (poll != null) {
            poll.executeOnExecutor(this.f20748b, new Object[0]);
        }
    }

    /* renamed from: a */
    public final void m16254a(ar2 ar2Var) {
        ar2Var.m16493b(this);
        this.f20749c.add(ar2Var);
        if (this.f20750d == null) {
            m16252c();
        }
    }

    /* renamed from: b */
    public final void m16253b(ar2 ar2Var) {
        this.f20750d = null;
        m16252c();
    }
}
