package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeiw.class */
public final class zzeiw {
    public static boolean zzbfw() {
        boolean z = false;
        try {
            Class.forName("android.app.Application", false, null);
            z = true;
        } catch (Exception e) {
        }
        return z;
    }
}
