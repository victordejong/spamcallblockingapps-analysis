package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eq1.class */
final class eq1 {

    /* renamed from: a */
    public final String f6444a;

    /* renamed from: b */
    public final String f6445b;

    public eq1(String str, String str2) {
        this.f6444a = str;
        this.f6445b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eq1)) {
            return false;
        }
        eq1 eq1Var = (eq1) obj;
        return this.f6444a.equals(eq1Var.f6444a) && this.f6445b.equals(eq1Var.f6445b);
    }

    public final int hashCode() {
        String valueOf = String.valueOf(this.f6444a);
        String valueOf2 = String.valueOf(this.f6445b);
        return (valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).hashCode();
    }
}
