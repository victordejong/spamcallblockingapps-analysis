package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.mz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/mz.class */
public interface AbstractC13702mz extends IInterface {
    void beginAdUnitExposure(String str, long j) throws RemoteException;

    void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException;

    void clearMeasurementEnabled(long j) throws RemoteException;

    void endAdUnitExposure(String str, long j) throws RemoteException;

    void generateEventId(AbstractC13706nc abstractC13706nc) throws RemoteException;

    void getAppInstanceId(AbstractC13706nc abstractC13706nc) throws RemoteException;

    void getCachedAppInstanceId(AbstractC13706nc abstractC13706nc) throws RemoteException;

    void getConditionalUserProperties(String str, String str2, AbstractC13706nc abstractC13706nc) throws RemoteException;

    void getCurrentScreenClass(AbstractC13706nc abstractC13706nc) throws RemoteException;

    void getCurrentScreenName(AbstractC13706nc abstractC13706nc) throws RemoteException;

    void getGmpAppId(AbstractC13706nc abstractC13706nc) throws RemoteException;

    void getMaxUserProperties(String str, AbstractC13706nc abstractC13706nc) throws RemoteException;

    void getTestFlag(AbstractC13706nc abstractC13706nc, int i) throws RemoteException;

    void getUserProperties(String str, String str2, boolean z, AbstractC13706nc abstractC13706nc) throws RemoteException;

    void initForTests(Map map) throws RemoteException;

    void initialize(AbstractC12126b abstractC12126b, zzz zzzVar, long j) throws RemoteException;

    void isDataCollectionEnabled(AbstractC13706nc abstractC13706nc) throws RemoteException;

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException;

    void logEventAndBundle(String str, String str2, Bundle bundle, AbstractC13706nc abstractC13706nc, long j) throws RemoteException;

    void logHealthData(int i, String str, AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) throws RemoteException;

    void onActivityCreated(AbstractC12126b abstractC12126b, Bundle bundle, long j) throws RemoteException;

    void onActivityDestroyed(AbstractC12126b abstractC12126b, long j) throws RemoteException;

    void onActivityPaused(AbstractC12126b abstractC12126b, long j) throws RemoteException;

    void onActivityResumed(AbstractC12126b abstractC12126b, long j) throws RemoteException;

    void onActivitySaveInstanceState(AbstractC12126b abstractC12126b, AbstractC13706nc abstractC13706nc, long j) throws RemoteException;

    void onActivityStarted(AbstractC12126b abstractC12126b, long j) throws RemoteException;

    void onActivityStopped(AbstractC12126b abstractC12126b, long j) throws RemoteException;

    void performAction(Bundle bundle, AbstractC13706nc abstractC13706nc, long j) throws RemoteException;

    void registerOnMeasurementEventListener(AbstractC13709nf abstractC13709nf) throws RemoteException;

    void resetAnalyticsData(long j) throws RemoteException;

    void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException;

    void setConsent(Bundle bundle, long j) throws RemoteException;

    void setConsentThirdParty(Bundle bundle, long j) throws RemoteException;

    void setCurrentScreen(AbstractC12126b abstractC12126b, String str, String str2, long j) throws RemoteException;

    void setDataCollectionEnabled(boolean z) throws RemoteException;

    void setDefaultEventParameters(Bundle bundle) throws RemoteException;

    void setEventInterceptor(AbstractC13709nf abstractC13709nf) throws RemoteException;

    void setInstanceIdProvider(AbstractC13711nh abstractC13711nh) throws RemoteException;

    void setMeasurementEnabled(boolean z, long j) throws RemoteException;

    void setMinimumSessionDuration(long j) throws RemoteException;

    void setSessionTimeoutDuration(long j) throws RemoteException;

    void setUserId(String str, long j) throws RemoteException;

    void setUserProperty(String str, String str2, AbstractC12126b abstractC12126b, boolean z, long j) throws RemoteException;

    void unregisterOnMeasurementEventListener(AbstractC13709nf abstractC13709nf) throws RemoteException;
}
