package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/f02.class */
public final class f02 {
    /* renamed from: a */
    public static <V> V m7579a(Future<V> future) {
        boolean z;
        V v;
        boolean z2 = false;
        while (true) {
            try {
                z = z2;
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z2 = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }
}
