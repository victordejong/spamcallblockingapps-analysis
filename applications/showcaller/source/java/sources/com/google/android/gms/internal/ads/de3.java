package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/de3.class */
final class de3 implements kf3 {

    /* renamed from: a */
    private static final de3 f21596a = new de3();

    private de3() {
    }

    /* renamed from: c */
    public static de3 m15830c() {
        return f21596a;
    }

    @Override // com.google.android.gms.internal.ads.kf3
    /* renamed from: a */
    public final boolean mo13914a(Class<?> cls) {
        return ie3.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.kf3
    /* renamed from: b */
    public final jf3 mo13913b(Class<?> cls) {
        if (!ie3.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (jf3) ie3.m14415y(cls.asSubclass(ie3.class)).mo8268B(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }
}
