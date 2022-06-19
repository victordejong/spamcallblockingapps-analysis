package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.mk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/mk.class */
public final class C4133mk extends C3741a implements AbstractC4131mi {
    public C4133mk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void beginAdUnitExposure(String str, long j) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeLong(j);
        m6502b(23, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeString(str2);
        C4146u.m4943a(m6504a, bundle);
        m6502b(9, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void endAdUnitExposure(String str, long j) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeLong(j);
        m6502b(24, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void generateEventId(AbstractC4132mj abstractC4132mj) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6502b(22, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void getAppInstanceId(AbstractC4132mj abstractC4132mj) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6502b(20, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void getCachedAppInstanceId(AbstractC4132mj abstractC4132mj) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6502b(19, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void getConditionalUserProperties(String str, String str2, AbstractC4132mj abstractC4132mj) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeString(str2);
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6502b(10, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void getCurrentScreenClass(AbstractC4132mj abstractC4132mj) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6502b(17, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void getCurrentScreenName(AbstractC4132mj abstractC4132mj) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6502b(16, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void getGmpAppId(AbstractC4132mj abstractC4132mj) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6502b(21, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void getMaxUserProperties(String str, AbstractC4132mj abstractC4132mj) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6502b(6, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void getTestFlag(AbstractC4132mj abstractC4132mj, int i) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6504a.writeInt(i);
        m6502b(38, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void getUserProperties(String str, String str2, boolean z, AbstractC4132mj abstractC4132mj) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeString(str2);
        C4146u.m4942a(m6504a, z);
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6502b(5, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void initForTests(Map map) {
        Parcel m6504a = m6504a();
        m6504a.writeMap(map);
        m6502b(37, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void initialize(AbstractC2731a abstractC2731a, C3811b c3811b, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC2731a);
        C4146u.m4943a(m6504a, c3811b);
        m6504a.writeLong(j);
        m6502b(1, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void isDataCollectionEnabled(AbstractC4132mj abstractC4132mj) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6502b(40, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeString(str2);
        C4146u.m4943a(m6504a, bundle);
        C4146u.m4942a(m6504a, z);
        C4146u.m4942a(m6504a, z2);
        m6504a.writeLong(j);
        m6502b(2, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void logEventAndBundle(String str, String str2, Bundle bundle, AbstractC4132mj abstractC4132mj, long j) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeString(str2);
        C4146u.m4943a(m6504a, bundle);
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6504a.writeLong(j);
        m6502b(3, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void logHealthData(int i, String str, AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2, AbstractC2731a abstractC2731a3) {
        Parcel m6504a = m6504a();
        m6504a.writeInt(i);
        m6504a.writeString(str);
        C4146u.m4945a(m6504a, abstractC2731a);
        C4146u.m4945a(m6504a, abstractC2731a2);
        C4146u.m4945a(m6504a, abstractC2731a3);
        m6502b(33, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void onActivityCreated(AbstractC2731a abstractC2731a, Bundle bundle, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC2731a);
        C4146u.m4943a(m6504a, bundle);
        m6504a.writeLong(j);
        m6502b(27, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void onActivityDestroyed(AbstractC2731a abstractC2731a, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC2731a);
        m6504a.writeLong(j);
        m6502b(28, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void onActivityPaused(AbstractC2731a abstractC2731a, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC2731a);
        m6504a.writeLong(j);
        m6502b(29, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void onActivityResumed(AbstractC2731a abstractC2731a, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC2731a);
        m6504a.writeLong(j);
        m6502b(30, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void onActivitySaveInstanceState(AbstractC2731a abstractC2731a, AbstractC4132mj abstractC4132mj, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC2731a);
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6504a.writeLong(j);
        m6502b(31, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void onActivityStarted(AbstractC2731a abstractC2731a, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC2731a);
        m6504a.writeLong(j);
        m6502b(25, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void onActivityStopped(AbstractC2731a abstractC2731a, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC2731a);
        m6504a.writeLong(j);
        m6502b(26, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void performAction(Bundle bundle, AbstractC4132mj abstractC4132mj, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, bundle);
        C4146u.m4945a(m6504a, abstractC4132mj);
        m6504a.writeLong(j);
        m6502b(32, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void registerOnMeasurementEventListener(AbstractC4136mn abstractC4136mn) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4136mn);
        m6502b(35, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void resetAnalyticsData(long j) {
        Parcel m6504a = m6504a();
        m6504a.writeLong(j);
        m6502b(12, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, bundle);
        m6504a.writeLong(j);
        m6502b(8, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void setCurrentScreen(AbstractC2731a abstractC2731a, String str, String str2, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC2731a);
        m6504a.writeString(str);
        m6504a.writeString(str2);
        m6504a.writeLong(j);
        m6502b(15, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void setDataCollectionEnabled(boolean z) {
        Parcel m6504a = m6504a();
        C4146u.m4942a(m6504a, z);
        m6502b(39, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void setDefaultEventParameters(Bundle bundle) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, bundle);
        m6502b(42, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void setEventInterceptor(AbstractC4136mn abstractC4136mn) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4136mn);
        m6502b(34, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void setInstanceIdProvider(AbstractC4137mo abstractC4137mo) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4137mo);
        m6502b(18, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void setMeasurementEnabled(boolean z, long j) {
        Parcel m6504a = m6504a();
        C4146u.m4942a(m6504a, z);
        m6504a.writeLong(j);
        m6502b(11, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void setMinimumSessionDuration(long j) {
        Parcel m6504a = m6504a();
        m6504a.writeLong(j);
        m6502b(13, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void setSessionTimeoutDuration(long j) {
        Parcel m6504a = m6504a();
        m6504a.writeLong(j);
        m6502b(14, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void setUserId(String str, long j) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeLong(j);
        m6502b(7, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void setUserProperty(String str, String str2, AbstractC2731a abstractC2731a, boolean z, long j) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeString(str2);
        C4146u.m4945a(m6504a, abstractC2731a);
        C4146u.m4942a(m6504a, z);
        m6504a.writeLong(j);
        m6502b(4, m6504a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public final void unregisterOnMeasurementEventListener(AbstractC4136mn abstractC4136mn) {
        Parcel m6504a = m6504a();
        C4146u.m4945a(m6504a, abstractC4136mn);
        m6502b(36, m6504a);
    }
}
