package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/mz.class */
public interface mz extends IInterface {
    void beginAdUnitExposure(String str, long j) throws RemoteException;

    void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException;

    void clearMeasurementEnabled(long j) throws RemoteException;

    void endAdUnitExposure(String str, long j) throws RemoteException;

    void generateEventId(nc ncVar) throws RemoteException;

    void getAppInstanceId(nc ncVar) throws RemoteException;

    void getCachedAppInstanceId(nc ncVar) throws RemoteException;

    void getConditionalUserProperties(String str, String str2, nc ncVar) throws RemoteException;

    void getCurrentScreenClass(nc ncVar) throws RemoteException;

    void getCurrentScreenName(nc ncVar) throws RemoteException;

    void getGmpAppId(nc ncVar) throws RemoteException;

    void getMaxUserProperties(String str, nc ncVar) throws RemoteException;

    void getTestFlag(nc ncVar, int i) throws RemoteException;

    void getUserProperties(String str, String str2, boolean z, nc ncVar) throws RemoteException;

    void initForTests(Map map) throws RemoteException;

    void initialize(b bVar, zzz zzzVar, long j) throws RemoteException;

    void isDataCollectionEnabled(nc ncVar) throws RemoteException;

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException;

    void logEventAndBundle(String str, String str2, Bundle bundle, nc ncVar, long j) throws RemoteException;

    void logHealthData(int i, String str, b bVar, b bVar2, b bVar3) throws RemoteException;

    void onActivityCreated(b bVar, Bundle bundle, long j) throws RemoteException;

    void onActivityDestroyed(b bVar, long j) throws RemoteException;

    void onActivityPaused(b bVar, long j) throws RemoteException;

    void onActivityResumed(b bVar, long j) throws RemoteException;

    void onActivitySaveInstanceState(b bVar, nc ncVar, long j) throws RemoteException;

    void onActivityStarted(b bVar, long j) throws RemoteException;

    void onActivityStopped(b bVar, long j) throws RemoteException;

    void performAction(Bundle bundle, nc ncVar, long j) throws RemoteException;

    void registerOnMeasurementEventListener(nf nfVar) throws RemoteException;

    void resetAnalyticsData(long j) throws RemoteException;

    void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException;

    void setConsent(Bundle bundle, long j) throws RemoteException;

    void setConsentThirdParty(Bundle bundle, long j) throws RemoteException;

    void setCurrentScreen(b bVar, String str, String str2, long j) throws RemoteException;

    void setDataCollectionEnabled(boolean z) throws RemoteException;

    void setDefaultEventParameters(Bundle bundle) throws RemoteException;

    void setEventInterceptor(nf nfVar) throws RemoteException;

    void setInstanceIdProvider(nh nhVar) throws RemoteException;

    void setMeasurementEnabled(boolean z, long j) throws RemoteException;

    void setMinimumSessionDuration(long j) throws RemoteException;

    void setSessionTimeoutDuration(long j) throws RemoteException;

    void setUserId(String str, long j) throws RemoteException;

    void setUserProperty(String str, String str2, b bVar, boolean z, long j) throws RemoteException;

    void unregisterOnMeasurementEventListener(nf nfVar) throws RemoteException;
}
