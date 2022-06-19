package com.google.android.gms.internal.ads;

import android.os.Looper;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aax.class */
public final class aax implements Runnable {
    public aax(aau aauVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
