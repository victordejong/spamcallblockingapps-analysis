package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecl.class */
final class ecl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ z f27626a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dzu f27627b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ecl(dzu dzuVar, z zVar) {
        this.f27627b = dzuVar;
        this.f27626a = zVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.f27627b.f27510c;
            blockingQueue.put(this.f27626a);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
