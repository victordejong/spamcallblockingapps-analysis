package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbys.class */
public final class zzbys implements NativeCustomFormatAd.DisplayOpenMeasurement {
    private final zzbnb zza;

    public zzbys(zzbnb zzbnbVar) {
        this.zza = zzbnbVar;
        try {
            zzbnbVar.zzr();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.zza.zzq(new ObjectWrapper(view));
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.zza.zzp();
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
            return false;
        }
    }
}
