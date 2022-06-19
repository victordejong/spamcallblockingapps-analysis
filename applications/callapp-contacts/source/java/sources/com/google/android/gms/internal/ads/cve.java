package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cve.class */
final class cve extends cvc {

    /* renamed from: a */
    private final String f46612a;

    /* renamed from: b */
    private final boolean f46613b;

    /* renamed from: c */
    private final boolean f46614c;

    /* JADX INFO: Access modifiers changed from: private */
    public cve(String str, boolean z, boolean z2) {
        this.f46612a = str;
        this.f46613b = z;
        this.f46614c = z2;
    }

    @Override // com.google.android.gms.internal.ads.cvc
    /* renamed from: a */
    public final String mo17182a() {
        return this.f46612a;
    }

    @Override // com.google.android.gms.internal.ads.cvc
    /* renamed from: b */
    public final boolean mo17181b() {
        return this.f46613b;
    }

    @Override // com.google.android.gms.internal.ads.cvc
    /* renamed from: c */
    public final boolean mo17180c() {
        return this.f46614c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cvc)) {
            return false;
        }
        cvc cvcVar = (cvc) obj;
        return this.f46612a.equals(cvcVar.mo17182a()) && this.f46613b == cvcVar.mo17181b() && this.f46614c == cvcVar.mo17180c();
    }

    public final int hashCode() {
        int hashCode = this.f46612a.hashCode();
        int i = 1231;
        int i2 = this.f46613b ? 1231 : 1237;
        if (!this.f46614c) {
            i = 1237;
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public final String toString() {
        String str = this.f46612a;
        boolean z = this.f46613b;
        boolean z2 = this.f46614c;
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
