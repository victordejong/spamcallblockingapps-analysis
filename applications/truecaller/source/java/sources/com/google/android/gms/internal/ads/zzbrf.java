package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrf.class */
public final class zzbrf extends zzbrc {
    public final /* synthetic */ zzchl zza;

    public zzbrf(zzbrg zzbrgVar, zzchl zzchlVar) {
        this.zza = zzchlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrd
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        this.zza.zzc(parcelFileDescriptor);
    }
}
