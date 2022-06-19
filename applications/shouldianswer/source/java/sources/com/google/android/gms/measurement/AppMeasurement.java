package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.p014c.C0374a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzgv;
import com.google.android.gms.measurement.internal.zzgw;
import com.google.android.gms.measurement.internal.zzgx;
import com.google.android.gms.measurement.internal.zzgy;
import com.google.android.gms.measurement.internal.zzgz;
import com.google.android.gms.measurement.internal.zzha;
import com.google.android.gms.measurement.internal.zzia;
import com.google.android.gms.measurement.internal.zzig;
import com.google.android.gms.measurement.internal.zzkl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {
    public static final String CRASH_ORIGIN = "crash";
    public static final String FCM_ORIGIN = "fcm";
    public static final String FIAM_ORIGIN = "fiam";
    private static volatile AppMeasurement zza;
    private final zzga zzb;
    private final zzia zzc;
    private final boolean zzd;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty.class */
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

        private ConditionalUserProperty(Bundle bundle) {
            Preconditions.checkNotNull(bundle);
            this.mAppId = (String) zzgw.zza(bundle, "app_id", String.class, null);
            this.mOrigin = (String) zzgw.zza(bundle, "origin", String.class, null);
            this.mName = (String) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null);
            this.mValue = zzgw.zza(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
            this.mTriggerTimeout = ((Long) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
            this.mTimedOutEventParams = (Bundle) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
            this.mTriggeredEventName = (String) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
            this.mTriggeredEventParams = (Bundle) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
            this.mTimeToLive = ((Long) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
            this.mExpiredEventParams = (Bundle) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        }

        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            Preconditions.checkNotNull(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                this.mValue = zzig.zza(obj);
                if (this.mValue == null) {
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

        public final Bundle zza() {
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
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                zzgw.zza(bundle, obj);
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$Event.class */
    public static final class Event extends zzgv {
        public static final String AD_REWARD = "_ar";
        public static final String APP_EXCEPTION = "_ae";

        private Event() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$EventInterceptor.class */
    public interface EventInterceptor extends zzha {
        @Override // com.google.android.gms.measurement.internal.zzha
        void interceptEvent(String str, String str2, Bundle bundle, long j);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$OnEventListener.class */
    public interface OnEventListener extends zzgz {
        @Override // com.google.android.gms.measurement.internal.zzgz
        void onEvent(String str, String str2, Bundle bundle, long j);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$Param.class */
    public static final class Param extends zzgy {
        public static final String FATAL = "fatal";
        public static final String TIMESTAMP = "timestamp";
        public static final String TYPE = "type";

        private Param() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$UserProperty.class */
    public static final class UserProperty extends zzgx {
        public static final String FIREBASE_LAST_NOTIFICATION = "_ln";

        private UserProperty() {
        }
    }

    private AppMeasurement(zzga zzgaVar) {
        Preconditions.checkNotNull(zzgaVar);
        this.zzb = zzgaVar;
        this.zzc = null;
        this.zzd = false;
    }

    private AppMeasurement(zzia zziaVar) {
        Preconditions.checkNotNull(zziaVar);
        this.zzc = zziaVar;
        this.zzb = null;
        this.zzd = true;
    }

    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        return zza(context, null, null);
    }

    public static AppMeasurement zza(Context context, Bundle bundle) {
        if (zza == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (zza == null) {
                        zzia zzb = zzb(context, bundle);
                        if (zzb != null) {
                            zza = new AppMeasurement(zzb);
                        } else {
                            zza = new AppMeasurement(zzga.zza(context, null, null, bundle));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zza;
    }

    private static AppMeasurement zza(Context context, String str, String str2) {
        if (zza == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (zza == null) {
                        zzia zzb = zzb(context, null);
                        if (zzb != null) {
                            zza = new AppMeasurement(zzb);
                        } else {
                            zza = new AppMeasurement(zzga.zza(context, null, null, null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zza;
    }

    private static zzia zzb(Context context, Bundle bundle) {
        try {
            return (zzia) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, bundle);
        } catch (ClassNotFoundException | Exception e) {
            return null;
        }
    }

    public void beginAdUnitExposure(String str) {
        if (this.zzd) {
            this.zzc.zza(str);
        } else {
            this.zzb.zzz().zza(str, this.zzb.zzm().elapsedRealtime());
        }
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (this.zzd) {
            this.zzc.zzb(str, str2, bundle);
        } else {
            this.zzb.zzh().zzc(str, str2, bundle);
        }
    }

    protected void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        if (!this.zzd) {
            this.zzb.zzh().zza(str, str2, str3, bundle);
            return;
        }
        throw new IllegalStateException("Unexpected call on client side");
    }

    public void endAdUnitExposure(String str) {
        if (this.zzd) {
            this.zzc.zzb(str);
        } else {
            this.zzb.zzz().zzb(str, this.zzb.zzm().elapsedRealtime());
        }
    }

    public long generateEventId() {
        return this.zzd ? this.zzc.zze() : this.zzb.zzi().zzg();
    }

    public String getAppInstanceId() {
        return this.zzd ? this.zzc.zzc() : this.zzb.zzh().zzah();
    }

    public Boolean getBoolean() {
        return this.zzd ? (Boolean) this.zzc.zza(4) : this.zzb.zzh().zzac();
    }

    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List<Bundle> zza2 = this.zzd ? this.zzc.zza(str, str2) : this.zzb.zzh().zza(str, str2);
        ArrayList arrayList = new ArrayList(zza2 == null ? 0 : zza2.size());
        for (Bundle bundle : zza2) {
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    protected List<ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        if (!this.zzd) {
            ArrayList<Bundle> zza2 = this.zzb.zzh().zza(str, str2, str3);
            ArrayList arrayList = new ArrayList(zza2 == null ? 0 : zza2.size());
            ArrayList<Bundle> arrayList2 = zza2;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                i++;
                arrayList.add(new ConditionalUserProperty(arrayList2.get(i)));
            }
            return arrayList;
        }
        throw new IllegalStateException("Unexpected call on client side");
    }

    public String getCurrentScreenClass() {
        return this.zzd ? this.zzc.zzb() : this.zzb.zzh().zzak();
    }

    public String getCurrentScreenName() {
        return this.zzd ? this.zzc.zza() : this.zzb.zzh().zzaj();
    }

    public Double getDouble() {
        return this.zzd ? (Double) this.zzc.zza(2) : this.zzb.zzh().zzag();
    }

    public String getGmpAppId() {
        return this.zzd ? this.zzc.zzd() : this.zzb.zzh().zzal();
    }

    public Integer getInteger() {
        return this.zzd ? (Integer) this.zzc.zza(3) : this.zzb.zzh().zzaf();
    }

    public Long getLong() {
        return this.zzd ? (Long) this.zzc.zza(1) : this.zzb.zzh().zzae();
    }

    public int getMaxUserProperties(String str) {
        if (this.zzd) {
            return this.zzc.zzc(str);
        }
        this.zzb.zzh();
        Preconditions.checkNotEmpty(str);
        return 25;
    }

    public String getString() {
        return this.zzd ? (String) this.zzc.zza(0) : this.zzb.zzh().zzad();
    }

    protected Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.zzd ? this.zzc.zza(str, str2, z) : this.zzb.zzh().zza(str, str2, z);
    }

    public Map<String, Object> getUserProperties(boolean z) {
        if (this.zzd) {
            return this.zzc.zza((String) null, (String) null, z);
        }
        List<zzkl> zzc = this.zzb.zzh().zzc(z);
        C0374a c0374a = new C0374a(zzc.size());
        for (zzkl zzklVar : zzc) {
            c0374a.put(zzklVar.zza, zzklVar.zza());
        }
        return c0374a;
    }

    protected Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        if (!this.zzd) {
            return this.zzb.zzh().zza(str, str2, str3, z);
        }
        throw new IllegalStateException("Unexpected call on client side");
    }

    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (this.zzd) {
            this.zzc.zza(str, str2, bundle);
        } else {
            this.zzb.zzh().zza(str, str2, bundle);
        }
    }

    public void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
        if (this.zzd) {
            this.zzc.zza(str, str2, bundle, j);
        } else {
            this.zzb.zzh().zza(str, str2, bundle, true, false, j);
        }
    }

    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        if (this.zzd) {
            this.zzc.zza(onEventListener);
        } else {
            this.zzb.zzh().zza(onEventListener);
        }
    }

    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        if (this.zzd) {
            this.zzc.zza(conditionalUserProperty.zza());
        } else {
            this.zzb.zzh().zza(conditionalUserProperty.zza());
        }
    }

    protected void setConditionalUserPropertyAs(ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        if (!this.zzd) {
            this.zzb.zzh().zzb(conditionalUserProperty.zza());
            return;
        }
        throw new IllegalStateException("Unexpected call on client side");
    }

    public void setEventInterceptor(EventInterceptor eventInterceptor) {
        if (this.zzd) {
            this.zzc.zza(eventInterceptor);
        } else {
            this.zzb.zzh().zza(eventInterceptor);
        }
    }

    @Deprecated
    public void setMeasurementEnabled(boolean z) {
        if (this.zzd) {
            this.zzc.zza(z);
        } else {
            this.zzb.zzh().zza(z);
        }
    }

    public void setUserPropertyInternal(String str, String str2, Object obj) {
        Preconditions.checkNotEmpty(str);
        if (this.zzd) {
            this.zzc.zza(str, str2, obj);
        } else {
            this.zzb.zzh().zza(str, str2, obj, true);
        }
    }

    public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        if (this.zzd) {
            this.zzc.zzb(onEventListener);
        } else {
            this.zzb.zzh().zzb(onEventListener);
        }
    }

    public final void zza(boolean z) {
        if (this.zzd) {
            this.zzc.zzb(z);
        } else {
            this.zzb.zzh().zzb(z);
        }
    }
}
