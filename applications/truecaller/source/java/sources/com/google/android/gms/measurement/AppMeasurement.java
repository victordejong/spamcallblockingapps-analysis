package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzcl;
import com.google.android.gms.measurement.internal.zzfr;
import com.google.android.gms.measurement.internal.zzhx;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.razorpay.AnalyticsConstants;
import e.m.a.f.l.b;
import e.m.a.f.l.c;
import e.m.a.f.l.d;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
@ShowFirstParty
@KeepForSdk
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {

    /* renamed from: b */
    public static volatile AppMeasurement f6256b;

    /* renamed from: a */
    public final d f6257a;

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty.class */
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
            Objects.requireNonNull(bundle, "null reference");
            this.mAppId = (String) C26232y.m2319o2(bundle, HiAnalyticsConstant.BI_KEY_APP_ID, String.class, null);
            this.mOrigin = (String) C26232y.m2319o2(bundle, "origin", String.class, null);
            this.mName = (String) C26232y.m2319o2(bundle, AnalyticsConstants.NAME, String.class, null);
            this.mValue = C26232y.m2319o2(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) C26232y.m2319o2(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) C26232y.m2319o2(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) C26232y.m2319o2(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) C26232y.m2319o2(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) C26232y.m2319o2(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) C26232y.m2319o2(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) C26232y.m2319o2(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) C26232y.m2319o2(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) C26232y.m2319o2(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) C26232y.m2319o2(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) C26232y.m2319o2(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) C26232y.m2319o2(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }
    }

    public AppMeasurement(zzfr zzfrVar) {
        this.f6257a = new b(zzfrVar);
    }

    public AppMeasurement(zzhx zzhxVar) {
        this.f6257a = new c(zzhxVar);
    }

    @Keep
    @Deprecated
    @ShowFirstParty
    @KeepForSdk
    public static AppMeasurement getInstance(Context context) {
        zzhx zzhxVar;
        if (f6256b == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f6256b == null) {
                        try {
                            zzhxVar = (zzhx) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                        } catch (ClassNotFoundException | Exception e) {
                            zzhxVar = null;
                        }
                        if (zzhxVar != null) {
                            f6256b = new AppMeasurement(zzhxVar);
                        } else {
                            f6256b = new AppMeasurement(zzfr.q(context, new zzcl(0L, 0L, true, null, null, null, null, null), (Long) null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f6256b;
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        this.f6257a.m38568b(str);
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f6257a.m38563g(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        this.f6257a.m38567c(str);
    }

    @Keep
    public long generateEventId() {
        return this.f6257a.zzb();
    }

    @Keep
    public String getAppInstanceId() {
        return this.f6257a.zzh();
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List<Bundle> m38565e = this.f6257a.m38565e(str, str2);
        ArrayList arrayList = new ArrayList(m38565e == null ? 0 : m38565e.size());
        for (Bundle bundle : m38565e) {
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    @Keep
    public String getCurrentScreenClass() {
        return this.f6257a.zzi();
    }

    @Keep
    public String getCurrentScreenName() {
        return this.f6257a.zzj();
    }

    @Keep
    public String getGmpAppId() {
        return this.f6257a.zzk();
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public int getMaxUserProperties(String str) {
        return this.f6257a.zza(str);
    }

    @VisibleForTesting
    @Keep
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.f6257a.m38566d(str, str2, z);
    }

    @ShowFirstParty
    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        this.f6257a.m38569a(str, str2, bundle);
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        Objects.requireNonNull(conditionalUserProperty, "null reference");
        d dVar = this.f6257a;
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString(HiAnalyticsConstant.BI_KEY_APP_ID, str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString("origin", str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString(AnalyticsConstants.NAME, str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            C26232y.m2469E2(bundle, obj);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString("trigger_event_name", str4);
        }
        bundle.putLong("trigger_timeout", conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString("timed_out_event_name", str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString("triggered_event_name", str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString("expired_event_name", str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean("active", conditionalUserProperty.mActive);
        bundle.putLong("triggered_timestamp", conditionalUserProperty.mTriggeredTimestamp);
        dVar.m38564f(bundle);
    }
}
