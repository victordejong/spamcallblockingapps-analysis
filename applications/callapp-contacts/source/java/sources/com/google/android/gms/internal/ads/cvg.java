package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvg.class */
public final class cvg extends cvb {

    /* renamed from: a */
    private String f46615a;

    /* renamed from: b */
    private Boolean f46616b;

    /* renamed from: c */
    private Boolean f46617c;

    @Override // com.google.android.gms.internal.ads.cvb
    /* renamed from: a */
    public final cvb mo17179a() {
        this.f46617c = Boolean.TRUE;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cvb
    /* renamed from: a */
    public final cvb mo17178a(String str) {
        Objects.requireNonNull(str, "Null clientVersion");
        this.f46615a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cvb
    /* renamed from: a */
    public final cvb mo17177a(boolean z) {
        this.f46616b = Boolean.valueOf(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cvb
    /* renamed from: b */
    public final cvc mo17176b() {
        String str = "";
        if (this.f46615a == null) {
            str = "".concat(" clientVersion");
        }
        String str2 = str;
        if (this.f46616b == null) {
            str2 = String.valueOf(str).concat(" shouldGetAdvertisingId");
        }
        String str3 = str2;
        if (this.f46617c == null) {
            str3 = String.valueOf(str2).concat(" isGooglePlayServicesAvailable");
        }
        if (!str3.isEmpty()) {
            String valueOf = String.valueOf(str3);
            throw new IllegalStateException(valueOf.length() != 0 ? "Missing required properties:".concat(valueOf) : new String("Missing required properties:"));
        }
        return new cve(this.f46615a, this.f46616b.booleanValue(), this.f46617c.booleanValue());
    }
}
