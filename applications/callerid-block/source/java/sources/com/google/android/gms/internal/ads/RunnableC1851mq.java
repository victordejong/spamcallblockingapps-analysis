package com.google.android.gms.internal.ads;

import android.os.Looper;
/* renamed from: com.google.android.gms.internal.ads.mq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mq.class */
public final class RunnableC1851mq implements Runnable {
    public RunnableC1851mq(C1880oq c1880oq) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
