package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjs.class */
public final class zzbjs extends zzbii {
    private final String zza;
    private final String zzb;

    public zzbjs(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzbij
    public final String zze() throws RemoteException {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbij
    public final String zzf() throws RemoteException {
        return this.zzb;
    }
}
