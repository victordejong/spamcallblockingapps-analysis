package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/diz.class */
public final class diz implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ dts f14464a;

    /* renamed from: b */
    private final /* synthetic */ aza f14465b;

    public diz(aza azaVar, dts dtsVar) {
        this.f14465b = azaVar;
        this.f14464a = dtsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.f14465b.f10674c;
            blockingQueue.put(this.f14464a);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
