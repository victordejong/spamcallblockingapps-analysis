package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtf.class */
public final class zzdtf extends zzdtb {
    private String zzhso;
    private Boolean zzhsp;
    private Boolean zzhsq;

    @Override // com.google.android.gms.internal.ads.zzdtb
    public final zzdtc zzaxo() {
        String str = "";
        if (this.zzhso == null) {
            str = "".concat(" clientVersion");
        }
        String str2 = str;
        if (this.zzhsp == null) {
            str2 = String.valueOf(str).concat(" shouldGetAdvertisingId");
        }
        String str3 = str2;
        if (this.zzhsq == null) {
            str3 = String.valueOf(str2).concat(" isGooglePlayServicesAvailable");
        }
        if (!str3.isEmpty()) {
            String valueOf = String.valueOf(str3);
            throw new IllegalStateException(valueOf.length() != 0 ? "Missing required properties:".concat(valueOf) : new String("Missing required properties:"));
        }
        return new zzdtd(this.zzhso, this.zzhsp.booleanValue(), this.zzhsq.booleanValue());
    }

    @Override // com.google.android.gms.internal.ads.zzdtb
    public final zzdtb zzbo(boolean z) {
        this.zzhsp = Boolean.valueOf(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdtb
    public final zzdtb zzbp(boolean z) {
        this.zzhsq = true;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdtb
    public final zzdtb zzhe(String str) {
        Objects.requireNonNull(str, "Null clientVersion");
        this.zzhso = str;
        return this;
    }
}
