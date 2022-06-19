package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesg.class */
final class zzesg implements zzevm<Bundle> {
    private final String zza;
    private final String zzb;
    private final Bundle zzc;

    public /* synthetic */ zzesg(String str, String str2, Bundle bundle, zzesf zzesfVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.zza);
        bundle2.putString("fc_consent", this.zzb);
        bundle2.putBundle("iab_consent_info", this.zzc);
    }
}
