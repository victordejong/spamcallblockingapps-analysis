package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzy;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzfl;
import com.google.android.gms.measurement.internal.zzgh;
import com.google.android.gms.measurement.internal.zzgl;
import com.google.android.gms.measurement.internal.zzgm;
import com.google.android.gms.measurement.internal.zzho;
import com.google.android.gms.measurement.internal.zzht;
import com.google.android.gms.measurement.internal.zzkg;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {
    public static final String CRASH_ORIGIN = "crash";
    public static final String FCM_ORIGIN = "fcm";
    public static final String FIAM_ORIGIN = "fiam";
    private static volatile AppMeasurement zza;
    private final zzfl zzb;
    private final zzho zzc;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty.class */
    public static class ConditionalUserProperty {
        public boolean mActive;
        public String mAppId;
        public long mCreationTimestamp;
        public String mExpiredEventName;
        public Bundle mExpiredEventParams;
        public String mName;
        public String mOrigin;
        public long mTimeToLive;
        public String mTimedOutEventName;
        public Bundle mTimedOutEventParams;
        public String mTriggerEventName;
        public long mTriggerTimeout;
        public String mTriggeredEventName;
        public Bundle mTriggeredEventParams;
        public long mTriggeredTimestamp;
        public Object mValue;

        public ConditionalUserProperty() {
        }

        ConditionalUserProperty(Bundle bundle) {
            Preconditions.checkNotNull(bundle);
            this.mAppId = (String) zzgh.zzb(bundle, "app_id", String.class, null);
            this.mOrigin = (String) zzgh.zzb(bundle, "origin", String.class, null);
            this.mName = (String) zzgh.zzb(bundle, "name", String.class, null);
            this.mValue = zzgh.zzb(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
            this.mTriggerTimeout = ((Long) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
            this.mTimedOutEventParams = (Bundle) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
            this.mTriggeredEventName = (String) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
            this.mTriggeredEventParams = (Bundle) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
            this.mTimeToLive = ((Long) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
            this.mExpiredEventParams = (Bundle) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
            this.mActive = ((Boolean) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.class, false)).booleanValue();
            this.mCreationTimestamp = ((Long) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) zzgh.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.class, 0L)).longValue();
        }

        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            Preconditions.checkNotNull(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                Object zzc = zzht.zzc(obj);
                this.mValue = zzc;
                if (zzc == null) {
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

        final Bundle zza() {
            Bundle bundle = new Bundle();
            String str = this.mAppId;
            if (str != null) {
                bundle.putString("app_id", str);
            }
            String str2 = this.mOrigin;
            if (str2 != null) {
                bundle.putString("origin", str2);
            }
            String str3 = this.mName;
            if (str3 != null) {
                bundle.putString("name", str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                zzgh.zza(bundle, obj);
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

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$EventInterceptor.class */
    public interface EventInterceptor extends zzgl {
        @Override // com.google.android.gms.measurement.internal.zzgl
        void interceptEvent(String str, String str2, Bundle bundle, long j);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$OnEventListener.class */
    public interface OnEventListener extends zzgm {
        @Override // com.google.android.gms.measurement.internal.zzgm
        void onEvent(String str, String str2, Bundle bundle, long j);
    }

    public AppMeasurement(zzfl zzflVar) {
        Preconditions.checkNotNull(zzflVar);
        this.zzb = zzflVar;
        this.zzc = null;
    }

    public AppMeasurement(zzho zzhoVar) {
        Preconditions.checkNotNull(zzhoVar);
        this.zzc = zzhoVar;
        this.zzb = null;
    }

    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        zzho zzhoVar;
        if (zza == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (zza == null) {
                        try {
                            zzhoVar = (zzho) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                        } catch (ClassNotFoundException | Exception e) {
                            zzhoVar = null;
                        }
                        if (zzhoVar != null) {
                            zza = new AppMeasurement(zzhoVar);
                        } else {
                            zza = new AppMeasurement(zzfl.zzC(context, new zzy(0L, 0L, true, null, null, null, null, null), null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zza;
    }

    public void beginAdUnitExposure(String str) {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            zzhoVar.zzl(str);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzB().zza(str, this.zzb.zzax().elapsedRealtime());
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            zzhoVar.zzo(str, str2, bundle);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzO(str, str2, bundle);
    }

    public void endAdUnitExposure(String str) {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            zzhoVar.zzm(str);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzB().zzb(str, this.zzb.zzax().elapsedRealtime());
    }

    public long generateEventId() {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return zzhoVar.zzk();
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzl().zzd();
    }

    public String getAppInstanceId() {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return zzhoVar.zzi();
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzD();
    }

    public Boolean getBoolean() {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return (Boolean) zzhoVar.zzr(4);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzi();
    }

    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        ArrayList<Bundle> arrayList;
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            arrayList = zzhoVar.zzp(str, str2);
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

    public String getCurrentScreenClass() {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return zzhoVar.zzh();
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzS();
    }

    public String getCurrentScreenName() {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return zzhoVar.zzg();
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzR();
    }

    public Double getDouble() {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return (Double) zzhoVar.zzr(2);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzm();
    }

    public String getGmpAppId() {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return zzhoVar.zzj();
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzT();
    }

    public Integer getInteger() {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return (Integer) zzhoVar.zzr(3);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzl();
    }

    public Long getLong() {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return (Long) zzhoVar.zzr(1);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzk();
    }

    public int getMaxUserProperties(String str) {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return zzhoVar.zzq(str);
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzL(str);
        return 25;
    }

    public String getString() {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return (String) zzhoVar.zzr(0);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzj();
    }

    protected Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return zzhoVar.zzc(str, str2, z);
        }
        Preconditions.checkNotNull(this.zzb);
        return this.zzb.zzk().zzQ(str, str2, z);
    }

    public Map<String, Object> getUserProperties(boolean z) {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            return zzhoVar.zzc(null, null, z);
        }
        Preconditions.checkNotNull(this.zzb);
        List<zzkg> zzC = this.zzb.zzk().zzC(z);
        ArrayMap arrayMap = new ArrayMap(zzC.size());
        for (zzkg zzkgVar : zzC) {
            Object zza2 = zzkgVar.zza();
            if (zza2 != null) {
                arrayMap.put(zzkgVar.zzb, zza2);
            }
        }
        return arrayMap;
    }

    public void logEventInternal(String str, String str2, Bundle bundle) {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            zzhoVar.zza(str, str2, bundle);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzs(str, str2, bundle);
    }

    public void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            zzhoVar.zzb(str, str2, bundle, j);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzv(str, str2, bundle, true, false, j);
    }

    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            zzhoVar.zze(onEventListener);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzJ(onEventListener);
    }

    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            zzhoVar.zzn(conditionalUserProperty.zza());
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzM(conditionalUserProperty.zza());
    }

    public void setEventInterceptor(EventInterceptor eventInterceptor) {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            zzhoVar.zzd(eventInterceptor);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzI(eventInterceptor);
    }

    public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        zzho zzhoVar = this.zzc;
        if (zzhoVar != null) {
            zzhoVar.zzf(onEventListener);
            return;
        }
        Preconditions.checkNotNull(this.zzb);
        this.zzb.zzk().zzK(onEventListener);
    }
}
