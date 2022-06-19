package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecl.class */
final class ecl implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC13087z f48690a;

    /* renamed from: b */
    private final /* synthetic */ dzu f48691b;

    public ecl(dzu dzuVar, AbstractC13087z abstractC13087z) {
        this.f48691b = dzuVar;
        this.f48690a = abstractC13087z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.f48691b.f48453c;
            blockingQueue.put(this.f48690a);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
