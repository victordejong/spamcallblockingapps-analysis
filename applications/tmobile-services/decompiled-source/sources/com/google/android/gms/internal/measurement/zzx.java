package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzx.class */
public final class zzx extends zza implements zzv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void beginAdUnitExposure(String str, long j) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeLong(j);
        m13465c(23, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeString(str2);
        zzb.m13402c(a, bundle);
        m13465c(9, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void clearMeasurementEnabled(long j) throws RemoteException {
        Parcel a = m13467a();
        a.writeLong(j);
        m13465c(43, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void endAdUnitExposure(String str, long j) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeLong(j);
        m13465c(24, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void generateEventId(zzw zzwVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzwVar);
        m13465c(22, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getAppInstanceId(zzw zzwVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzwVar);
        m13465c(20, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getCachedAppInstanceId(zzw zzwVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzwVar);
        m13465c(19, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getConditionalUserProperties(String str, String str2, zzw zzwVar) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeString(str2);
        zzb.m13403b(a, zzwVar);
        m13465c(10, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getCurrentScreenClass(zzw zzwVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzwVar);
        m13465c(17, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getCurrentScreenName(zzw zzwVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzwVar);
        m13465c(16, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getGmpAppId(zzw zzwVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzwVar);
        m13465c(21, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getMaxUserProperties(String str, zzw zzwVar) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        zzb.m13403b(a, zzwVar);
        m13465c(6, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getTestFlag(zzw zzwVar, int i) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzwVar);
        a.writeInt(i);
        m13465c(38, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getUserProperties(String str, String str2, boolean z, zzw zzwVar) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeString(str2);
        zzb.m13401d(a, z);
        zzb.m13403b(a, zzwVar);
        m13465c(5, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void initForTests(Map map) throws RemoteException {
        Parcel a = m13467a();
        a.writeMap(map);
        m13465c(37, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void initialize(IObjectWrapper iObjectWrapper, zzae zzaeVar, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, iObjectWrapper);
        zzb.m13402c(a, zzaeVar);
        a.writeLong(j);
        m13465c(1, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void isDataCollectionEnabled(zzw zzwVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzwVar);
        m13465c(40, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeString(str2);
        zzb.m13402c(a, bundle);
        zzb.m13401d(a, z);
        zzb.m13401d(a, z2);
        a.writeLong(j);
        m13465c(2, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzw zzwVar, long j) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeString(str2);
        zzb.m13402c(a, bundle);
        zzb.m13403b(a, zzwVar);
        a.writeLong(j);
        m13465c(3, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel a = m13467a();
        a.writeInt(i);
        a.writeString(str);
        zzb.m13403b(a, iObjectWrapper);
        zzb.m13403b(a, iObjectWrapper2);
        zzb.m13403b(a, iObjectWrapper3);
        m13465c(33, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, iObjectWrapper);
        zzb.m13402c(a, bundle);
        a.writeLong(j);
        m13465c(27, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, iObjectWrapper);
        a.writeLong(j);
        m13465c(28, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, iObjectWrapper);
        a.writeLong(j);
        m13465c(29, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, iObjectWrapper);
        a.writeLong(j);
        m13465c(30, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzw zzwVar, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, iObjectWrapper);
        zzb.m13403b(a, zzwVar);
        a.writeLong(j);
        m13465c(31, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, iObjectWrapper);
        a.writeLong(j);
        m13465c(25, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, iObjectWrapper);
        a.writeLong(j);
        m13465c(26, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void performAction(Bundle bundle, zzw zzwVar, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, bundle);
        zzb.m13403b(a, zzwVar);
        a.writeLong(j);
        m13465c(32, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void registerOnMeasurementEventListener(zzab zzabVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzabVar);
        m13465c(35, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void resetAnalyticsData(long j) throws RemoteException {
        Parcel a = m13467a();
        a.writeLong(j);
        m13465c(12, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, bundle);
        a.writeLong(j);
        m13465c(8, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setConsent(Bundle bundle, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, bundle);
        a.writeLong(j);
        m13465c(44, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, bundle);
        a.writeLong(j);
        m13465c(45, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, iObjectWrapper);
        a.writeString(str);
        a.writeString(str2);
        a.writeLong(j);
        m13465c(15, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setDataCollectionEnabled(boolean z) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13401d(a, z);
        m13465c(39, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setDefaultEventParameters(Bundle bundle) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, bundle);
        m13465c(42, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setEventInterceptor(zzab zzabVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzabVar);
        m13465c(34, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setInstanceIdProvider(zzac zzacVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzacVar);
        m13465c(18, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13401d(a, z);
        a.writeLong(j);
        m13465c(11, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setMinimumSessionDuration(long j) throws RemoteException {
        Parcel a = m13467a();
        a.writeLong(j);
        m13465c(13, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setSessionTimeoutDuration(long j) throws RemoteException {
        Parcel a = m13467a();
        a.writeLong(j);
        m13465c(14, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setUserId(String str, long j) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeLong(j);
        m13465c(7, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        Parcel a = m13467a();
        a.writeString(str);
        a.writeString(str2);
        zzb.m13403b(a, iObjectWrapper);
        zzb.m13401d(a, z);
        a.writeLong(j);
        m13465c(4, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void unregisterOnMeasurementEventListener(zzab zzabVar) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13403b(a, zzabVar);
        m13465c(36, a);
    }
}
