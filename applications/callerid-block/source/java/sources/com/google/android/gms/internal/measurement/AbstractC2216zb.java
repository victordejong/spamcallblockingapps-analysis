package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.AbstractC1632a;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.zb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zb.class */
public interface AbstractC2216zb extends IInterface {
    void beginAdUnitExposure(String str, long j);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j);

    void endAdUnitExposure(String str, long j);

    void generateEventId(AbstractC2102cc abstractC2102cc);

    void getAppInstanceId(AbstractC2102cc abstractC2102cc);

    void getCachedAppInstanceId(AbstractC2102cc abstractC2102cc);

    void getConditionalUserProperties(String str, String str2, AbstractC2102cc abstractC2102cc);

    void getCurrentScreenClass(AbstractC2102cc abstractC2102cc);

    void getCurrentScreenName(AbstractC2102cc abstractC2102cc);

    void getGmpAppId(AbstractC2102cc abstractC2102cc);

    void getMaxUserProperties(String str, AbstractC2102cc abstractC2102cc);

    void getTestFlag(AbstractC2102cc abstractC2102cc, int i);

    void getUserProperties(String str, String str2, boolean z, AbstractC2102cc abstractC2102cc);

    void initForTests(Map map);

    void initialize(AbstractC1632a abstractC1632a, zzz zzzVar, long j);

    void isDataCollectionEnabled(AbstractC2102cc abstractC2102cc);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j);

    void logEventAndBundle(String str, String str2, Bundle bundle, AbstractC2102cc abstractC2102cc, long j);

    void logHealthData(int i, String str, AbstractC1632a abstractC1632a, AbstractC1632a abstractC1632a2, AbstractC1632a abstractC1632a3);

    void onActivityCreated(AbstractC1632a abstractC1632a, Bundle bundle, long j);

    void onActivityDestroyed(AbstractC1632a abstractC1632a, long j);

    void onActivityPaused(AbstractC1632a abstractC1632a, long j);

    void onActivityResumed(AbstractC1632a abstractC1632a, long j);

    void onActivitySaveInstanceState(AbstractC1632a abstractC1632a, AbstractC2102cc abstractC2102cc, long j);

    void onActivityStarted(AbstractC1632a abstractC1632a, long j);

    void onActivityStopped(AbstractC1632a abstractC1632a, long j);

    void performAction(Bundle bundle, AbstractC2102cc abstractC2102cc, long j);

    void registerOnMeasurementEventListener(AbstractC2114fc abstractC2114fc);

    void resetAnalyticsData(long j);

    void setConditionalUserProperty(Bundle bundle, long j);

    void setConsent(Bundle bundle, long j);

    void setConsentThirdParty(Bundle bundle, long j);

    void setCurrentScreen(AbstractC1632a abstractC1632a, String str, String str2, long j);

    void setDataCollectionEnabled(boolean z);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(AbstractC2114fc abstractC2114fc);

    void setInstanceIdProvider(AbstractC2127hc abstractC2127hc);

    void setMeasurementEnabled(boolean z, long j);

    void setMinimumSessionDuration(long j);

    void setSessionTimeoutDuration(long j);

    void setUserId(String str, long j);

    void setUserProperty(String str, String str2, AbstractC1632a abstractC1632a, boolean z, long j);

    void unregisterOnMeasurementEventListener(AbstractC2114fc abstractC2114fc);
}
