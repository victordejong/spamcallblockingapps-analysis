package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlp.class */
final class dlp {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f26928a = a("libcore.io.Memory");

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f26929b;

    static {
        f26929b = a("org.robolectric.Robolectric") != null;
    }

    private static <T> Class<T> a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return f26928a != null && !f26929b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> b() {
        return f26928a;
    }
}
