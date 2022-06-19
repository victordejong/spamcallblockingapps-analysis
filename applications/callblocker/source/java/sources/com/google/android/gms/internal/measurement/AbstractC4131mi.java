package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.mi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/mi.class */
public interface AbstractC4131mi extends IInterface {
    void beginAdUnitExposure(String str, long j);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void endAdUnitExposure(String str, long j);

    void generateEventId(AbstractC4132mj abstractC4132mj);

    void getAppInstanceId(AbstractC4132mj abstractC4132mj);

    void getCachedAppInstanceId(AbstractC4132mj abstractC4132mj);

    void getConditionalUserProperties(String str, String str2, AbstractC4132mj abstractC4132mj);

    void getCurrentScreenClass(AbstractC4132mj abstractC4132mj);

    void getCurrentScreenName(AbstractC4132mj abstractC4132mj);

    void getGmpAppId(AbstractC4132mj abstractC4132mj);

    void getMaxUserProperties(String str, AbstractC4132mj abstractC4132mj);

    void getTestFlag(AbstractC4132mj abstractC4132mj, int i);

    void getUserProperties(String str, String str2, boolean z, AbstractC4132mj abstractC4132mj);

    void initForTests(Map map);

    void initialize(AbstractC2731a abstractC2731a, C3811b c3811b, long j);

    void isDataCollectionEnabled(AbstractC4132mj abstractC4132mj);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j);

    void logEventAndBundle(String str, String str2, Bundle bundle, AbstractC4132mj abstractC4132mj, long j);

    void logHealthData(int i, String str, AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2, AbstractC2731a abstractC2731a3);

    void onActivityCreated(AbstractC2731a abstractC2731a, Bundle bundle, long j);

    void onActivityDestroyed(AbstractC2731a abstractC2731a, long j);

    void onActivityPaused(AbstractC2731a abstractC2731a, long j);

    void onActivityResumed(AbstractC2731a abstractC2731a, long j);

    void onActivitySaveInstanceState(AbstractC2731a abstractC2731a, AbstractC4132mj abstractC4132mj, long j);

    void onActivityStarted(AbstractC2731a abstractC2731a, long j);

    void onActivityStopped(AbstractC2731a abstractC2731a, long j);

    void performAction(Bundle bundle, AbstractC4132mj abstractC4132mj, long j);

    void registerOnMeasurementEventListener(AbstractC4136mn abstractC4136mn);

    void resetAnalyticsData(long j);

    void setConditionalUserProperty(Bundle bundle, long j);

    void setCurrentScreen(AbstractC2731a abstractC2731a, String str, String str2, long j);

    void setDataCollectionEnabled(boolean z);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(AbstractC4136mn abstractC4136mn);

    void setInstanceIdProvider(AbstractC4137mo abstractC4137mo);

    void setMeasurementEnabled(boolean z, long j);

    void setMinimumSessionDuration(long j);

    void setSessionTimeoutDuration(long j);

    void setUserId(String str, long j);

    void setUserProperty(String str, String str2, AbstractC2731a abstractC2731a, boolean z, long j);

    void unregisterOnMeasurementEventListener(AbstractC4136mn abstractC4136mn);
}
