package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwx.class */
public final class zzbwx extends zzcqf {
    private final AppMeasurementSdk zza;

    public zzbwx(AppMeasurementSdk appMeasurementSdk) {
        this.zza = appMeasurementSdk;
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final int zzb(String str) throws RemoteException {
        return this.zza.getMaxUserProperties(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final long zzc() throws RemoteException {
        return this.zza.generateEventId();
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final Bundle zzd(Bundle bundle) throws RemoteException {
        return this.zza.performActionWithResponse(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final String zze() throws RemoteException {
        return this.zza.getAppIdOrigin();
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final String zzf() throws RemoteException {
        return this.zza.getAppInstanceId();
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final String zzg() throws RemoteException {
        return this.zza.getCurrentScreenClass();
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final String zzh() throws RemoteException {
        return this.zza.getCurrentScreenName();
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final String zzi() throws RemoteException {
        return this.zza.getGmpAppId();
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final List zzj(String str, String str2) throws RemoteException {
        return this.zza.getConditionalUserProperties(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final Map zzk(String str, String str2, boolean z) throws RemoteException {
        return this.zza.getUserProperties(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final void zzl(String str) throws RemoteException {
        this.zza.beginAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final void zzm(String str, String str2, Bundle bundle) throws RemoteException {
        this.zza.clearConditionalUserProperty(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final void zzn(String str) throws RemoteException {
        this.zza.endAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final void zzo(String str, String str2, Bundle bundle) throws RemoteException {
        this.zza.logEvent(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final void zzp(Bundle bundle) throws RemoteException {
        this.zza.performAction(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final void zzq(Bundle bundle) throws RemoteException {
        this.zza.setConditionalUserProperty(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final void zzr(Bundle bundle) throws RemoteException {
        this.zza.setConsent(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final void zzs(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        this.zza.setCurrentScreen(iObjectWrapper != null ? (Activity) ObjectWrapper.unwrap(iObjectWrapper) : null, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public final void zzt(String str, String str2, IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zza.setUserProperty(str, str2, iObjectWrapper != null ? ObjectWrapper.unwrap(iObjectWrapper) : null);
    }
}
