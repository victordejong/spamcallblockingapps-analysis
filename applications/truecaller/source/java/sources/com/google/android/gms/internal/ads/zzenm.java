package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenm.class */
public final class zzenm implements zzery<zzerx<Bundle>> {
    private final Executor zza;
    private final zzcge zzb;

    public zzenm(Executor executor, zzcge zzcgeVar) {
        this.zza = executor;
        this.zzb = zzcgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzerx<Bundle>> zza() {
        return ((Boolean) zzbet.zzc().zzc(zzbjl.zzbN)).booleanValue() ? zzfsd.zza(null) : zzfsd.zzj(this.zzb.zzr(), zzenk.zza, this.zza);
    }
}
