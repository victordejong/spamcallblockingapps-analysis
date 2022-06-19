package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbc;
import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebm.class */
public final class zzebm implements zzfrz<ParcelFileDescriptor> {
    public final /* synthetic */ zzcbf zza;

    public zzebm(zzebq zzebqVar, zzcbf zzcbfVar) {
        this.zza = zzcbfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        try {
            this.zza.zzf(zzbc.zza(th));
        } catch (RemoteException e) {
            zze.zzb("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.zza.zze(parcelFileDescriptor);
        } catch (RemoteException e) {
            zze.zzb("Service can't call client", e);
        }
    }
}
