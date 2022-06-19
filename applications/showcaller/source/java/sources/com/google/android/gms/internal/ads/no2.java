package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/no2.class */
final class no2 {

    /* renamed from: a */
    public final String f27243a;

    /* renamed from: b */
    public final String f27244b;

    public no2(String str, String str2) {
        this.f27243a = str;
        this.f27244b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof no2)) {
            return false;
        }
        no2 no2Var = (no2) obj;
        return this.f27243a.equals(no2Var.f27243a) && this.f27244b.equals(no2Var.f27244b);
    }

    public final int hashCode() {
        String valueOf = String.valueOf(this.f27243a);
        String valueOf2 = String.valueOf(this.f27244b);
        return (valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).hashCode();
    }
}
