package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzcl;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzfu;
import com.google.android.gms.measurement.internal.zzgq;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzgv;
import com.google.android.gms.measurement.internal.zzhx;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzkq;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p226s.C4251a;
@ShowFirstParty
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {
    @ShowFirstParty
    @KeepForSdk
    public static final String CRASH_ORIGIN = "crash";
    @ShowFirstParty
    @KeepForSdk
    public static final String FCM_ORIGIN = "fcm";
    @ShowFirstParty
    @KeepForSdk
    public static final String FIAM_ORIGIN = "fiam";
    private static volatile AppMeasurement zza;
    private final zzfu zzb;
    private final zzhx zzc;

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty.class */
    public static class ConditionalUserProperty {
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public boolean mActive;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mAppId;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mCreationTimestamp;
        @Keep
        public String mExpiredEventName;
        @Keep
        public Bundle mExpiredEventParams;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mName;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mOrigin;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTimeToLive;
        @Keep
        public String mTimedOutEventName;
        @Keep
        public Bundle mTimedOutEventParams;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mTriggerEventName;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTriggerTimeout;
        @Keep
        public String mTriggeredEventName;
        @Keep
        public Bundle mTriggeredEventParams;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTriggeredTimestamp;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public Object mValue;

        @KeepForSdk
        public ConditionalUserProperty() {
        }

        @VisibleForTesting
        public ConditionalUserProperty(Bundle bundle) {
            Preconditions.checkNotNull(bundle);
            this.mAppId = (String) zzgq.zzb(bundle, "app_id", String.class, null);
            this.mOrigin = (String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.ORIGIN, String.class, null);
            this.mName = (String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null);
            this.mValue = zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.VALUE, Object.class, null);
            this.mTriggerEventName = (String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
            this.mTriggerTimeout = ((Long) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
            this.mTimedOutEventParams = (Bundle) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
            this.mTriggeredEventName = (String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
            this.mTriggeredEventParams = (Bundle) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
            this.mTimeToLive = ((Long) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
            this.mExpiredEventParams = (Bundle) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
            this.mActive = ((Boolean) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.class, 0L)).longValue();
        }

        @KeepForSdk
        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            Preconditions.checkNotNull(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                Object zzb = zzic.zzb(obj);
                this.mValue = zzb;
                if (zzb == null) {
                    this.mValue = conditionalUserProperty.mValue;
                }
            }
            this.mActive = conditionalUserProperty.mActive;
            this.mTriggerEventName = conditionalUserProperty.mTriggerEventName;
            this.mTriggerTimeout = conditionalUserProperty.mTriggerTimeout;
            this.mTimedOutEventName = conditionalUserProperty.mTimedOutEventName;
            Bundle bundle = conditionalUserProperty.mTimedOutEventParams;
            if (bundle != null) {
                this.mTimedOutEventParams = new Bundle(bundle);
            }
            this.mTriggeredEventName = conditionalUserProperty.mTriggeredEventName;
            Bundle bundle2 = conditionalUserProperty.mTriggeredEventParams;
            if (bundle2 != null) {
                this.mTriggeredEventParams = new Bundle(bundle2);
            }
            this.mTriggeredTimestamp = conditionalUserProperty.mTriggeredTimestamp;
            this.mTimeToLive = conditionalUserProperty.mTimeToLive;
            this.mExpiredEventName = conditionalUserProperty.mExpiredEventName;
            Bundle bundle3 = conditionalUserProperty.mExpiredEventParams;
            if (bundle3 != null) {
                this.mExpiredEventParams = new Bundle(bundle3);
            }
        }

        @VisibleForTesting
        public final Bundle zza() {
            Bundle bundle = new Bundle();
            String str = this.mAppId;
            if (str != null) {
                bundle.putString("app_id", str);
            }
            String str2 = this.mOrigin;
            if (str2 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN, str2);
            }
            String str3 = this.mName;
            if (str3 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                zzgq.zza(bundle, obj);
            }
            String str4 = this.mTriggerEventName;
            if (str4 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, str4);
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, this.mTriggerTimeout);
            String str5 = this.mTimedOutEventName;
            if (str5 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, str5);
            }
            Bundle bundle2 = this.mTimedOutEventParams;
            if (bundle2 != null) {
                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, bundle2);
            }
            String str6 = this.mTriggeredEventName;
            if (str6 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, str6);
            }
            Bundle bundle3 = this.mTriggeredEventParams;
            if (bundle3 != null) {
                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, bundle3);
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, this.mTimeToLive);
            String str7 = this.mExpiredEventName;
            if (str7 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str7);
            }
            Bundle bundle4 = this.mExpiredEventParams;
            if (bundle4 != null) {
                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle4);
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, this.mCreationTimestamp);
            bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, this.mActive);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, this.mTriggeredTimestamp);
            return bundle;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$EventInterceptor.class */
    public interface EventInterceptor extends zzgu {
        @Override // com.google.android.gms.measurement.internal.zzgu
        @ShowFirstParty
        @KeepForSdk
        void interceptEvent(String str, String str2, Bundle bundle, long j);
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$OnEventListener.class */
    public interface OnEventListener extends zzgv {
        @Override // com.google.android.gms.measurement.internal.zzgv
        @ShowFirstParty
        @KeepForSdk
        void onEvent(String str, String str2, Bundle bundle, long j);
    }

    public AppMeasurement(zzfu zzfuVar) {
        Preconditions.checkNotNull(zzfuVar);
        this.zzb = zzfuVar;
        this.zzc = null;
    }

    public AppMeasurement(zzhx zzhxVar) {
        Preconditions.checkNotNull(zzhxVar);
        this.zzc = zzhxVar;
        this.zzb = null;
    }

    @Keep
    @Deprecated
    @ShowFirstParty
    @KeepForSdk
    public static AppMeasurement getInstance(Context context) {
        zzhx zzhxVar;
        if (zza == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (zza == null) {
                        try {
                            zzhxVar = (zzhx) FirebaseAnalytics.class.getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                        } catch (Exception e) {
                            zzhxVar = null;
                        }
                        if (zzhxVar != null) {
                            zza = new AppMeasurement(zzhxVar);
                        } else {
                            zza = new AppMeasurement(zzfu.zzC(context, new zzcl(0L, 0L, true, null, null, null, null, null), null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zza;
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            zzhxVar.zzl(str);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzB().zza(str, this.zzb.zzay().elapsedRealtime());
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            zzhxVar.zzo(str, str2, bundle);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzO(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            zzhxVar.zzm(str);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzB().zzb(str, this.zzb.zzay().elapsedRealtime());
    }

    @Keep
    public long generateEventId() {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return zzhxVar.zzk();
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzl().zzd();
    }

    @Keep
    public String getAppInstanceId() {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return zzhxVar.zzi();
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzD();
    }

    @KeepForSdk
    public Boolean getBoolean() {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return (Boolean) zzhxVar.zzr(4);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzi();
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        ArrayList<Bundle> arrayList;
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            arrayList = zzhxVar.zzp(str, str2);
        } else {
            Preconditions.checkNotNull(this.zzb);
            arrayList = this.zzb.zzk().zzP(str, str2);
        }
        ArrayList arrayList2 = new ArrayList(arrayList == null ? 0 : arrayList.size());
        for (Bundle bundle : arrayList) {
            arrayList2.add(new ConditionalUserProperty(bundle));
        }
        return arrayList2;
    }

    @Keep
    public String getCurrentScreenClass() {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return zzhxVar.zzh();
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzS();
    }

    @Keep
    public String getCurrentScreenName() {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return zzhxVar.zzg();
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzR();
    }

    @KeepForSdk
    public Double getDouble() {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return (Double) zzhxVar.zzr(2);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzm();
    }

    @Keep
    public String getGmpAppId() {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return zzhxVar.zzj();
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzT();
    }

    @KeepForSdk
    public Integer getInteger() {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return (Integer) zzhxVar.zzr(3);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzl();
    }

    @KeepForSdk
    public Long getLong() {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return (Long) zzhxVar.zzr(1);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzk();
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public int getMaxUserProperties(String str) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return zzhxVar.zzq(str);
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzL(str);
        return 25;
    }

    @KeepForSdk
    public String getString() {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return (String) zzhxVar.zzr(0);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzj();
    }

    @VisibleForTesting
    @Keep
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return zzhxVar.zzc(str, str2, z);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzQ(str, str2, z);
    }

    @ShowFirstParty
    @KeepForSdk
    public Map<String, Object> getUserProperties(boolean z) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            return zzhxVar.zzc(null, null, z);
        }
        Preconditions.checkNotNull(this.zzb);
        List<zzkq> zzC = this.zzb.zzk().zzC(z);
        C4251a c4251a = new C4251a(zzC.size());
        for (zzkq zzkqVar : zzC) {
            Object zza2 = zzkqVar.zza();
            if (zza2 != null) {
                c4251a.put(zzkqVar.zzb, zza2);
            }
        }
        return c4251a;
    }

    @ShowFirstParty
    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            zzhxVar.zza(str, str2, bundle);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzs(str, str2, bundle);
    }

    @ShowFirstParty
    @KeepForSdk
    public void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            zzhxVar.zzb(str, str2, bundle, j);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzv(str, str2, bundle, true, false, j);
    }

    @ShowFirstParty
    @KeepForSdk
    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            zzhxVar.zze(onEventListener);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzJ(onEventListener);
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            zzhxVar.zzn(conditionalUserProperty.zza());
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzM(conditionalUserProperty.zza());
    }

    @ShowFirstParty
    @KeepForSdk
    public void setEventInterceptor(EventInterceptor eventInterceptor) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            zzhxVar.zzd(eventInterceptor);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzI(eventInterceptor);
    }

    @ShowFirstParty
    @KeepForSdk
    public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        zzhx zzhxVar = this.zzc;
        if (zzhxVar != null) {
            zzhxVar.zzf(onEventListener);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzK(onEventListener);
    }
}
