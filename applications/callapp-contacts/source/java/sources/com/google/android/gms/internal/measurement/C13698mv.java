package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.mv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/mv.class */
public final class C13698mv extends C13352a implements AbstractC13702mz {
    public C13698mv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void beginAdUnitExposure(String str, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        m13320a.writeLong(j);
        m13318b(23, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        m13320a.writeString(str2);
        C13371as.m13247a(m13320a, bundle);
        m13318b(9, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void clearMeasurementEnabled(long j) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeLong(j);
        m13318b(43, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void endAdUnitExposure(String str, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        m13320a.writeLong(j);
        m13318b(24, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void generateEventId(AbstractC13706nc abstractC13706nc) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13318b(22, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void getAppInstanceId(AbstractC13706nc abstractC13706nc) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13318b(20, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void getCachedAppInstanceId(AbstractC13706nc abstractC13706nc) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13318b(19, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void getConditionalUserProperties(String str, String str2, AbstractC13706nc abstractC13706nc) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        m13320a.writeString(str2);
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13318b(10, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void getCurrentScreenClass(AbstractC13706nc abstractC13706nc) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13318b(17, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void getCurrentScreenName(AbstractC13706nc abstractC13706nc) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13318b(16, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void getGmpAppId(AbstractC13706nc abstractC13706nc) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13318b(21, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void getMaxUserProperties(String str, AbstractC13706nc abstractC13706nc) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13318b(6, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void getTestFlag(AbstractC13706nc abstractC13706nc, int i) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13320a.writeInt(i);
        m13318b(38, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void getUserProperties(String str, String str2, boolean z, AbstractC13706nc abstractC13706nc) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        m13320a.writeString(str2);
        C13371as.m13246a(m13320a, z);
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13318b(5, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void initForTests(Map map) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void initialize(AbstractC12126b abstractC12126b, zzz zzzVar, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC12126b);
        C13371as.m13247a(m13320a, zzzVar);
        m13320a.writeLong(j);
        m13318b(1, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void isDataCollectionEnabled(AbstractC13706nc abstractC13706nc) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        m13320a.writeString(str2);
        C13371as.m13247a(m13320a, bundle);
        C13371as.m13246a(m13320a, z);
        C13371as.m13246a(m13320a, z2);
        m13320a.writeLong(j);
        m13318b(2, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void logEventAndBundle(String str, String str2, Bundle bundle, AbstractC13706nc abstractC13706nc, long j) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void logHealthData(int i, String str, AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeInt(5);
        m13320a.writeString(str);
        C13371as.m13249a(m13320a, abstractC12126b);
        C13371as.m13249a(m13320a, abstractC12126b2);
        C13371as.m13249a(m13320a, abstractC12126b3);
        m13318b(33, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void onActivityCreated(AbstractC12126b abstractC12126b, Bundle bundle, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC12126b);
        C13371as.m13247a(m13320a, bundle);
        m13320a.writeLong(j);
        m13318b(27, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void onActivityDestroyed(AbstractC12126b abstractC12126b, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC12126b);
        m13320a.writeLong(j);
        m13318b(28, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void onActivityPaused(AbstractC12126b abstractC12126b, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC12126b);
        m13320a.writeLong(j);
        m13318b(29, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void onActivityResumed(AbstractC12126b abstractC12126b, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC12126b);
        m13320a.writeLong(j);
        m13318b(30, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void onActivitySaveInstanceState(AbstractC12126b abstractC12126b, AbstractC13706nc abstractC13706nc, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC12126b);
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13320a.writeLong(j);
        m13318b(31, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void onActivityStarted(AbstractC12126b abstractC12126b, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC12126b);
        m13320a.writeLong(j);
        m13318b(25, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void onActivityStopped(AbstractC12126b abstractC12126b, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC12126b);
        m13320a.writeLong(j);
        m13318b(26, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void performAction(Bundle bundle, AbstractC13706nc abstractC13706nc, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, bundle);
        C13371as.m13249a(m13320a, abstractC13706nc);
        m13320a.writeLong(j);
        m13318b(32, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void registerOnMeasurementEventListener(AbstractC13709nf abstractC13709nf) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC13709nf);
        m13318b(35, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void resetAnalyticsData(long j) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeLong(j);
        m13318b(12, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, bundle);
        m13320a.writeLong(j);
        m13318b(8, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setConsent(Bundle bundle, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, bundle);
        m13320a.writeLong(j);
        m13318b(44, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, bundle);
        m13320a.writeLong(j);
        m13318b(45, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setCurrentScreen(AbstractC12126b abstractC12126b, String str, String str2, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC12126b);
        m13320a.writeString(str);
        m13320a.writeString(str2);
        m13320a.writeLong(j);
        m13318b(15, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setDataCollectionEnabled(boolean z) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13246a(m13320a, z);
        m13318b(39, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setDefaultEventParameters(Bundle bundle) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13247a(m13320a, bundle);
        m13318b(42, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setEventInterceptor(AbstractC13709nf abstractC13709nf) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC13709nf);
        m13318b(34, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setInstanceIdProvider(AbstractC13711nh abstractC13711nh) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13246a(m13320a, z);
        m13320a.writeLong(j);
        m13318b(11, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setMinimumSessionDuration(long j) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setSessionTimeoutDuration(long j) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeLong(j);
        m13318b(14, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setUserId(String str, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        m13320a.writeLong(j);
        m13318b(7, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void setUserProperty(String str, String str2, AbstractC12126b abstractC12126b, boolean z, long j) throws RemoteException {
        Parcel m13320a = m13320a();
        m13320a.writeString(str);
        m13320a.writeString(str2);
        C13371as.m13249a(m13320a, abstractC12126b);
        C13371as.m13246a(m13320a, z);
        m13320a.writeLong(j);
        m13318b(4, m13320a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public final void unregisterOnMeasurementEventListener(AbstractC13709nf abstractC13709nf) throws RemoteException {
        Parcel m13320a = m13320a();
        C13371as.m13249a(m13320a, abstractC13709nf);
        m13318b(36, m13320a);
    }
}
