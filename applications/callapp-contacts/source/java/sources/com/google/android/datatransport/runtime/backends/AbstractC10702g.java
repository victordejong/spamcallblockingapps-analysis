package com.google.android.datatransport.runtime.backends;
/* renamed from: com.google.android.datatransport.runtime.backends.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/g.class */
public abstract class AbstractC10702g {

    /* renamed from: com.google.android.datatransport.runtime.backends.g$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/g$a.class */
    public enum EnumC10703a {
        OK,
        TRANSIENT_ERROR,
        FATAL_ERROR
    }

    /* renamed from: c */
    public static AbstractC10702g m22507c() {
        return new C10696b(EnumC10703a.TRANSIENT_ERROR, -1L);
    }

    /* renamed from: d */
    public static AbstractC10702g m22506d() {
        return new C10696b(EnumC10703a.FATAL_ERROR, -1L);
    }

    /* renamed from: a */
    public abstract EnumC10703a mo22509a();

    /* renamed from: b */
    public abstract long mo22508b();
}
