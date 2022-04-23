package com.google.android.datatransport.runtime.backends;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/g.class */
public abstract class g {

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/g$a.class */
    public enum a {
        OK,
        TRANSIENT_ERROR,
        FATAL_ERROR
    }

    public static g c() {
        return new b(a.TRANSIENT_ERROR, -1L);
    }

    public static g d() {
        return new b(a.FATAL_ERROR, -1L);
    }

    public abstract a a();

    public abstract long b();
}
