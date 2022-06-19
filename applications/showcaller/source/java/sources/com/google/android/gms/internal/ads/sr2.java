package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sr2.class */
final class sr2 extends or2 {

    /* renamed from: a */
    private final String f29635a;

    /* renamed from: b */
    private final boolean f29636b;

    /* renamed from: c */
    private final boolean f29637c;

    public /* synthetic */ sr2(String str, boolean z, boolean z2, rr2 rr2Var) {
        this.f29635a = str;
        this.f29636b = z;
        this.f29637c = z2;
    }

    @Override // com.google.android.gms.internal.ads.or2
    /* renamed from: a */
    public final String mo10920a() {
        return this.f29635a;
    }

    @Override // com.google.android.gms.internal.ads.or2
    /* renamed from: b */
    public final boolean mo10919b() {
        return this.f29636b;
    }

    @Override // com.google.android.gms.internal.ads.or2
    /* renamed from: c */
    public final boolean mo10918c() {
        return this.f29637c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof or2)) {
            return false;
        }
        or2 or2Var = (or2) obj;
        return this.f29635a.equals(or2Var.mo10920a()) && this.f29636b == or2Var.mo10919b() && this.f29637c == or2Var.mo10918c();
    }

    public final int hashCode() {
        int hashCode = this.f29635a.hashCode();
        int i = 1237;
        int i2 = true != this.f29636b ? 1237 : 1231;
        if (true == this.f29637c) {
            i = 1231;
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public final String toString() {
        String str = this.f29635a;
        boolean z = this.f29636b;
        boolean z2 = this.f29637c;
        StringBuilder sb = new StringBuilder(str.length() + 99);
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
