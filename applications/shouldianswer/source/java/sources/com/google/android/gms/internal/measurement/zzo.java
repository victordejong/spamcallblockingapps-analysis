package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzo.class */
public final class zzo extends zza implements zzm {
    public zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void beginAdUnitExposure(String str, long j) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeLong(j);
        zzb(23, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        zzb.zza(m3778a_, bundle);
        zzb(9, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void endAdUnitExposure(String str, long j) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeLong(j);
        zzb(24, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void generateEventId(zzn zznVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zznVar);
        zzb(22, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getAppInstanceId(zzn zznVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zznVar);
        zzb(20, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getCachedAppInstanceId(zzn zznVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zznVar);
        zzb(19, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getConditionalUserProperties(String str, String str2, zzn zznVar) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        zzb.zza(m3778a_, zznVar);
        zzb(10, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getCurrentScreenClass(zzn zznVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zznVar);
        zzb(17, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getCurrentScreenName(zzn zznVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zznVar);
        zzb(16, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getGmpAppId(zzn zznVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zznVar);
        zzb(21, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getMaxUserProperties(String str, zzn zznVar) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        zzb.zza(m3778a_, zznVar);
        zzb(6, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getTestFlag(zzn zznVar, int i) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zznVar);
        m3778a_.writeInt(i);
        zzb(38, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getUserProperties(String str, String str2, boolean z, zzn zznVar) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        zzb.zza(m3778a_, z);
        zzb.zza(m3778a_, zznVar);
        zzb(5, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void initForTests(Map map) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeMap(map);
        zzb(37, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void initialize(IObjectWrapper iObjectWrapper, zzv zzvVar, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, iObjectWrapper);
        zzb.zza(m3778a_, zzvVar);
        m3778a_.writeLong(j);
        zzb(1, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void isDataCollectionEnabled(zzn zznVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zznVar);
        zzb(40, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        zzb.zza(m3778a_, bundle);
        zzb.zza(m3778a_, z);
        zzb.zza(m3778a_, z2);
        m3778a_.writeLong(j);
        zzb(2, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzn zznVar, long j) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        zzb.zza(m3778a_, bundle);
        zzb.zza(m3778a_, zznVar);
        m3778a_.writeLong(j);
        zzb(3, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeInt(i);
        m3778a_.writeString(str);
        zzb.zza(m3778a_, iObjectWrapper);
        zzb.zza(m3778a_, iObjectWrapper2);
        zzb.zza(m3778a_, iObjectWrapper3);
        zzb(33, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, iObjectWrapper);
        zzb.zza(m3778a_, bundle);
        m3778a_.writeLong(j);
        zzb(27, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, iObjectWrapper);
        m3778a_.writeLong(j);
        zzb(28, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, iObjectWrapper);
        m3778a_.writeLong(j);
        zzb(29, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, iObjectWrapper);
        m3778a_.writeLong(j);
        zzb(30, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzn zznVar, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, iObjectWrapper);
        zzb.zza(m3778a_, zznVar);
        m3778a_.writeLong(j);
        zzb(31, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, iObjectWrapper);
        m3778a_.writeLong(j);
        zzb(25, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, iObjectWrapper);
        m3778a_.writeLong(j);
        zzb(26, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void performAction(Bundle bundle, zzn zznVar, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, bundle);
        zzb.zza(m3778a_, zznVar);
        m3778a_.writeLong(j);
        zzb(32, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void registerOnMeasurementEventListener(zzs zzsVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzsVar);
        zzb(35, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void resetAnalyticsData(long j) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeLong(j);
        zzb(12, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, bundle);
        m3778a_.writeLong(j);
        zzb(8, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, iObjectWrapper);
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        m3778a_.writeLong(j);
        zzb(15, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setDataCollectionEnabled(boolean z) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, z);
        zzb(39, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setEventInterceptor(zzs zzsVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzsVar);
        zzb(34, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setInstanceIdProvider(zzt zztVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zztVar);
        zzb(18, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setMeasurementEnabled(boolean z, long j) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, z);
        m3778a_.writeLong(j);
        zzb(11, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setMinimumSessionDuration(long j) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeLong(j);
        zzb(13, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setSessionTimeoutDuration(long j) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeLong(j);
        zzb(14, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setUserId(String str, long j) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeLong(j);
        zzb(7, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        zzb.zza(m3778a_, iObjectWrapper);
        zzb.zza(m3778a_, z);
        m3778a_.writeLong(j);
        zzb(4, m3778a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void unregisterOnMeasurementEventListener(zzs zzsVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzsVar);
        zzb(36, m3778a_);
    }
}
