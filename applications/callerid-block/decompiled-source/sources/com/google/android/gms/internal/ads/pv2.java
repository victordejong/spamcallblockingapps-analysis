package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pv2.class */
public final class pv2 {

    /* renamed from: a */
    private final String f8172a;

    /* renamed from: b */
    private final String f8173b;

    public pv2(String str, String str2) {
        this.f8172a = str;
        this.f8173b = str2;
    }

    /* renamed from: a */
    public final String m6158a() {
        return this.f8172a;
    }

    /* renamed from: b */
    public final String m6157b() {
        return this.f8173b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || pv2.class != obj.getClass()) {
            return false;
        }
        pv2 pv2Var = (pv2) obj;
        return TextUtils.equals(this.f8172a, pv2Var.f8172a) && TextUtils.equals(this.f8173b, pv2Var.f8173b);
    }

    public final int hashCode() {
        return (this.f8172a.hashCode() * 31) + this.f8173b.hashCode();
    }

    public final String toString() {
        String str = this.f8172a;
        String str2 = this.f8173b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length());
        sb.append("Header[name=");
        sb.append(str);
        sb.append(",value=");
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }
}
