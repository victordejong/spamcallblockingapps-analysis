package com.google.android.gms.internal.ads;

import android.os.Looper;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.mq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mq.class */
public final class RunnableC1851mq implements Runnable {
    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1851mq(C1880oq oqVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
