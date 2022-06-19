package com.google.android.gms.measurement.api;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzgv;
import java.util.List;
import java.util.Map;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk.class */
public class AppMeasurementSdk {
    private final zzee zza;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty.class */
    public static final class ConditionalUserProperty {
        @KeepForSdk
        public static final String ACTIVE = "active";
        @KeepForSdk
        public static final String CREATION_TIMESTAMP = "creation_timestamp";
        @KeepForSdk
        public static final String EXPIRED_EVENT_NAME = "expired_event_name";
        @KeepForSdk
        public static final String EXPIRED_EVENT_PARAMS = "expired_event_params";
        @KeepForSdk
        public static final String NAME = "name";
        @KeepForSdk
        public static final String ORIGIN = "origin";
        @KeepForSdk
        public static final String TIMED_OUT_EVENT_NAME = "timed_out_event_name";
        @KeepForSdk
        public static final String TIMED_OUT_EVENT_PARAMS = "timed_out_event_params";
        @KeepForSdk
        public static final String TIME_TO_LIVE = "time_to_live";
        @KeepForSdk
        public static final String TRIGGERED_EVENT_NAME = "triggered_event_name";
        @KeepForSdk
        public static final String TRIGGERED_EVENT_PARAMS = "triggered_event_params";
        @KeepForSdk
        public static final String TRIGGERED_TIMESTAMP = "triggered_timestamp";
        @KeepForSdk
        public static final String TRIGGER_EVENT_NAME = "trigger_event_name";
        @KeepForSdk
        public static final String TRIGGER_TIMEOUT = "trigger_timeout";
        @KeepForSdk
        public static final String VALUE = "value";

        private ConditionalUserProperty() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$EventInterceptor.class */
    public interface EventInterceptor extends zzgu {
        @Override // com.google.android.gms.measurement.internal.zzgu
        @ShowFirstParty
        @KeepForSdk
        void interceptEvent(String str, String str2, Bundle bundle, long j);
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener.class */
    public interface OnEventListener extends zzgv {
        @Override // com.google.android.gms.measurement.internal.zzgv
        @ShowFirstParty
        @KeepForSdk
        void onEvent(String str, String str2, Bundle bundle, long j);
    }

    public AppMeasurementSdk(zzee zzeeVar) {
        this.zza = zzeeVar;
    }

    @ShowFirstParty
    @KeepForSdk
    public static AppMeasurementSdk getInstance(Context context) {
        return zzee.zza(context, null, null, null, null).zzb();
    }

    @KeepForSdk
    public static AppMeasurementSdk getInstance(Context context, String str, String str2, String str3, Bundle bundle) {
        return zzee.zza(context, str, str2, str3, bundle).zzb();
    }

    @KeepForSdk
    public void beginAdUnitExposure(String str) {
        this.zza.zzu(str);
    }

    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.zza.zzl(str, str2, bundle);
    }

    @KeepForSdk
    public void endAdUnitExposure(String str) {
        this.zza.zzv(str);
    }

    @KeepForSdk
    public long generateEventId() {
        return this.zza.zzy();
    }

    @KeepForSdk
    public String getAppIdOrigin() {
        return this.zza.zzG();
    }

    @KeepForSdk
    public String getAppInstanceId() {
        return this.zza.zzx();
    }

    @KeepForSdk
    public List<Bundle> getConditionalUserProperties(String str, String str2) {
        return this.zza.zzm(str, str2);
    }

    @KeepForSdk
    public String getCurrentScreenClass() {
        return this.zza.zzA();
    }

    @KeepForSdk
    public String getCurrentScreenName() {
        return this.zza.zzz();
    }

    @KeepForSdk
    public String getGmpAppId() {
        return this.zza.zzw();
    }

    @KeepForSdk
    public int getMaxUserProperties(String str) {
        return this.zza.zzE(str);
    }

    @KeepForSdk
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.zza.zzB(str, str2, z);
    }

    @KeepForSdk
    public void logEvent(String str, String str2, Bundle bundle) {
        this.zza.zzh(str, str2, bundle);
    }

    @KeepForSdk
    public void logEventNoInterceptor(String str, String str2, Bundle bundle, long j) {
        this.zza.zzi(str, str2, bundle, j);
    }

    @KeepForSdk
    public void performAction(Bundle bundle) {
        this.zza.zzD(bundle, false);
    }

    @KeepForSdk
    public Bundle performActionWithResponse(Bundle bundle) {
        return this.zza.zzD(bundle, true);
    }

    @ShowFirstParty
    @KeepForSdk
    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        this.zza.zze(onEventListener);
    }

    @KeepForSdk
    public void setConditionalUserProperty(Bundle bundle) {
        this.zza.zzk(bundle);
    }

    @KeepForSdk
    public void setConsent(Bundle bundle) {
        this.zza.zzq(bundle);
    }

    @KeepForSdk
    public void setCurrentScreen(Activity activity, String str, String str2) {
        this.zza.zzo(activity, str, str2);
    }

    @ShowFirstParty
    @KeepForSdk
    public void setEventInterceptor(EventInterceptor eventInterceptor) {
        this.zza.zzd(eventInterceptor);
    }

    @KeepForSdk
    public void setMeasurementEnabled(Boolean bool) {
        this.zza.zzp(bool);
    }

    @KeepForSdk
    public void setMeasurementEnabled(boolean z) {
        this.zza.zzp(Boolean.valueOf(z));
    }

    @KeepForSdk
    public void setUserProperty(String str, String str2, Object obj) {
        this.zza.zzj(str, str2, obj, true);
    }

    @ShowFirstParty
    @KeepForSdk
    public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        this.zza.zzf(onEventListener);
    }

    public final void zza(boolean z) {
        this.zza.zzI(z);
    }
}
