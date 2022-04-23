package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzua.class */
final class zzua {
    private static final Class<?> zzbtv = zzfu("libcore.io.Memory");
    private static final boolean zzbtw;

    static {
        zzbtw = zzfu("org.robolectric.Robolectric") != null;
    }

    private static <T> Class<T> zzfu(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzty() {
        return zzbtv != null && !zzbtw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> zztz() {
        return zzbtv;
    }
}
