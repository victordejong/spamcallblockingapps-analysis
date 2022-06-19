package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdeb.class */
public final class zzdeb {
    private Context zza;
    private zzfef zzb;
    private Bundle zzc;
    private zzfea zzd;

    public final zzdeb zzc(Context context) {
        this.zza = context;
        return this;
    }

    public final zzdeb zzd(Bundle bundle) {
        this.zzc = bundle;
        return this;
    }

    public final zzdeb zze(zzfea zzfeaVar) {
        this.zzd = zzfeaVar;
        return this;
    }

    public final zzdeb zzf(zzfef zzfefVar) {
        this.zzb = zzfefVar;
        return this;
    }

    public final zzded zzg() {
        return new zzded(this, null);
    }
}
