package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/op2.class */
public final class op2 {

    /* renamed from: a */
    private final String f27670a;

    /* renamed from: b */
    private final String f27671b;

    private op2(String str, String str2) {
        this.f27670a = str;
        this.f27671b = str2;
    }

    /* renamed from: a */
    public static op2 m12549a(String str, String str2) {
        oq2.m12545b(str, "Name is null or empty");
        oq2.m12545b(str2, "Version is null or empty");
        return new op2(str, str2);
    }

    /* renamed from: b */
    public final String m12548b() {
        return this.f27670a;
    }

    /* renamed from: c */
    public final String m12547c() {
        return this.f27671b;
    }
}
