package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.AbstractC7904w6;
import com.google.android.gms.measurement.internal.C7826p5;
import com.google.android.gms.measurement.internal.C7858s4;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {

    /* renamed from: a */
    private static volatile AppMeasurement f34956a;

    /* renamed from: b */
    private final C7858s4 f34957b;

    /* renamed from: c */
    private final AbstractC7904w6 f34958c;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty.class */
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
            C6155o.m17018j(bundle);
            this.mAppId = (String) C7826p5.m6098b(bundle, "app_id", String.class, null);
            this.mOrigin = (String) C7826p5.m6098b(bundle, "origin", String.class, null);
            this.mName = (String) C7826p5.m6098b(bundle, ShortCut.NAME, String.class, null);
            this.mValue = C7826p5.m6098b(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) C7826p5.m6098b(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) C7826p5.m6098b(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) C7826p5.m6098b(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) C7826p5.m6098b(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) C7826p5.m6098b(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) C7826p5.m6098b(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) C7826p5.m6098b(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) C7826p5.m6098b(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) C7826p5.m6098b(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) C7826p5.m6098b(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) C7826p5.m6098b(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) C7826p5.m6098b(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }

        /* renamed from: a */
        final Bundle m6626a() {
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
                bundle.putString(ShortCut.NAME, str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                C7826p5.m6099a(bundle, obj);
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

    public AppMeasurement(C7858s4 c7858s4) {
        C6155o.m17018j(c7858s4);
        this.f34957b = c7858s4;
        this.f34958c = null;
    }

    public AppMeasurement(AbstractC7904w6 abstractC7904w6) {
        C6155o.m17018j(abstractC7904w6);
        this.f34958c = abstractC7904w6;
        this.f34957b = null;
    }

    @RecentlyNonNull
    @Keep
    @Deprecated
    public static AppMeasurement getInstance(@RecentlyNonNull Context context) {
        AbstractC7904w6 abstractC7904w6;
        if (f34956a == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f34956a == null) {
                        try {
                            abstractC7904w6 = (AbstractC7904w6) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                        } catch (ClassNotFoundException | Exception e) {
                            abstractC7904w6 = null;
                        }
                        if (abstractC7904w6 != null) {
                            f34956a = new AppMeasurement(abstractC7904w6);
                        } else {
                            f34956a = new AppMeasurement(C7858s4.m6025f(context, new zzz(0L, 0L, true, null, null, null, null, null), null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f34956a;
    }

    @Keep
    public void beginAdUnitExposure(@RecentlyNonNull String str) {
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            abstractC7904w6.mo2558a(str);
            return;
        }
        C6155o.m17018j(this.f34957b);
        this.f34957b.m6026e().m6599g(str, this.f34957b.mo6007x().mo16806b());
    }

    @Keep
    public void clearConditionalUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            abstractC7904w6.mo2555d(str, str2, bundle);
            return;
        }
        C6155o.m17018j(this.f34957b);
        this.f34957b.m6044F().m5939A(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(@RecentlyNonNull String str) {
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            abstractC7904w6.mo2559N(str);
            return;
        }
        C6155o.m17018j(this.f34957b);
        this.f34957b.m6026e().m6598h(str, this.f34957b.mo6007x().mo16806b());
    }

    @Keep
    public long generateEventId() {
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            return abstractC7904w6.mo2551h();
        }
        C6155o.m17018j(this.f34957b);
        return this.f34957b.m6043G().m5967h0();
    }

    @RecentlyNonNull
    @Keep
    public String getAppInstanceId() {
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            return abstractC7904w6.zzi();
        }
        C6155o.m17018j(this.f34957b);
        return this.f34957b.m6044F().m5908o();
    }

    @RecentlyNonNull
    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        ArrayList<Bundle> arrayList;
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            arrayList = abstractC7904w6.mo2556c(str, str2);
        } else {
            C6155o.m17018j(this.f34957b);
            arrayList = this.f34957b.m6044F().m5938B(str, str2);
        }
        ArrayList arrayList2 = new ArrayList(arrayList == null ? 0 : arrayList.size());
        for (Bundle bundle : arrayList) {
            arrayList2.add(new ConditionalUserProperty(bundle));
        }
        return arrayList2;
    }

    @RecentlyNonNull
    @Keep
    public String getCurrentScreenClass() {
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            return abstractC7904w6.mo2553f();
        }
        C6155o.m17018j(this.f34957b);
        return this.f34957b.m6044F().m5935F();
    }

    @RecentlyNonNull
    @Keep
    public String getCurrentScreenName() {
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            return abstractC7904w6.zzg();
        }
        C6155o.m17018j(this.f34957b);
        return this.f34957b.m6044F().m5936E();
    }

    @RecentlyNonNull
    @Keep
    public String getGmpAppId() {
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            return abstractC7904w6.mo2552g();
        }
        C6155o.m17018j(this.f34957b);
        return this.f34957b.m6044F().m5934G();
    }

    @Keep
    public int getMaxUserProperties(@RecentlyNonNull String str) {
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            return abstractC7904w6.mo2561G0(str);
        }
        C6155o.m17018j(this.f34957b);
        this.f34957b.m6044F().m5900w(str);
        return 25;
    }

    @RecentlyNonNull
    @Keep
    protected Map<String, Object> getUserProperties(@RecentlyNonNull String str, @RecentlyNonNull String str2, boolean z) {
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            return abstractC7904w6.mo2554e(str, str2, z);
        }
        C6155o.m17018j(this.f34957b);
        return this.f34957b.m6044F().m5937D(str, str2, z);
    }

    @Keep
    public void logEventInternal(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            abstractC7904w6.mo2557b(str, str2, bundle);
            return;
        }
        C6155o.m17018j(this.f34957b);
        this.f34957b.m6044F().m5917X(str, str2, bundle);
    }

    @Keep
    public void setConditionalUserProperty(@RecentlyNonNull ConditionalUserProperty conditionalUserProperty) {
        C6155o.m17018j(conditionalUserProperty);
        AbstractC7904w6 abstractC7904w6 = this.f34958c;
        if (abstractC7904w6 != null) {
            abstractC7904w6.mo2560L(conditionalUserProperty.m6626a());
            return;
        }
        C6155o.m17018j(this.f34957b);
        this.f34957b.m6044F().m5899y(conditionalUserProperty.m6626a());
    }
}
