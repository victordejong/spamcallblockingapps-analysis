package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* renamed from: com.google.android.gms.internal.ads.lf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lf.class */
final class C6699lf {

    /* renamed from: a */
    public final String f26077a;

    /* renamed from: b */
    public final boolean f26078b;

    public C6699lf(String str, boolean z) {
        this.f26077a = str;
        this.f26078b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != C6699lf.class) {
            return false;
        }
        C6699lf c6699lf = (C6699lf) obj;
        return TextUtils.equals(this.f26077a, c6699lf.f26077a) && this.f26078b == c6699lf.f26078b;
    }

    public final int hashCode() {
        String str = this.f26077a;
        return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (true != this.f26078b ? 1237 : 1231);
    }
}
