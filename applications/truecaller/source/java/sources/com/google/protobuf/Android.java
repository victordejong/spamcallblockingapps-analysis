package com.google.protobuf;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/Android.class */
public final class Android {
    private static boolean ASSUME_ANDROID;
    private static final boolean IS_ROBOLECTRIC;
    private static final Class<?> MEMORY_CLASS = getClassForName("libcore.io.Memory");

    static {
        IS_ROBOLECTRIC = !ASSUME_ANDROID && getClassForName("org.robolectric.Robolectric") != null;
    }

    private Android() {
    }

    private static <T> Class<T> getClassForName(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    public static Class<?> getMemoryClass() {
        return MEMORY_CLASS;
    }

    public static boolean isOnAndroidDevice() {
        return ASSUME_ANDROID || (MEMORY_CLASS != null && !IS_ROBOLECTRIC);
    }
}
