package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbik.class */
public final class zzbik implements MuteThisAdReason {
    private final String zza;
    private final zzbij zzb;

    public zzbik(zzbij zzbijVar) {
        String str;
        this.zzb = zzbijVar;
        try {
            str = zzbijVar.zze();
        } catch (RemoteException e) {
            zzciz.zzh("", e);
            str = null;
        }
        this.zza = str;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.zza;
    }

    public final String toString() {
        return this.zza;
    }

    public final zzbij zza() {
        return this.zzb;
    }
}
