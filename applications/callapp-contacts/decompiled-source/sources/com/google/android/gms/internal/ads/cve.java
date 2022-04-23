package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cve.class */
final class cve extends cvc {

    /* renamed from: a  reason: collision with root package name */
    private final String f26455a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f26456b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f26457c;

    private cve(String str, boolean z, boolean z2) {
        this.f26455a = str;
        this.f26456b = z;
        this.f26457c = z2;
    }

    @Override // com.google.android.gms.internal.ads.cvc
    public final String a() {
        return this.f26455a;
    }

    @Override // com.google.android.gms.internal.ads.cvc
    public final boolean b() {
        return this.f26456b;
    }

    @Override // com.google.android.gms.internal.ads.cvc
    public final boolean c() {
        return this.f26457c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cvc)) {
            return false;
        }
        cvc cvcVar = (cvc) obj;
        return this.f26455a.equals(cvcVar.a()) && this.f26456b == cvcVar.b() && this.f26457c == cvcVar.c();
    }

    public final int hashCode() {
        int hashCode = this.f26455a.hashCode();
        int i = 1231;
        int i2 = this.f26456b ? 1231 : 1237;
        if (!this.f26457c) {
            i = 1237;
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public final String toString() {
        String str = this.f26455a;
        boolean z = this.f26456b;
        boolean z2 = this.f26457c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 99);
        sb.append("AdShield2Options{clientVersion=");
        sb.append(str);
        sb.append(", shouldGetAdvertisingId=");
        sb.append(z);
        sb.append(", isGooglePlayServicesAvailable=");
        sb.append(z2);
        sb.append("}");
        return sb.toString();
    }
}
