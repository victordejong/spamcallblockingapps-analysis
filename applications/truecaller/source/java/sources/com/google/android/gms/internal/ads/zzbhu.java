package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhu.class */
public final class zzbhu extends zzbgl {
    private final String zza;
    private final String zzb;

    public zzbhu(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzbgm
    public final String zze() throws RemoteException {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbgm
    public final String zzf() throws RemoteException {
        return this.zzb;
    }
}
