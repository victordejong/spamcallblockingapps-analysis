package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f53.class */
final class f53 {

    /* renamed from: a */
    public final String f22731a;

    /* renamed from: b */
    public final boolean f22732b;

    /* renamed from: c */
    public final boolean f22733c;

    public f53(String str, boolean z, boolean z2) {
        this.f22731a = str;
        this.f22732b = z;
        this.f22733c = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != f53.class) {
            return false;
        }
        f53 f53Var = (f53) obj;
        return TextUtils.equals(this.f22731a, f53Var.f22731a) && this.f22732b == f53Var.f22732b && this.f22733c == f53Var.f22733c;
    }

    public final int hashCode() {
        int hashCode = this.f22731a.hashCode();
        int i = 1237;
        int i2 = true != this.f22732b ? 1237 : 1231;
        if (true == this.f22733c) {
            i = 1231;
        }
        return ((((hashCode + 31) * 31) + i2) * 31) + i;
    }
}
