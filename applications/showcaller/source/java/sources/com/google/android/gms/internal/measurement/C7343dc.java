package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.measurement.dc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dc.class */
public final class C7343dc extends C7288a implements AbstractC7399hc {
    public C7343dc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void beginAdUnitExposure(String str, long j) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(str);
        m7805c0.writeLong(j);
        m7807D0(23, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(str);
        m7805c0.writeString(str2);
        C7526r0.m6986d(m7805c0, bundle);
        m7807D0(9, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void endAdUnitExposure(String str, long j) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(str);
        m7805c0.writeLong(j);
        m7807D0(24, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void generateEventId(AbstractC7441kc abstractC7441kc) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC7441kc);
        m7807D0(22, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void getCachedAppInstanceId(AbstractC7441kc abstractC7441kc) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC7441kc);
        m7807D0(19, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void getConditionalUserProperties(String str, String str2, AbstractC7441kc abstractC7441kc) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(str);
        m7805c0.writeString(str2);
        C7526r0.m6985e(m7805c0, abstractC7441kc);
        m7807D0(10, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void getCurrentScreenClass(AbstractC7441kc abstractC7441kc) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC7441kc);
        m7807D0(17, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void getCurrentScreenName(AbstractC7441kc abstractC7441kc) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC7441kc);
        m7807D0(16, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void getGmpAppId(AbstractC7441kc abstractC7441kc) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC7441kc);
        m7807D0(21, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void getMaxUserProperties(String str, AbstractC7441kc abstractC7441kc) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(str);
        C7526r0.m6985e(m7805c0, abstractC7441kc);
        m7807D0(6, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void getUserProperties(String str, String str2, boolean z, AbstractC7441kc abstractC7441kc) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(str);
        m7805c0.writeString(str2);
        C7526r0.m6988b(m7805c0, z);
        C7526r0.m6985e(m7805c0, abstractC7441kc);
        m7807D0(5, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void initialize(AbstractC6253a abstractC6253a, zzz zzzVar, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC6253a);
        C7526r0.m6986d(m7805c0, zzzVar);
        m7805c0.writeLong(j);
        m7807D0(1, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(str);
        m7805c0.writeString(str2);
        C7526r0.m6986d(m7805c0, bundle);
        C7526r0.m6988b(m7805c0, z);
        C7526r0.m6988b(m7805c0, z2);
        m7805c0.writeLong(j);
        m7807D0(2, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void logHealthData(int i, String str, AbstractC6253a abstractC6253a, AbstractC6253a abstractC6253a2, AbstractC6253a abstractC6253a3) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeInt(5);
        m7805c0.writeString(str);
        C7526r0.m6985e(m7805c0, abstractC6253a);
        C7526r0.m6985e(m7805c0, abstractC6253a2);
        C7526r0.m6985e(m7805c0, abstractC6253a3);
        m7807D0(33, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void onActivityCreated(AbstractC6253a abstractC6253a, Bundle bundle, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC6253a);
        C7526r0.m6986d(m7805c0, bundle);
        m7805c0.writeLong(j);
        m7807D0(27, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void onActivityDestroyed(AbstractC6253a abstractC6253a, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC6253a);
        m7805c0.writeLong(j);
        m7807D0(28, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void onActivityPaused(AbstractC6253a abstractC6253a, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC6253a);
        m7805c0.writeLong(j);
        m7807D0(29, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void onActivityResumed(AbstractC6253a abstractC6253a, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC6253a);
        m7805c0.writeLong(j);
        m7807D0(30, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void onActivitySaveInstanceState(AbstractC6253a abstractC6253a, AbstractC7441kc abstractC7441kc, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC6253a);
        C7526r0.m6985e(m7805c0, abstractC7441kc);
        m7805c0.writeLong(j);
        m7807D0(31, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void onActivityStarted(AbstractC6253a abstractC6253a, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC6253a);
        m7805c0.writeLong(j);
        m7807D0(25, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void onActivityStopped(AbstractC6253a abstractC6253a, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC6253a);
        m7805c0.writeLong(j);
        m7807D0(26, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void performAction(Bundle bundle, AbstractC7441kc abstractC7441kc, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, bundle);
        C7526r0.m6985e(m7805c0, abstractC7441kc);
        m7805c0.writeLong(j);
        m7807D0(32, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void registerOnMeasurementEventListener(AbstractC7483nc abstractC7483nc) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC7483nc);
        m7807D0(35, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, bundle);
        m7805c0.writeLong(j);
        m7807D0(8, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void setConsent(Bundle bundle, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, bundle);
        m7805c0.writeLong(j);
        m7807D0(44, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void setCurrentScreen(AbstractC6253a abstractC6253a, String str, String str2, long j) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6985e(m7805c0, abstractC6253a);
        m7805c0.writeString(str);
        m7805c0.writeString(str2);
        m7805c0.writeLong(j);
        m7807D0(15, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void setDataCollectionEnabled(boolean z) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6988b(m7805c0, z);
        m7807D0(39, m7805c0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public final void setUserProperty(String str, String str2, AbstractC6253a abstractC6253a, boolean z, long j) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(str);
        m7805c0.writeString(str2);
        C7526r0.m6985e(m7805c0, abstractC6253a);
        C7526r0.m6988b(m7805c0, z);
        m7805c0.writeLong(j);
        m7807D0(4, m7805c0);
    }
}
