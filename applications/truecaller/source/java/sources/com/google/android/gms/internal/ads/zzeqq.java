package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqq.class */
public final class zzeqq implements zzerx<Bundle> {
    private final String zza;
    private final String zzb;

    public zzeqq(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfh)).booleanValue()) {
            bundle2.putString("request_id", this.zzb);
        } else {
            bundle2.putString("request_id", this.zza);
        }
    }
}
