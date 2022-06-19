package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f13.class */
public final class f13 {
    /* renamed from: a */
    public static <V> V m15326a(Future<V> future) {
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
