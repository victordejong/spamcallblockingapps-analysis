package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/clv.class */
final class clv extends clu {

    /* renamed from: a */
    private final String f13305a;

    /* renamed from: b */
    private final boolean f13306b;

    /* renamed from: c */
    private final boolean f13307c;

    /* JADX INFO: Access modifiers changed from: private */
    public clv(String str, boolean z, boolean z2) {
        this.f13305a = str;
        this.f13306b = z;
        this.f13307c = z2;
    }

    @Override // com.google.android.gms.internal.ads.clu
    /* renamed from: a */
    public final String mo11076a() {
        return this.f13305a;
    }

    @Override // com.google.android.gms.internal.ads.clu
    /* renamed from: b */
    public final boolean mo11075b() {
        return this.f13306b;
    }

    @Override // com.google.android.gms.internal.ads.clu
    /* renamed from: c */
    public final boolean mo11074c() {
        return this.f13307c;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (obj instanceof clu) {
                clu cluVar = (clu) obj;
                if (!this.f13305a.equals(cluVar.mo11076a()) || this.f13306b != cluVar.mo11075b() || this.f13307c != cluVar.mo11074c()) {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    public final int hashCode() {
        int i = 1231;
        int hashCode = this.f13305a.hashCode();
        int i2 = this.f13306b ? 1231 : 1237;
        if (!this.f13307c) {
            i = 1237;
        }
        return ((i2 ^ ((hashCode ^ 1000003) * 1000003)) * 1000003) ^ i;
    }

    public final String toString() {
        String str = this.f13305a;
        boolean z = this.f13306b;
        return new StringBuilder(String.valueOf(str).length() + 99).append("AdShield2Options{clientVersion=").append(str).append(", shouldGetAdvertisingId=").append(z).append(", isGooglePlayServicesAvailable=").append(this.f13307c).append("}").toString();
    }
}
