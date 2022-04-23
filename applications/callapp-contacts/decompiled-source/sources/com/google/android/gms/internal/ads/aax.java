package com.google.android.gms.internal.ads;

import android.os.Looper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aax.class */
public final class aax implements Runnable {
    /* JADX INFO: Access modifiers changed from: package-private */
    public aax(aau aauVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
