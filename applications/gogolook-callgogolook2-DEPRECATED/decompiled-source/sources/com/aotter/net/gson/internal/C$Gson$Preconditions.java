package com.aotter.net.gson.internal;
/* renamed from: com.aotter.net.gson.internal.$Gson$Preconditions  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/$Gson$Preconditions.class */
public final class C$Gson$Preconditions {
    public C$Gson$Preconditions() {
        throw new UnsupportedOperationException();
    }

    public static void checkArgument(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }
}
