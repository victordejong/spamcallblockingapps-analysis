package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzn.class */
public final class zzn extends zza implements zzp {
    public zzn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void beginAdUnitExposure(String str, long j) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeLong(j);
        zzc(23, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zzd(zza, bundle);
        zzc(9, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void clearMeasurementEnabled(long j) throws RemoteException {
        Parcel zza = zza();
        zza.writeLong(j);
        zzc(43, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void endAdUnitExposure(String str, long j) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeLong(j);
        zzc(24, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void generateEventId(zzs zzsVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, zzsVar);
        zzc(22, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getAppInstanceId(zzs zzsVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, zzsVar);
        zzc(20, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getCachedAppInstanceId(zzs zzsVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, zzsVar);
        zzc(19, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getConditionalUserProperties(String str, String str2, zzs zzsVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zze(zza, zzsVar);
        zzc(10, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getCurrentScreenClass(zzs zzsVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, zzsVar);
        zzc(17, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getCurrentScreenName(zzs zzsVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, zzsVar);
        zzc(16, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getGmpAppId(zzs zzsVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, zzsVar);
        zzc(21, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getMaxUserProperties(String str, zzs zzsVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzc.zze(zza, zzsVar);
        zzc(6, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getTestFlag(zzs zzsVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, zzsVar);
        zza.writeInt(i);
        zzc(38, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void getUserProperties(String str, String str2, boolean z, zzs zzsVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zzb(zza, z);
        zzc.zze(zza, zzsVar);
        zzc(5, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void initForTests(Map map) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void initialize(IObjectWrapper iObjectWrapper, zzy zzyVar, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zzc.zzd(zza, zzyVar);
        zza.writeLong(j);
        zzc(1, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void isDataCollectionEnabled(zzs zzsVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zzd(zza, bundle);
        zzc.zzb(zza, z);
        zzc.zzb(zza, z2);
        zza.writeLong(j);
        zzc(2, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzs zzsVar, long j) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(5);
        zza.writeString(str);
        zzc.zze(zza, iObjectWrapper);
        zzc.zze(zza, iObjectWrapper2);
        zzc.zze(zza, iObjectWrapper3);
        zzc(33, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zzc.zzd(zza, bundle);
        zza.writeLong(j);
        zzc(27, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zza.writeLong(j);
        zzc(28, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zza.writeLong(j);
        zzc(29, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zza.writeLong(j);
        zzc(30, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzs zzsVar, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zzc.zze(zza, zzsVar);
        zza.writeLong(j);
        zzc(31, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zza.writeLong(j);
        zzc(25, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zza.writeLong(j);
        zzc(26, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void performAction(Bundle bundle, zzs zzsVar, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zzc.zze(zza, zzsVar);
        zza.writeLong(j);
        zzc(32, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void registerOnMeasurementEventListener(zzv zzvVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, zzvVar);
        zzc(35, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void resetAnalyticsData(long j) throws RemoteException {
        Parcel zza = zza();
        zza.writeLong(j);
        zzc(12, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zza.writeLong(j);
        zzc(8, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setConsent(Bundle bundle, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zza.writeLong(j);
        zzc(44, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zza.writeLong(j);
        zzc(45, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeLong(j);
        zzc(15, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setDataCollectionEnabled(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzc.zzb(zza, z);
        zzc(39, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setDefaultEventParameters(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzc.zzd(zza, bundle);
        zzc(42, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setEventInterceptor(zzv zzvVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, zzvVar);
        zzc(34, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setInstanceIdProvider(zzx zzxVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zzb(zza, z);
        zza.writeLong(j);
        zzc(11, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setMinimumSessionDuration(long j) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setSessionTimeoutDuration(long j) throws RemoteException {
        Parcel zza = zza();
        zza.writeLong(j);
        zzc(14, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setUserId(String str, long j) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeLong(j);
        zzc(7, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zze(zza, iObjectWrapper);
        zzc.zzb(zza, z);
        zza.writeLong(j);
        zzc(4, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void unregisterOnMeasurementEventListener(zzv zzvVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, zzvVar);
        zzc(36, zza);
    }
}
