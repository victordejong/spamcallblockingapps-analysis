package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.es;
import com.google.android.gms.measurement.internal.fp;
import com.google.android.gms.measurement.internal.gw;
import com.google.android.gms.measurement.internal.hb;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {

    /* renamed from: a  reason: collision with root package name */
    private static volatile AppMeasurement f29385a;

    /* renamed from: b  reason: collision with root package name */
    private final es f29386b;

    /* renamed from: c  reason: collision with root package name */
    private final gw f29387c;

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
            o.a(bundle);
            this.mAppId = (String) fp.a(bundle, PangleAdapterConfiguration.APP_ID_EXTRA_KEY, String.class, null);
            this.mOrigin = (String) fp.a(bundle, "origin", String.class, null);
            this.mName = (String) fp.a(bundle, "name", String.class, null);
            this.mValue = fp.a(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) fp.a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) fp.a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) fp.a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) fp.a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) fp.a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) fp.a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) fp.a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) fp.a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) fp.a(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) fp.a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) fp.a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) fp.a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }

        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            o.a(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                Object a2 = hb.a(obj);
                this.mValue = a2;
                if (a2 == null) {
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

        final Bundle a() {
            Bundle bundle = new Bundle();
            String str = this.mAppId;
            if (str != null) {
                bundle.putString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
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
                fp.a(bundle, obj);
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

    public AppMeasurement(es esVar) {
        o.a(esVar);
        this.f29386b = esVar;
        this.f29387c = null;
    }

    public AppMeasurement(gw gwVar) {
        o.a(gwVar);
        this.f29387c = gwVar;
        this.f29386b = null;
    }

    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        gw gwVar;
        if (f29385a == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f29385a == null) {
                        try {
                            gwVar = (gw) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                        } catch (ClassNotFoundException | Exception e) {
                            gwVar = null;
                        }
                        if (gwVar != null) {
                            f29385a = new AppMeasurement(gwVar);
                        } else {
                            f29385a = new AppMeasurement(es.a(context, new zzz(0L, 0L, true, null, null, null, null, null), (Long) null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f29385a;
    }

    public void beginAdUnitExposure(String str) {
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            gwVar.a(str);
            return;
        }
        o.a(this.f29386b);
        this.f29386b.p().a(str, this.f29386b.j.b());
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            gwVar.b(str, str2, bundle);
            return;
        }
        o.a(this.f29386b);
        this.f29386b.f().b(str, str2, bundle);
    }

    public void endAdUnitExposure(String str) {
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            gwVar.b(str);
            return;
        }
        o.a(this.f29386b);
        this.f29386b.p().b(str, this.f29386b.j.b());
    }

    public long generateEventId() {
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            return gwVar.e();
        }
        o.a(this.f29386b);
        return this.f29386b.g().e();
    }

    public String getAppInstanceId() {
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            return gwVar.c();
        }
        o.a(this.f29386b);
        return this.f29386b.f().p();
    }

    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List<Bundle> list;
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            list = gwVar.a(str, str2);
        } else {
            o.a(this.f29386b);
            list = this.f29386b.f().a(str, str2);
        }
        ArrayList arrayList = new ArrayList(list == null ? 0 : list.size());
        for (Bundle bundle : list) {
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    public String getCurrentScreenClass() {
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            return gwVar.b();
        }
        o.a(this.f29386b);
        return this.f29386b.f().s();
    }

    public String getCurrentScreenName() {
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            return gwVar.a();
        }
        o.a(this.f29386b);
        return this.f29386b.f().r();
    }

    public String getGmpAppId() {
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            return gwVar.d();
        }
        o.a(this.f29386b);
        return this.f29386b.f().t();
    }

    public int getMaxUserProperties(String str) {
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            return gwVar.c(str);
        }
        o.a(this.f29386b);
        this.f29386b.f();
        o.a(str);
        return 25;
    }

    protected Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            return gwVar.a(str, str2, z);
        }
        o.a(this.f29386b);
        return this.f29386b.f().a(str, str2, z);
    }

    public void logEventInternal(String str, String str2, Bundle bundle) {
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            gwVar.a(str, str2, bundle);
            return;
        }
        o.a(this.f29386b);
        this.f29386b.f().a(str, str2, bundle);
    }

    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        o.a(conditionalUserProperty);
        gw gwVar = this.f29387c;
        if (gwVar != null) {
            gwVar.a(conditionalUserProperty.a());
            return;
        }
        o.a(this.f29386b);
        this.f29386b.f().a(conditionalUserProperty.a());
    }
}
