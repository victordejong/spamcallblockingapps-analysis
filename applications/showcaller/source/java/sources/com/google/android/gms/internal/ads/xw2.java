package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xw2.class */
final class xw2 {
    /* renamed from: a */
    public static int m9030a(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    /* renamed from: b */
    public static int m9029b(Object obj) {
        return m9030a(obj == null ? 0 : obj.hashCode());
    }
}
