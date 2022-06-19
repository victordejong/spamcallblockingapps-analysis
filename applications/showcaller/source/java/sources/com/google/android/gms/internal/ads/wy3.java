package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wy3.class */
public final class wy3 {

    /* renamed from: a */
    private final String f31848a;

    /* renamed from: b */
    private final String f31849b;

    public wy3(String str, String str2) {
        this.f31848a = str;
        this.f31849b = str2;
    }

    /* renamed from: a */
    public final String m9415a() {
        return this.f31848a;
    }

    /* renamed from: b */
    public final String m9414b() {
        return this.f31849b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || wy3.class != obj.getClass()) {
            return false;
        }
        wy3 wy3Var = (wy3) obj;
        return TextUtils.equals(this.f31848a, wy3Var.f31848a) && TextUtils.equals(this.f31849b, wy3Var.f31849b);
    }

    public final int hashCode() {
        return (this.f31848a.hashCode() * 31) + this.f31849b.hashCode();
    }

    public final String toString() {
        String str = this.f31848a;
        String str2 = this.f31849b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length());
        sb.append("Header[name=");
        sb.append(str);
        sb.append(",value=");
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }
}
