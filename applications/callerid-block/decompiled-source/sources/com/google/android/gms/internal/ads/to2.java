package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/to2.class */
final class to2 {

    /* renamed from: a */
    public final String f8705a;

    /* renamed from: b */
    public final boolean f8706b;

    public to2(String str, boolean z) {
        this.f8705a = str;
        this.f8706b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != to2.class) {
            return false;
        }
        to2 to2Var = (to2) obj;
        return TextUtils.equals(this.f8705a, to2Var.f8705a) && this.f8706b == to2Var.f8706b;
    }

    public final int hashCode() {
        String str = this.f8705a;
        return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (true != this.f8706b ? 1237 : 1231);
    }
}
