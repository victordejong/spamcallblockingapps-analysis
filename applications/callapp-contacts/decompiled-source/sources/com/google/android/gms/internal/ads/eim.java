package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eim.class */
public final class eim {

    /* renamed from: a  reason: collision with root package name */
    final String f27864a;

    /* renamed from: b  reason: collision with root package name */
    final String f27865b;

    public eim(String str, String str2) {
        this.f27864a = str;
        this.f27865b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        eim eimVar = (eim) obj;
        return TextUtils.equals(this.f27864a, eimVar.f27864a) && TextUtils.equals(this.f27865b, eimVar.f27865b);
    }

    public final int hashCode() {
        return (this.f27864a.hashCode() * 31) + this.f27865b.hashCode();
    }

    public final String toString() {
        String str = this.f27864a;
        String str2 = this.f27865b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length());
        sb.append("Header[name=");
        sb.append(str);
        sb.append(",value=");
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }
}
