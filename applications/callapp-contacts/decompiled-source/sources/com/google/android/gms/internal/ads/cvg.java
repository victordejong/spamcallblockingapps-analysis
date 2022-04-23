package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvg.class */
final class cvg extends cvb {

    /* renamed from: a  reason: collision with root package name */
    private String f26458a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f26459b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f26460c;

    @Override // com.google.android.gms.internal.ads.cvb
    public final cvb a() {
        this.f26460c = Boolean.TRUE;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cvb
    public final cvb a(String str) {
        Objects.requireNonNull(str, "Null clientVersion");
        this.f26458a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cvb
    public final cvb a(boolean z) {
        this.f26459b = Boolean.valueOf(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cvb
    public final cvc b() {
        String str = "";
        if (this.f26458a == null) {
            str = "".concat(" clientVersion");
        }
        String str2 = str;
        if (this.f26459b == null) {
            str2 = String.valueOf(str).concat(" shouldGetAdvertisingId");
        }
        String str3 = str2;
        if (this.f26460c == null) {
            str3 = String.valueOf(str2).concat(" isGooglePlayServicesAvailable");
        }
        if (str3.isEmpty()) {
            return new cve(this.f26458a, this.f26459b.booleanValue(), this.f26460c.booleanValue());
        }
        String valueOf = String.valueOf(str3);
        throw new IllegalStateException(valueOf.length() != 0 ? "Missing required properties:".concat(valueOf) : new String("Missing required properties:"));
    }
}
