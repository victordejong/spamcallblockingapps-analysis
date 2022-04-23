package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ts1.class */
public final class ts1 {

    /* renamed from: a */
    private final BlockingQueue<Runnable> f8721a;

    /* renamed from: b */
    private final ThreadPoolExecutor f8722b;

    /* renamed from: c */
    private final ArrayDeque<ss1> f8723c = new ArrayDeque<>();

    /* renamed from: d */
    private ss1 f8724d = null;

    public ts1() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f8721a = linkedBlockingQueue;
        this.f8722b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    /* renamed from: c */
    private final void m5474c() {
        ss1 poll = this.f8723c.poll();
        this.f8724d = poll;
        if (poll != null) {
            poll.executeOnExecutor(this.f8722b, new Object[0]);
        }
    }

    /* renamed from: a */
    public final void m5476a(ss1 ss1Var) {
        ss1Var.m5592b(this);
        this.f8723c.add(ss1Var);
        if (this.f8724d == null) {
            m5474c();
        }
    }

    /* renamed from: b */
    public final void m5475b(ss1 ss1Var) {
        this.f8724d = null;
        m5474c();
    }
}
