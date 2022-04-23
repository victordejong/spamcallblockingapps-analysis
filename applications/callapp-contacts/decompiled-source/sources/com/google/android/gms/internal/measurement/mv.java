package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/mv.class */
public final class mv extends a implements mz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public mv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void beginAdUnitExposure(String str, long j) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeLong(j);
        b(23, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        as.a(a2, bundle);
        b(9, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void clearMeasurementEnabled(long j) throws RemoteException {
        Parcel a2 = a();
        a2.writeLong(j);
        b(43, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void endAdUnitExposure(String str, long j) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeLong(j);
        b(24, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void generateEventId(nc ncVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, ncVar);
        b(22, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void getAppInstanceId(nc ncVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, ncVar);
        b(20, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void getCachedAppInstanceId(nc ncVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, ncVar);
        b(19, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void getConditionalUserProperties(String str, String str2, nc ncVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        as.a(a2, ncVar);
        b(10, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void getCurrentScreenClass(nc ncVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, ncVar);
        b(17, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void getCurrentScreenName(nc ncVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, ncVar);
        b(16, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void getGmpAppId(nc ncVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, ncVar);
        b(21, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void getMaxUserProperties(String str, nc ncVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        as.a(a2, ncVar);
        b(6, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void getTestFlag(nc ncVar, int i) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, ncVar);
        a2.writeInt(i);
        b(38, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void getUserProperties(String str, String str2, boolean z, nc ncVar) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        as.a(a2, z);
        as.a(a2, ncVar);
        b(5, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void initForTests(Map map) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void initialize(b bVar, zzz zzzVar, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bVar);
        as.a(a2, zzzVar);
        a2.writeLong(j);
        b(1, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void isDataCollectionEnabled(nc ncVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        as.a(a2, bundle);
        as.a(a2, z);
        as.a(a2, z2);
        a2.writeLong(j);
        b(2, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void logEventAndBundle(String str, String str2, Bundle bundle, nc ncVar, long j) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void logHealthData(int i, String str, b bVar, b bVar2, b bVar3) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(5);
        a2.writeString(str);
        as.a(a2, bVar);
        as.a(a2, bVar2);
        as.a(a2, bVar3);
        b(33, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void onActivityCreated(b bVar, Bundle bundle, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bVar);
        as.a(a2, bundle);
        a2.writeLong(j);
        b(27, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void onActivityDestroyed(b bVar, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bVar);
        a2.writeLong(j);
        b(28, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void onActivityPaused(b bVar, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bVar);
        a2.writeLong(j);
        b(29, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void onActivityResumed(b bVar, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bVar);
        a2.writeLong(j);
        b(30, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void onActivitySaveInstanceState(b bVar, nc ncVar, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bVar);
        as.a(a2, ncVar);
        a2.writeLong(j);
        b(31, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void onActivityStarted(b bVar, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bVar);
        a2.writeLong(j);
        b(25, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void onActivityStopped(b bVar, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bVar);
        a2.writeLong(j);
        b(26, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void performAction(Bundle bundle, nc ncVar, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bundle);
        as.a(a2, ncVar);
        a2.writeLong(j);
        b(32, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void registerOnMeasurementEventListener(nf nfVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, nfVar);
        b(35, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void resetAnalyticsData(long j) throws RemoteException {
        Parcel a2 = a();
        a2.writeLong(j);
        b(12, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bundle);
        a2.writeLong(j);
        b(8, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setConsent(Bundle bundle, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bundle);
        a2.writeLong(j);
        b(44, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bundle);
        a2.writeLong(j);
        b(45, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setCurrentScreen(b bVar, String str, String str2, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bVar);
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeLong(j);
        b(15, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setDataCollectionEnabled(boolean z) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, z);
        b(39, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setDefaultEventParameters(Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, bundle);
        b(42, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setEventInterceptor(nf nfVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, nfVar);
        b(34, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setInstanceIdProvider(nh nhVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, z);
        a2.writeLong(j);
        b(11, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setMinimumSessionDuration(long j) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setSessionTimeoutDuration(long j) throws RemoteException {
        Parcel a2 = a();
        a2.writeLong(j);
        b(14, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setUserId(String str, long j) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeLong(j);
        b(7, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void setUserProperty(String str, String str2, b bVar, boolean z, long j) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        a2.writeString(str2);
        as.a(a2, bVar);
        as.a(a2, z);
        a2.writeLong(j);
        b(4, a2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public final void unregisterOnMeasurementEventListener(nf nfVar) throws RemoteException {
        Parcel a2 = a();
        as.a(a2, nfVar);
        b(36, a2);
    }
}
