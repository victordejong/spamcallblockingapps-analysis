package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzae;
import com.google.android.gms.measurement.internal.zzfv;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzgt;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzgv;
import com.google.android.gms.measurement.internal.zzgw;
import com.google.android.gms.measurement.internal.zzgx;
import com.google.android.gms.measurement.internal.zzib;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@ShowFirstParty
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {

    /* renamed from: d */
    private static volatile AppMeasurement f8813d;

    /* renamed from: a */
    private final zzfv f8814a;

    /* renamed from: b */
    private final zzib f8815b;

    /* renamed from: c */
    private final boolean f8816c;

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
        ConditionalUserProperty(@NonNull Bundle bundle) {
            Preconditions.m14523k(bundle);
            this.mAppId = (String) zzgt.m11304a(bundle, "app_id", String.class, null);
            this.mOrigin = (String) zzgt.m11304a(bundle, FirebaseAnalytics.Param.ORIGIN, String.class, null);
            this.mName = (String) zzgt.m11304a(bundle, "name", String.class, null);
            this.mValue = zzgt.m11304a(bundle, FirebaseAnalytics.Param.VALUE, Object.class, null);
            this.mTriggerEventName = (String) zzgt.m11304a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) zzgt.m11304a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) zzgt.m11304a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) zzgt.m11304a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) zzgt.m11304a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) zzgt.m11304a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) zzgt.m11304a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) zzgt.m11304a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) zzgt.m11304a(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) zzgt.m11304a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) zzgt.m11304a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) zzgt.m11304a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }

        @VisibleForTesting
        /* renamed from: a */
        final Bundle m11829a() {
            Bundle bundle = new Bundle();
            String str = this.mAppId;
            if (str != null) {
                bundle.putString("app_id", str);
            }
            String str2 = this.mOrigin;
            if (str2 != null) {
                bundle.putString(FirebaseAnalytics.Param.ORIGIN, str2);
            }
            String str3 = this.mName;
            if (str3 != null) {
                bundle.putString("name", str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                zzgt.m11303b(bundle, obj);
            }
            String str4 = this.mTriggerEventName;
            if (str4 != null) {
                bundle.putString("trigger_event_name", str4);
            }
            bundle.putLong("trigger_timeout", this.mTriggerTimeout);
            String str5 = this.mTimedOutEventName;
            if (str5 != null) {
                bundle.putString("timed_out_event_name", str5);
            }
            Bundle bundle2 = this.mTimedOutEventParams;
            if (bundle2 != null) {
                bundle.putBundle("timed_out_event_params", bundle2);
            }
            String str6 = this.mTriggeredEventName;
            if (str6 != null) {
                bundle.putString("triggered_event_name", str6);
            }
            Bundle bundle3 = this.mTriggeredEventParams;
            if (bundle3 != null) {
                bundle.putBundle("triggered_event_params", bundle3);
            }
            bundle.putLong("time_to_live", this.mTimeToLive);
            String str7 = this.mExpiredEventName;
            if (str7 != null) {
                bundle.putString("expired_event_name", str7);
            }
            Bundle bundle4 = this.mExpiredEventParams;
            if (bundle4 != null) {
                bundle.putBundle("expired_event_params", bundle4);
            }
            bundle.putLong("creation_timestamp", this.mCreationTimestamp);
            bundle.putBoolean("active", this.mActive);
            bundle.putLong("triggered_timestamp", this.mTriggeredTimestamp);
            return bundle;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$Event.class */
    public static final class Event extends zzgs {
        private Event() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$EventInterceptor.class */
    public interface EventInterceptor extends zzgx {
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$OnEventListener.class */
    public interface OnEventListener extends zzgw {
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$Param.class */
    public static final class Param extends zzgv {
        private Param() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$UserProperty.class */
    public static final class UserProperty extends zzgu {
        private UserProperty() {
        }
    }

    private AppMeasurement(zzfv zzfvVar) {
        Preconditions.m14523k(zzfvVar);
        this.f8814a = zzfvVar;
        this.f8815b = null;
        this.f8816c = false;
    }

    private AppMeasurement(zzib zzibVar) {
        Preconditions.m14523k(zzibVar);
        this.f8815b = zzibVar;
        this.f8814a = null;
        this.f8816c = true;
    }

    @VisibleForTesting
    /* renamed from: a */
    private static AppMeasurement m11831a(Context context, String str, String str2) {
        if (f8813d == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f8813d == null) {
                        zzib b = m11830b(context, null);
                        if (b != null) {
                            f8813d = new AppMeasurement(b);
                        } else {
                            f8813d = new AppMeasurement(zzfv.m11367d(context, new zzae(0L, 0L, true, null, null, null, null), null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8813d;
    }

    /* renamed from: b */
    private static zzib m11830b(Context context, Bundle bundle) {
        try {
            return (zzib) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
        } catch (ClassNotFoundException | Exception e) {
            return null;
        }
    }

    @Keep
    @Deprecated
    @RequiresPermission
    @ShowFirstParty
    @KeepForSdk
    public static AppMeasurement getInstance(Context context) {
        return m11831a(context, null, null);
    }

    @Keep
    public void beginAdUnitExposure(@NonNull @Size(min = 1) String str) {
        if (this.f8816c) {
            this.f8815b.zza(str);
        } else {
            this.f8814a.m11369S().m11806y(str, this.f8814a.mo11085a().mo14334b());
        }
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle) {
        if (this.f8816c) {
            this.f8815b.zzb(str, str2, bundle);
        } else {
            this.f8814a.m11382F().m11298A0(str, str2, bundle);
        }
    }

    @VisibleForTesting
    @Keep
    protected void clearConditionalUserPropertyAs(@NonNull @Size(min = 1) String str, @NonNull @Size(max = 24, min = 1) String str2, @Nullable String str3, @Nullable Bundle bundle) {
        if (this.f8816c) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f8814a.m11382F().m11267d0(str, str2, str3, bundle);
        throw null;
    }

    @Keep
    public void endAdUnitExposure(@NonNull @Size(min = 1) String str) {
        if (this.f8816c) {
            this.f8815b.zzb(str);
        } else {
            this.f8814a.m11369S().m11813C(str, this.f8814a.mo11085a().mo14334b());
        }
    }

    @Keep
    public long generateEventId() {
        return this.f8816c ? this.f8815b.zze() : this.f8814a.m11381G().m10998C0();
    }

    @Nullable
    @Keep
    public String getAppInstanceId() {
        return this.f8816c ? this.f8815b.zzc() : this.f8814a.m11382F().m11260k0();
    }

    @Keep
    @ShowFirstParty
    @KeepForSdk
    @WorkerThread
    public List<ConditionalUserProperty> getConditionalUserProperties(@Nullable String str, @Nullable @Size(max = 23, min = 1) String str2) {
        List<Bundle> zza = this.f8816c ? this.f8815b.zza(str, str2) : this.f8814a.m11382F().m11299A(str, str2);
        ArrayList arrayList = new ArrayList(zza == null ? 0 : zza.size());
        for (Bundle bundle : zza) {
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    @VisibleForTesting
    @Keep
    @WorkerThread
    protected List<ConditionalUserProperty> getConditionalUserPropertiesAs(@NonNull @Size(min = 1) String str, @Nullable String str2, @Nullable @Size(max = 23, min = 1) String str3) {
        if (this.f8816c) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f8814a.m11382F().m11297B(str, str2, str3);
        throw null;
    }

    @Nullable
    @Keep
    public String getCurrentScreenClass() {
        return this.f8816c ? this.f8815b.zzb() : this.f8814a.m11382F().m11257n0();
    }

    @Nullable
    @Keep
    public String getCurrentScreenName() {
        return this.f8816c ? this.f8815b.zza() : this.f8814a.m11382F().m11258m0();
    }

    @Nullable
    @Keep
    public String getGmpAppId() {
        return this.f8816c ? this.f8815b.zzd() : this.f8814a.m11382F().m11256o0();
    }

    @Keep
    @ShowFirstParty
    @KeepForSdk
    @WorkerThread
    public int getMaxUserProperties(@NonNull @Size(min = 1) String str) {
        if (this.f8816c) {
            return this.f8815b.zzc(str);
        }
        this.f8814a.m11382F();
        Preconditions.m14527g(str);
        return 25;
    }

    @VisibleForTesting
    @Keep
    @WorkerThread
    protected Map<String, Object> getUserProperties(@Nullable String str, @Nullable @Size(max = 24, min = 1) String str2, boolean z) {
        return this.f8816c ? this.f8815b.zza(str, str2, z) : this.f8814a.m11382F().m11293D(str, str2, z);
    }

    @VisibleForTesting
    @Keep
    @WorkerThread
    protected Map<String, Object> getUserPropertiesAs(@NonNull @Size(min = 1) String str, @Nullable String str2, @Nullable @Size(max = 23, min = 1) String str3, boolean z) {
        if (this.f8816c) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f8814a.m11382F().m11295C(str, str2, str3, z);
        throw null;
    }

    @ShowFirstParty
    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (this.f8816c) {
            this.f8815b.zza(str, str2, bundle);
        } else {
            this.f8814a.m11382F().m11273X(str, str2, bundle);
        }
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void setConditionalUserProperty(@NonNull ConditionalUserProperty conditionalUserProperty) {
        Preconditions.m14523k(conditionalUserProperty);
        if (this.f8816c) {
            this.f8815b.zza(conditionalUserProperty.m11829a());
        } else {
            this.f8814a.m11382F().m11291F(conditionalUserProperty.m11829a());
        }
    }

    @VisibleForTesting
    @Keep
    protected void setConditionalUserPropertyAs(@NonNull ConditionalUserProperty conditionalUserProperty) {
        Preconditions.m14523k(conditionalUserProperty);
        if (this.f8816c) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f8814a.m11382F().m11252s0(conditionalUserProperty.m11829a());
        throw null;
    }
}
