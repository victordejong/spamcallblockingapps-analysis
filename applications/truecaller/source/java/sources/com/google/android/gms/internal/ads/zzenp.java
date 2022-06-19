package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.internal.appset.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenp.class */
public final class zzenp implements zzery<zzenq> {
    private final AppSetIdClient zza;

    public zzenp(Context context) {
        this.zza = new zzr(context);
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzenq> zza() {
        return ((Boolean) zzbet.zzc().zzc(zzbjl.zzbO)).booleanValue() ? zzfsd.zzj(zzflc.zza(this.zza.getAppSetIdInfo()), zzeno.zza, zzchg.zzf) : zzfsd.zza(new zzenq(null, -1));
    }
}
