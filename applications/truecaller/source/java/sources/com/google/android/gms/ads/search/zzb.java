package com.google.android.gms.ads.search;

import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.ads.zzbhi;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/search/zzb.class */
public final class zzb {
    private final zzbhi zza = new zzbhi();
    private String zzb;

    public final zzb zzc(NetworkExtras networkExtras) {
        this.zza.zzt(networkExtras);
        return this;
    }

    public final zzb zzd(Class<? extends MediationAdapter> cls, Bundle bundle) {
        this.zza.zzu(cls, bundle);
        return this;
    }

    public final zzb zze(Class<? extends CustomEvent> cls, Bundle bundle) {
        this.zza.zzv(cls, bundle);
        return this;
    }

    public final zzb zzf(String str) {
        this.zzb = str;
        return this;
    }
}
