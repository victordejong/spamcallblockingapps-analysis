package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdam.class */
public final class zzdam {
    private Context zza;
    private zzfar zzb;
    private Bundle zzc;
    private zzfam zzd;

    public final zzdam zze(Context context) {
        this.zza = context;
        return this;
    }

    public final zzdam zzf(zzfar zzfarVar) {
        this.zzb = zzfarVar;
        return this;
    }

    public final zzdam zzg(Bundle bundle) {
        this.zzc = bundle;
        return this;
    }

    public final zzdao zzh() {
        return new zzdao(this, null);
    }

    public final zzdam zzi(zzfam zzfamVar) {
        this.zzd = zzfamVar;
        return this;
    }
}
