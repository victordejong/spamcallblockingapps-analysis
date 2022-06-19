package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbth.class */
final class zzbth extends zzbte {
    public final /* synthetic */ zzcjr zza;

    public zzbth(zzbti zzbtiVar, zzcjr zzcjrVar) {
        this.zza = zzcjrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        this.zza.zzd(parcelFileDescriptor);
    }
}
