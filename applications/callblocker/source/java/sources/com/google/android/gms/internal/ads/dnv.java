package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dnv.class */
public final class dnv {

    /* renamed from: a */
    private final String f14913a;

    /* renamed from: b */
    private final String f14914b;

    public dnv(String str, String str2) {
        this.f14913a = str;
        this.f14914b = str2;
    }

    /* renamed from: a */
    public final String m9048a() {
        return this.f14913a;
    }

    /* renamed from: b */
    public final String m9047b() {
        return this.f14914b;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                dnv dnvVar = (dnv) obj;
                if (!TextUtils.equals(this.f14913a, dnvVar.f14913a) || !TextUtils.equals(this.f14914b, dnvVar.f14914b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return (this.f14913a.hashCode() * 31) + this.f14914b.hashCode();
    }

    public final String toString() {
        String str = this.f14913a;
        String str2 = this.f14914b;
        return new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length()).append("Header[name=").append(str).append(",value=").append(str2).append("]").toString();
    }
}
