package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbd;
import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefd.class */
public final class zzefd implements zzfwm<ParcelFileDescriptor> {
    public final /* synthetic */ zzcdm zza;

    public zzefd(zzefh zzefhVar, zzcdm zzcdmVar) {
        this.zza = zzcdmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        try {
            this.zza.zze(zzbd.zza(th));
        } catch (RemoteException e) {
            zze.zzb("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.zza.zzf(parcelFileDescriptor);
        } catch (RemoteException e) {
            zze.zzb("Service can't call client", e);
        }
    }
}
