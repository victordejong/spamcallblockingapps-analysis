package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.hc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hc.class */
public interface AbstractC7399hc extends IInterface {
    void beginAdUnitExposure(String str, long j);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j);

    void endAdUnitExposure(String str, long j);

    void generateEventId(AbstractC7441kc abstractC7441kc);

    void getAppInstanceId(AbstractC7441kc abstractC7441kc);

    void getCachedAppInstanceId(AbstractC7441kc abstractC7441kc);

    void getConditionalUserProperties(String str, String str2, AbstractC7441kc abstractC7441kc);

    void getCurrentScreenClass(AbstractC7441kc abstractC7441kc);

    void getCurrentScreenName(AbstractC7441kc abstractC7441kc);

    void getGmpAppId(AbstractC7441kc abstractC7441kc);

    void getMaxUserProperties(String str, AbstractC7441kc abstractC7441kc);

    void getTestFlag(AbstractC7441kc abstractC7441kc, int i);

    void getUserProperties(String str, String str2, boolean z, AbstractC7441kc abstractC7441kc);

    void initForTests(Map map);

    void initialize(AbstractC6253a abstractC6253a, zzz zzzVar, long j);

    void isDataCollectionEnabled(AbstractC7441kc abstractC7441kc);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j);

    void logEventAndBundle(String str, String str2, Bundle bundle, AbstractC7441kc abstractC7441kc, long j);

    void logHealthData(int i, String str, AbstractC6253a abstractC6253a, AbstractC6253a abstractC6253a2, AbstractC6253a abstractC6253a3);

    void onActivityCreated(AbstractC6253a abstractC6253a, Bundle bundle, long j);

    void onActivityDestroyed(AbstractC6253a abstractC6253a, long j);

    void onActivityPaused(AbstractC6253a abstractC6253a, long j);

    void onActivityResumed(AbstractC6253a abstractC6253a, long j);

    void onActivitySaveInstanceState(AbstractC6253a abstractC6253a, AbstractC7441kc abstractC7441kc, long j);

    void onActivityStarted(AbstractC6253a abstractC6253a, long j);

    void onActivityStopped(AbstractC6253a abstractC6253a, long j);

    void performAction(Bundle bundle, AbstractC7441kc abstractC7441kc, long j);

    void registerOnMeasurementEventListener(AbstractC7483nc abstractC7483nc);

    void resetAnalyticsData(long j);

    void setConditionalUserProperty(Bundle bundle, long j);

    void setConsent(Bundle bundle, long j);

    void setConsentThirdParty(Bundle bundle, long j);

    void setCurrentScreen(AbstractC6253a abstractC6253a, String str, String str2, long j);

    void setDataCollectionEnabled(boolean z);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(AbstractC7483nc abstractC7483nc);

    void setInstanceIdProvider(AbstractC7511pc abstractC7511pc);

    void setMeasurementEnabled(boolean z, long j);

    void setMinimumSessionDuration(long j);

    void setSessionTimeoutDuration(long j);

    void setUserId(String str, long j);

    void setUserProperty(String str, String str2, AbstractC6253a abstractC6253a, boolean z, long j);

    void unregisterOnMeasurementEventListener(AbstractC7483nc abstractC7483nc);
}
