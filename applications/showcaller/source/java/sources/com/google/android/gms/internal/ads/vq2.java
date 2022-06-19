package com.google.android.gms.internal.ads;

import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vq2.class */
final class vq2 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        Runnable runnable;
        Handler handler3;
        Runnable runnable2;
        handler = yq2.f32599c;
        if (handler != null) {
            handler2 = yq2.f32599c;
            runnable = yq2.f32600d;
            handler2.post(runnable);
            handler3 = yq2.f32599c;
            runnable2 = yq2.f32601e;
            handler3.postDelayed(runnable2, 200L);
        }
    }
}
