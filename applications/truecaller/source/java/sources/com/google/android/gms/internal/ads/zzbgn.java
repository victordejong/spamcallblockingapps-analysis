package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgn.class */
public final class zzbgn implements MuteThisAdReason {
    private final String zza;
    private final zzbgm zzb;

    public zzbgn(zzbgm zzbgmVar) {
        String str;
        this.zzb = zzbgmVar;
        try {
            str = zzbgmVar.zze();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
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

    public final zzbgm zza() {
        return this.zzb;
    }
}
