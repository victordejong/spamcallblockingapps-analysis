package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkd.class */
public final class zzbkd extends zzbia {
    private zzbtu zza;

    public final /* synthetic */ void zzb() {
        zzbtu zzbtuVar = this.zza;
        if (zzbtuVar != null) {
            try {
                zzbtuVar.zzb(Collections.emptyList());
            } catch (RemoteException e) {
                zzciz.zzk("Could not notify onComplete event.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final float zze() throws RemoteException {
        return 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final String zzf() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final List<zzbtn> zzg() throws RemoteException {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzh(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzj() throws RemoteException {
        zzciz.zzg("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        zzcis.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbkc
            @Override // java.lang.Runnable
            public final void run() {
                zzbkd.this.zzb();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzk(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzl(zzbin zzbinVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzm(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzn(zzbxh zzbxhVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzo(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzp(float f) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzq(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzr(zzbtu zzbtuVar) throws RemoteException {
        this.zza = zzbtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final void zzs(zzbkk zzbkkVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbib
    public final boolean zzt() throws RemoteException {
        return false;
    }
}
