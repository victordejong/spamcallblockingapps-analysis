package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzboc.class */
public final class zzboc implements NativeCustomTemplateAd.DisplayOpenMeasurement {
    private final zzbpc zza;

    public zzboc(zzbpc zzbpcVar) {
        this.zza = zzbpcVar;
        try {
            zzbpcVar.zzl();
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final void setView(View view) {
        try {
            this.zza.zzo(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.DisplayOpenMeasurement
    public final boolean start() {
        try {
            return this.zza.zzr();
        } catch (RemoteException e) {
            zzciz.zzh("", e);
            return false;
        }
    }
}
