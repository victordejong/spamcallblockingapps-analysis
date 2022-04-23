package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.callerid.block.bean.EZBlackList;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.AbstractC2359w6;
import com.google.android.gms.measurement.internal.C2314p5;
import com.google.android.gms.measurement.internal.s4;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {

    /* renamed from: c */
    private static volatile AppMeasurement f9956c;

    /* renamed from: a */
    private final s4 f9957a;

    /* renamed from: b */
    private final AbstractC2359w6 f9958b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty.class */
    public static class ConditionalUserProperty {
        @Keep
        public boolean mActive;
        @RecentlyNonNull
        @Keep
        public String mAppId;
        @Keep
        public long mCreationTimestamp;
        @RecentlyNonNull
        @Keep
        public String mExpiredEventName;
        @RecentlyNonNull
        @Keep
        public Bundle mExpiredEventParams;
        @RecentlyNonNull
        @Keep
        public String mName;
        @RecentlyNonNull
        @Keep
        public String mOrigin;
        @Keep
        public long mTimeToLive;
        @RecentlyNonNull
        @Keep
        public String mTimedOutEventName;
        @RecentlyNonNull
        @Keep
        public Bundle mTimedOutEventParams;
        @RecentlyNonNull
        @Keep
        public String mTriggerEventName;
        @Keep
        public long mTriggerTimeout;
        @RecentlyNonNull
        @Keep
        public String mTriggeredEventName;
        @RecentlyNonNull
        @Keep
        public Bundle mTriggeredEventParams;
        @Keep
        public long mTriggeredTimestamp;
        @RecentlyNonNull
        @Keep
        public Object mValue;

        public ConditionalUserProperty() {
        }

        ConditionalUserProperty(Bundle bundle) {
            C1581h.m8347h(bundle);
            this.mAppId = (String) C2314p5.m3853b(bundle, "app_id", String.class, null);
            this.mOrigin = (String) C2314p5.m3853b(bundle, "origin", String.class, null);
            this.mName = (String) C2314p5.m3853b(bundle, EZBlackList.NAME, String.class, null);
            this.mValue = C2314p5.m3853b(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) C2314p5.m3853b(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) C2314p5.m3853b(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) C2314p5.m3853b(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) C2314p5.m3853b(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) C2314p5.m3853b(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) C2314p5.m3853b(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) C2314p5.m3853b(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) C2314p5.m3853b(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) C2314p5.m3853b(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) C2314p5.m3853b(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) C2314p5.m3853b(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) C2314p5.m3853b(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }

        /* renamed from: a */
        final Bundle m4051a() {
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
                bundle.putString(EZBlackList.NAME, str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                C2314p5.m3854a(bundle, obj);
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

    public AppMeasurement(s4 s4Var) {
        C1581h.m8347h(s4Var);
        this.f9957a = s4Var;
        this.f9958b = null;
    }

    public AppMeasurement(AbstractC2359w6 w6Var) {
        C1581h.m8347h(w6Var);
        this.f9958b = w6Var;
        this.f9957a = null;
    }

    @RecentlyNonNull
    @Keep
    @Deprecated
    public static AppMeasurement getInstance(@RecentlyNonNull Context context) {
        AbstractC2359w6 w6Var;
        if (f9956c == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f9956c == null) {
                        try {
                            w6Var = (AbstractC2359w6) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                        } catch (ClassNotFoundException | Exception e) {
                            w6Var = null;
                        }
                        if (w6Var != null) {
                            f9956c = new AppMeasurement(w6Var);
                        } else {
                            f9956c = new AppMeasurement(s4.f(context, new zzz(0L, 0L, true, (String) null, (String) null, (String) null, (Bundle) null, (String) null), (Long) null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9956c;
    }

    @Keep
    public void beginAdUnitExposure(@RecentlyNonNull String str) {
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            w6Var.m3820b(str);
            return;
        }
        C1581h.m8347h(this.f9957a);
        this.f9957a.e().g(str, this.f9957a.v().m8245c());
    }

    @Keep
    public void clearConditionalUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            w6Var.m3819c(str, str2, bundle);
            return;
        }
        C1581h.m8347h(this.f9957a);
        this.f9957a.F().B(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(@RecentlyNonNull String str) {
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            w6Var.m3823P(str);
            return;
        }
        C1581h.m8347h(this.f9957a);
        this.f9957a.e().h(str, this.f9957a.v().m8245c());
    }

    @Keep
    public long generateEventId() {
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            return w6Var.m3812j();
        }
        C1581h.m8347h(this.f9957a);
        return this.f9957a.G().h0();
    }

    @RecentlyNonNull
    @Keep
    public String getAppInstanceId() {
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            return w6Var.m3813i();
        }
        C1581h.m8347h(this.f9957a);
        return this.f9957a.F().o();
    }

    @RecentlyNonNull
    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        List<Bundle> list;
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            list = w6Var.m3818d(str, str2);
        } else {
            C1581h.m8347h(this.f9957a);
            list = this.f9957a.F().C(str, str2);
        }
        ArrayList arrayList = new ArrayList(list == null ? 0 : list.size());
        for (Bundle bundle : list) {
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    @RecentlyNonNull
    @Keep
    public String getCurrentScreenClass() {
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            return w6Var.m3817e();
        }
        C1581h.m8347h(this.f9957a);
        return this.f9957a.F().F();
    }

    @RecentlyNonNull
    @Keep
    public String getCurrentScreenName() {
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            return w6Var.m3815g();
        }
        C1581h.m8347h(this.f9957a);
        return this.f9957a.F().E();
    }

    @RecentlyNonNull
    @Keep
    public String getGmpAppId() {
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            return w6Var.m3814h();
        }
        C1581h.m8347h(this.f9957a);
        return this.f9957a.F().G();
    }

    @Keep
    public int getMaxUserProperties(@RecentlyNonNull String str) {
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            return w6Var.m3824H0(str);
        }
        C1581h.m8347h(this.f9957a);
        this.f9957a.F().y(str);
        return 25;
    }

    @RecentlyNonNull
    @Keep
    protected Map<String, Object> getUserProperties(@RecentlyNonNull String str, @RecentlyNonNull String str2, boolean z) {
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            return w6Var.m3816f(str, str2, z);
        }
        C1581h.m8347h(this.f9957a);
        return this.f9957a.F().D(str, str2, z);
    }

    @Keep
    public void logEventInternal(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            w6Var.m3821a(str, str2, bundle);
            return;
        }
        C1581h.m8347h(this.f9957a);
        this.f9957a.F().X(str, str2, bundle);
    }

    @Keep
    public void setConditionalUserProperty(@RecentlyNonNull ConditionalUserProperty conditionalUserProperty) {
        C1581h.m8347h(conditionalUserProperty);
        AbstractC2359w6 w6Var = this.f9958b;
        if (w6Var != null) {
            w6Var.m3822Z(conditionalUserProperty.m4051a());
            return;
        }
        C1581h.m8347h(this.f9957a);
        this.f9957a.F().z(conditionalUserProperty.m4051a());
    }
}
