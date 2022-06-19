package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/clx.class */
public final class clx extends clt {

    /* renamed from: a */
    private String f13308a;

    /* renamed from: b */
    private Boolean f13309b;

    /* renamed from: c */
    private Boolean f13310c;

    @Override // com.google.android.gms.internal.ads.clt
    /* renamed from: a */
    public final clt mo11072a(String str) {
        if (str == null) {
            throw new NullPointerException("Null clientVersion");
        }
        this.f13308a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.clt
    /* renamed from: a */
    public final clt mo11071a(boolean z) {
        this.f13309b = Boolean.valueOf(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.clt
    /* renamed from: a */
    public final clu mo11073a() {
        String str = "";
        if (this.f13308a == null) {
            str = String.valueOf("").concat(" clientVersion");
        }
        String str2 = str;
        if (this.f13309b == null) {
            str2 = String.valueOf(str).concat(" shouldGetAdvertisingId");
        }
        String str3 = str2;
        if (this.f13310c == null) {
            str3 = String.valueOf(str2).concat(" isGooglePlayServicesAvailable");
        }
        if (!str3.isEmpty()) {
            String valueOf = String.valueOf(str3);
            throw new IllegalStateException(valueOf.length() != 0 ? "Missing required properties:".concat(valueOf) : new String("Missing required properties:"));
        }
        return new clv(this.f13308a, this.f13309b.booleanValue(), this.f13310c.booleanValue());
    }

    @Override // com.google.android.gms.internal.ads.clt
    /* renamed from: b */
    public final clt mo11070b(boolean z) {
        this.f13310c = true;
        return this;
    }
}
