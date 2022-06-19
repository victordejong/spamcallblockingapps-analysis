package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzaq;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcox.class */
public final class zzcox implements zzdzl<ParcelFileDescriptor> {
    private final /* synthetic */ zzatk zzgps;

    public zzcox(zzcol zzcolVar, zzatk zzatkVar) {
        this.zzgps = zzatkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.zzgps.zzb(parcelFileDescriptor);
        } catch (RemoteException e) {
            zzd.zza("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        try {
            this.zzgps.zza(zzaq.zzc(th));
        } catch (RemoteException e) {
            zzd.zza("Service can't call client", e);
        }
    }
}
