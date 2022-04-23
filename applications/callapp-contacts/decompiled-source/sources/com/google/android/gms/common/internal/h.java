package com.google.android.gms.common.internal;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final String f22895a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22896b;

    public h(String str) {
        this(str, null);
    }

    public h(String str, String str2) {
        o.a(str, (Object) "log tag cannot be null");
        o.a(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f22895a = str;
        if (str2 == null || str2.length() <= 0) {
            this.f22896b = null;
        } else {
            this.f22896b = str2;
        }
    }
}
