package com.google.android.gms.internal.ads;

import android.os.Looper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbk.class */
public final class zzbbk implements Runnable {
    public zzbbk(zzbbh zzbbhVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
