package com.google.android.gms.internal.ads;

import android.os.Looper;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.zz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zz.class */
public final class RunnableC3696zz implements Runnable {
    public RunnableC3696zz(aaa aaaVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
