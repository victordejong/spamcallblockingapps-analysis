package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfml.class */
public final class zzfml extends zzfmi {
    private String zza;
    private Boolean zzb;
    private Boolean zzc;

    @Override // com.google.android.gms.internal.ads.zzfmi
    public final zzfmi zza(String str) {
        Objects.requireNonNull(str, "Null clientVersion");
        this.zza = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmi
    public final zzfmi zzb(boolean z) {
        this.zzc = Boolean.TRUE;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmi
    public final zzfmi zzc(boolean z) {
        this.zzb = Boolean.valueOf(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmi
    public final zzfmj zzd() {
        Boolean bool;
        String str = this.zza;
        if (str == null || (bool = this.zzb) == null || this.zzc == null) {
            StringBuilder sb = new StringBuilder();
            if (this.zza == null) {
                sb.append(" clientVersion");
            }
            if (this.zzb == null) {
                sb.append(" shouldGetAdvertisingId");
            }
            if (this.zzc == null) {
                sb.append(" isGooglePlayServicesAvailable");
            }
            throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
        }
        return new zzfmn(str, bool.booleanValue(), this.zzc.booleanValue(), null);
    }
}
