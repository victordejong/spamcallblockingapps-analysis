package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoq.class */
public final class zzeoq implements zzerx<Bundle> {
    private final String zza;
    private final String zzb;
    private final Bundle zzc;

    public /* synthetic */ zzeoq(String str, String str2, Bundle bundle, zzeor zzeorVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.zza);
        bundle2.putString("fc_consent", this.zzb);
        bundle2.putBundle("iab_consent_info", this.zzc);
    }
}
