package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzu.class */
public final class zzu {

    /* renamed from: a */
    public final String f28986a;

    /* renamed from: b */
    public final String f28987b;

    public zzu(String str, String str2) {
        this.f28986a = str;
        this.f28987b = str2;
    }

    /* renamed from: a */
    public final String m11417a() {
        return this.f28986a;
    }

    /* renamed from: b */
    public final String m11416b() {
        return this.f28987b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzu.class != obj.getClass()) {
            return false;
        }
        zzu zzuVar = (zzu) obj;
        return TextUtils.equals(this.f28986a, zzuVar.f28986a) && TextUtils.equals(this.f28987b, zzuVar.f28987b);
    }

    public final int hashCode() {
        return (this.f28986a.hashCode() * 31) + this.f28987b.hashCode();
    }

    public final String toString() {
        String str = this.f28986a;
        String str2 = this.f28987b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length());
        sb.append("Header[name=");
        sb.append(str);
        sb.append(",value=");
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }
}
