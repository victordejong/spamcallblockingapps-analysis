package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qr2.class */
public final class qr2 extends nr2 {

    /* renamed from: a */
    private String f28618a;

    /* renamed from: b */
    private Boolean f28619b;

    /* renamed from: c */
    private Boolean f28620c;

    @Override // com.google.android.gms.internal.ads.nr2
    /* renamed from: a */
    public final nr2 mo11816a(String str) {
        Objects.requireNonNull(str, "Null clientVersion");
        this.f28618a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.nr2
    /* renamed from: b */
    public final nr2 mo11815b(boolean z) {
        this.f28619b = Boolean.valueOf(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.nr2
    /* renamed from: c */
    public final nr2 mo11814c(boolean z) {
        this.f28620c = Boolean.TRUE;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.nr2
    /* renamed from: d */
    public final or2 mo11813d() {
        Boolean bool;
        String str = this.f28618a;
        if (str == null || (bool = this.f28619b) == null || this.f28620c == null) {
            StringBuilder sb = new StringBuilder();
            if (this.f28618a == null) {
                sb.append(" clientVersion");
            }
            if (this.f28619b == null) {
                sb.append(" shouldGetAdvertisingId");
            }
            if (this.f28620c == null) {
                sb.append(" isGooglePlayServicesAvailable");
            }
            throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
        }
        return new sr2(str, bool.booleanValue(), this.f28620c.booleanValue(), null);
    }
}
