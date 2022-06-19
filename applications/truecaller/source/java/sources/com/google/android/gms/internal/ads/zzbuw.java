package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbuw.class */
public final class zzbuw extends zzcoc {
    private final AppMeasurementSdk zza;

    public zzbuw(AppMeasurementSdk appMeasurementSdk) {
        this.zza = appMeasurementSdk;
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final void zzb(Bundle bundle) throws RemoteException {
        this.zza.f6258a.zzc(bundle, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final Bundle zzc(Bundle bundle) throws RemoteException {
        return this.zza.f6258a.zzc(bundle, true);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final void zzd(String str, String str2, Bundle bundle) throws RemoteException {
        this.zza.f6258a.zzy(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final void zze(String str, String str2, IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zza.f6258a.zzN(str, str2, iObjectWrapper != null ? ObjectWrapper.m38746B1(iObjectWrapper) : null, true);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final Map zzf(String str, String str2, boolean z) throws RemoteException {
        return this.zza.f6258a.zzq(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final int zzg(String str) throws RemoteException {
        return this.zza.f6258a.zza(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final void zzh(Bundle bundle) throws RemoteException {
        this.zza.f6258a.zzD(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final void zzi(String str, String str2, Bundle bundle) throws RemoteException {
        this.zza.f6258a.zzv(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final List zzj(String str, String str2) throws RemoteException {
        return this.zza.f6258a.zzp(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final String zzk() throws RemoteException {
        return this.zza.f6258a.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final String zzl() throws RemoteException {
        return this.zza.f6258a.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final long zzm() throws RemoteException {
        return this.zza.f6258a.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final void zzn(String str) throws RemoteException {
        this.zza.f6258a.zzu(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final void zzo(String str) throws RemoteException {
        this.zza.f6258a.zzw(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final void zzp(Bundle bundle) throws RemoteException {
        this.zza.f6258a.zzE(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final void zzq(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        this.zza.f6258a.zzG(iObjectWrapper != null ? (Activity) ObjectWrapper.m38746B1(iObjectWrapper) : null, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final String zzr() throws RemoteException {
        return this.zza.f6258a.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final String zzs() throws RemoteException {
        return this.zza.f6258a.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzcod
    public final String zzt() throws RemoteException {
        return this.zza.f6258a.zzj();
    }
}
