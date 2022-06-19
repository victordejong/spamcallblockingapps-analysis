package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eim.class */
public final class eim {

    /* renamed from: a */
    final String f49055a;

    /* renamed from: b */
    final String f49056b;

    public eim(String str, String str2) {
        this.f49055a = str;
        this.f49056b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        eim eimVar = (eim) obj;
        return TextUtils.equals(this.f49055a, eimVar.f49055a) && TextUtils.equals(this.f49056b, eimVar.f49056b);
    }

    public final int hashCode() {
        return (this.f49055a.hashCode() * 31) + this.f49056b.hashCode();
    }

    public final String toString() {
        String str = this.f49055a;
        String str2 = this.f49056b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length());
        sb.append("Header[name=");
        sb.append(str);
        sb.append(",value=");
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }
}
