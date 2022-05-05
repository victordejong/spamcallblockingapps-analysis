package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.measurement.internal.zzfh;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p285m.p287b.C8959c4;
import p081h.p203i.p204a.p224e.p285m.p287b.C8997j;
import p081h.p203i.p204a.p224e.p285m.p287b.C9052s0;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {

    /* renamed from: a */
    public final C9052s0 f7135a;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty.class */
    public static class ConditionalUserProperty {
        @Keep
        public boolean mActive;
        @Keep
        public String mAppId;
        @Keep
        public long mCreationTimestamp;
        @Keep
        public String mExpiredEventName;
        @Keep
        public Bundle mExpiredEventParams;
        @Keep
        public String mName;
        @Keep
        public String mOrigin;
        @Keep
        public long mTimeToLive;
        @Keep
        public String mTimedOutEventName;
        @Keep
        public Bundle mTimedOutEventParams;
        @Keep
        public String mTriggerEventName;
        @Keep
        public long mTriggerTimeout;
        @Keep
        public String mTriggeredEventName;
        @Keep
        public Bundle mTriggeredEventParams;
        @Keep
        public long mTriggeredTimestamp;
        @Keep
        public Object mValue;

        public ConditionalUserProperty() {
        }

        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            C7021t.m21290a(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                this.mValue = C8959c4.m16716b(obj);
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
    }

    /* renamed from: com.google.android.gms.measurement.AppMeasurement$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$a.class */
    public static final class C3583a {

        /* renamed from: a */
        public static final String[] f7136a = {"app_clear_data", "app_exception", "app_remove", "app_upgrade", "app_install", "app_update", "firebase_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "ad_exposure", "adunit_exposure", "ad_query", "ad_activeview", "ad_impression", "ad_click", "ad_reward", "screen_view", "ga_extra_parameter"};

        /* renamed from: b */
        public static final String[] f7137b = {"_cd", "_ae", "_ui", "_ug", "_in", "_au", "_cmp", "_err", "_f", "_v", "_iap", "_nd", "_nf", "_no", "_nr", "_ou", "_s", "_e", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "_ar", "_vs", "_ep"};

        /* renamed from: a */
        public static String m31670a(String str) {
            return C8959c4.m16720a(str, f7137b, f7136a);
        }

        /* renamed from: b */
        public static String m31669b(String str) {
            return C8959c4.m16720a(str, f7136a, f7137b);
        }
    }

    /* renamed from: com.google.android.gms.measurement.AppMeasurement$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$b.class */
    public interface AbstractC3584b {
        @WorkerThread
        /* renamed from: a */
        void m31668a(String str, String str2, Bundle bundle, long j);
    }

    /* renamed from: com.google.android.gms.measurement.AppMeasurement$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$c.class */
    public interface AbstractC3585c {
        @WorkerThread
        /* renamed from: a */
        void mo15103a(String str, String str2, Bundle bundle, long j);
    }

    /* renamed from: com.google.android.gms.measurement.AppMeasurement$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$d.class */
    public static final class C3586d {

        /* renamed from: a */
        public static final String[] f7138a = {"firebase_conversion", "engagement_time_msec", "exposure_time", "ad_event_id", "ad_unit_id", "firebase_error", "firebase_error_value", "firebase_error_length", "firebase_event_origin", "firebase_screen", "firebase_screen_class", "firebase_screen_id", "firebase_previous_screen", "firebase_previous_class", "firebase_previous_id", "message_device_time", "message_id", "message_name", "message_time", "previous_app_version", "previous_os_version", "topic", "update_with_analytics", "previous_first_open_count", "system_app", "system_app_update", "previous_install_count", "ga_event_id", "ga_extra_params_ct", "ga_group_name", "ga_list_length", "ga_index", "ga_event_name", "campaign_info_source", "deferred_analytics_collection", "session_number", "session_id"};

        /* renamed from: b */
        public static final String[] f7139b = {"_c", "_et", "_xt", "_aeid", "_ai", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_ndt", "_nmid", "_nmn", "_nmt", "_pv", "_po", "_nt", "_uwa", "_pfo", "_sys", "_sysu", "_pin", "_eid", "_epc", "_gn", "_ll", "_i", "_en", "_cis", "_dac", "_sno", "_sid"};

        /* renamed from: a */
        public static String m31667a(String str) {
            return C8959c4.m16720a(str, f7138a, f7139b);
        }
    }

    /* renamed from: com.google.android.gms.measurement.AppMeasurement$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$e.class */
    public static final class C3587e {

        /* renamed from: a */
        public static final String[] f7140a = {"firebase_last_notification", "first_open_time", "first_visit_time", "last_deep_link_referrer", "user_id", "first_open_after_install", "lifetime_user_engagement", "google_allow_ad_personalization_signals", "session_number", "session_id"};

        /* renamed from: b */
        public static final String[] f7141b = {"_ln", "_fot", "_fvt", "_ldl", "_id", "_fi", "_lte", "_ap", "_sno", "_sid"};

        /* renamed from: a */
        public static String m31666a(String str) {
            return C8959c4.m16720a(str, f7140a, f7141b);
        }
    }

    public AppMeasurement(C9052s0 s0Var) {
        C7021t.m21290a(s0Var);
        this.f7135a = s0Var;
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @Keep
    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        return C9052s0.m16298a(context, (C8997j) null).m16268y();
    }

    @WorkerThread
    /* renamed from: a */
    public Map<String, Object> m31672a(boolean z) {
        List<zzfh> b = this.f7135a.m16282k().m16232b(z);
        ArrayMap arrayMap = new ArrayMap(b.size());
        for (zzfh zzfhVar : b) {
            arrayMap.put(zzfhVar.f7152b, zzfhVar.m31657c());
        }
        return arrayMap;
    }

    /* renamed from: a */
    public void m31676a(AbstractC3585c cVar) {
        this.f7135a.m16282k().m16259a(cVar);
    }

    /* renamed from: a */
    public final void m31675a(@NonNull @Size(max = 40, min = 1) String str, Bundle bundle) {
        this.f7135a.m16282k().m16250a("app", str, bundle, true);
    }

    /* renamed from: a */
    public final void m31674a(@NonNull @Size(max = 24, min = 1) String str, @Nullable @Size(max = 36) String str2) {
        this.f7135a.m16282k().m16247a("app", str, (Object) str2, false);
    }

    /* renamed from: a */
    public void m31673a(String str, String str2, Object obj) {
        C7021t.m21283b(str);
        this.f7135a.m16282k().m16247a(str, str2, obj, true);
    }

    /* renamed from: b */
    public final void m31671b(boolean z) {
        this.f7135a.m16282k().m16241a(z);
    }

    @Keep
    public void beginAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.f7135a.m16283j().m16769a(str, this.f7135a.mo16174e().elapsedRealtime());
    }

    @Keep
    public void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle) {
        this.f7135a.m16282k().m16251a(str, str2, bundle);
    }

    @Keep
    public void clearConditionalUserPropertyAs(@NonNull @Size(min = 1) String str, @NonNull @Size(max = 24, min = 1) String str2, @Nullable String str3, @Nullable Bundle bundle) {
        this.f7135a.m16282k().m16244a(str, str2, str3, bundle);
        throw null;
    }

    @Keep
    public void endAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.f7135a.m16283j().m16765b(str, this.f7135a.mo16174e().elapsedRealtime());
    }

    @Keep
    public long generateEventId() {
        return this.f7135a.m16274s().m16701s();
    }

    @Nullable
    @Keep
    public String getAppInstanceId() {
        return this.f7135a.m16282k().m16263D();
    }

    @Keep
    @WorkerThread
    public List<ConditionalUserProperty> getConditionalUserProperties(@Nullable String str, @Nullable @Size(max = 23, min = 1) String str2) {
        return this.f7135a.m16282k().m16238b(str, str2);
    }

    @Keep
    @WorkerThread
    public List<ConditionalUserProperty> getConditionalUserPropertiesAs(@NonNull @Size(min = 1) String str, @Nullable String str2, @Nullable @Size(max = 23, min = 1) String str3) {
        this.f7135a.m16282k().m16245a(str, str2, str3);
        throw null;
    }

    @Nullable
    @Keep
    public String getCurrentScreenClass() {
        return this.f7135a.m16282k().m16266A();
    }

    @Nullable
    @Keep
    public String getCurrentScreenName() {
        return this.f7135a.m16282k().m16265B();
    }

    @Nullable
    @Keep
    public String getGmpAppId() {
        return this.f7135a.m16282k().m16264C();
    }

    @Keep
    @WorkerThread
    public int getMaxUserProperties(@NonNull @Size(min = 1) String str) {
        this.f7135a.m16282k();
        C7021t.m21283b(str);
        return 25;
    }

    @Keep
    @WorkerThread
    public Map<String, Object> getUserProperties(@Nullable String str, @Nullable @Size(max = 24, min = 1) String str2, boolean z) {
        return this.f7135a.m16282k().m16242a(str, str2, z);
    }

    @Keep
    @WorkerThread
    public Map<String, Object> getUserPropertiesAs(@NonNull @Size(min = 1) String str, @Nullable String str2, @Nullable @Size(max = 23, min = 1) String str3, boolean z) {
        this.f7135a.m16282k().m16243a(str, str2, str3, z);
        throw null;
    }

    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        this.f7135a.m16282k().m16236b(str, str2, bundle);
    }

    @Keep
    public void setConditionalUserProperty(@NonNull ConditionalUserProperty conditionalUserProperty) {
        this.f7135a.m16282k().m16260a(conditionalUserProperty);
    }

    @Keep
    public void setConditionalUserPropertyAs(@NonNull ConditionalUserProperty conditionalUserProperty) {
        this.f7135a.m16282k().m16240b(conditionalUserProperty);
        throw null;
    }
}
