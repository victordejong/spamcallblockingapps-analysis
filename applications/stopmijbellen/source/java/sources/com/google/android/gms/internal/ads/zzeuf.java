package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeuf.class */
public final class zzeuf implements zzevm<Bundle> {
    private final String zza;
    private final String zzb;

    public zzeuf(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfo)).booleanValue()) {
            bundle2.putString("request_id", this.zzb);
        } else {
            bundle2.putString("request_id", this.zza);
        }
    }
}
