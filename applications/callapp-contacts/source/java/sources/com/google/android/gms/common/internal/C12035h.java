package com.google.android.gms.common.internal;
/* renamed from: com.google.android.gms.common.internal.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/h.class */
public final class C12035h {

    /* renamed from: a */
    private final String f39561a;

    /* renamed from: b */
    private final String f39562b;

    public C12035h(String str) {
        this(str, null);
    }

    public C12035h(String str, String str2) {
        C12045o.m19161a(str, (Object) "log tag cannot be null");
        C12045o.m19156a(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f39561a = str;
        if (str2 == null || str2.length() <= 0) {
            this.f39562b = null;
        } else {
            this.f39562b = str2;
        }
    }
}
