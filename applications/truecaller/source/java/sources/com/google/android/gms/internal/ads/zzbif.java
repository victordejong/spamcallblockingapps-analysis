package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbif.class */
public final class zzbif extends zzbgd {
    private zzbrs zza;

    public final /* synthetic */ void zzb() {
        zzbrs zzbrsVar = this.zza;
        if (zzbrsVar != null) {
            try {
                zzbrsVar.zzb(Collections.emptyList());
            } catch (RemoteException e) {
                zzcgt.zzj("Could not notify onComplete event.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zze() throws RemoteException {
        zzcgt.zzf("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        zzcgm.zza.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbie
            private final zzbif zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzf(float f) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzg(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzh(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzi(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzj(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final float zzk() throws RemoteException {
        return 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final boolean zzl() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final String zzm() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzn(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzo(zzbvg zzbvgVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzp(zzbrs zzbrsVar) throws RemoteException {
        this.zza = zzbrsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final List<zzbrl> zzq() throws RemoteException {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzr(zzbim zzbimVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzs() {
    }

    @Override // com.google.android.gms.internal.ads.zzbge
    public final void zzt(zzbgq zzbgqVar) {
    }
}
