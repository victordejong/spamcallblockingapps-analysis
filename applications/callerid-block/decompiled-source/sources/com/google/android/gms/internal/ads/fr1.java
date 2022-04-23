package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fr1.class */
public final class fr1 {

    /* renamed from: a */
    private final String f6580a;

    /* renamed from: b */
    private final String f6581b;

    private fr1(String str, String str2) {
        this.f6580a = str;
        this.f6581b = str2;
    }

    /* renamed from: a */
    public static fr1 m7456a(String str, String str2) {
        fs1.m7448b(str, "Name is null or empty");
        fs1.m7448b(str2, "Version is null or empty");
        return new fr1(str, str2);
    }

    /* renamed from: b */
    public final String m7455b() {
        return this.f6580a;
    }

    /* renamed from: c */
    public final String m7454c() {
        return this.f6581b;
    }
}
