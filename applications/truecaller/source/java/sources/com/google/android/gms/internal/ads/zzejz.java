package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejz.class */
public final class zzejz {
    private final ConcurrentHashMap<String, zzbxn> zza = new ConcurrentHashMap<>();
    private final zzdtf zzb;

    public zzejz(zzdtf zzdtfVar) {
        this.zzb = zzdtfVar;
    }

    public final void zza(String str) {
        try {
            this.zza.put(str, this.zzb.zzc(str));
        } catch (RemoteException e) {
            zzcgt.zzg("Couldn't create RTB adapter : ", e);
        }
    }

    public final zzbxn zzb(String str) {
        if (this.zza.containsKey(str)) {
            return this.zza.get(str);
        }
        return null;
    }
}
