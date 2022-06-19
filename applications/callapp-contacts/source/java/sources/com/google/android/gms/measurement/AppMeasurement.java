package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.AbstractC14037gw;
import com.google.android.gms.measurement.internal.C13979es;
import com.google.android.gms.measurement.internal.C14003fp;
import com.google.android.gms.measurement.internal.C14043hb;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {

    /* renamed from: a */
    private static volatile AppMeasurement f51178a;

    /* renamed from: b */
    private final C13979es f51179b;

    /* renamed from: c */
    private final AbstractC14037gw f51180c;

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
            C12045o.m19162a(bundle);
            this.mAppId = (String) C14003fp.m11877a(bundle, PangleAdapterConfiguration.APP_ID_EXTRA_KEY, String.class, null);
            this.mOrigin = (String) C14003fp.m11877a(bundle, "origin", String.class, null);
            this.mName = (String) C14003fp.m11877a(bundle, "name", String.class, null);
            this.mValue = C14003fp.m11877a(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) C14003fp.m11877a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) C14003fp.m11877a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) C14003fp.m11877a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) C14003fp.m11877a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) C14003fp.m11877a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) C14003fp.m11877a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) C14003fp.m11877a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) C14003fp.m11877a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) C14003fp.m11877a(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) C14003fp.m11877a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) C14003fp.m11877a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) C14003fp.m11877a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }

        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            C12045o.m19162a(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                Object m11832a = C14043hb.m11832a(obj);
                this.mValue = m11832a;
                if (m11832a == null) {
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

        /* renamed from: a */
        final Bundle m12138a() {
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
                C14003fp.m11878a(bundle, obj);
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

    public AppMeasurement(C13979es c13979es) {
        C12045o.m19162a(c13979es);
        this.f51179b = c13979es;
        this.f51180c = null;
    }

    public AppMeasurement(AbstractC14037gw abstractC14037gw) {
        C12045o.m19162a(abstractC14037gw);
        this.f51180c = abstractC14037gw;
        this.f51179b = null;
    }

    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        AbstractC14037gw abstractC14037gw;
        if (f51178a == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f51178a == null) {
                        try {
                            abstractC14037gw = (AbstractC14037gw) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                        } catch (ClassNotFoundException | Exception e) {
                            abstractC14037gw = null;
                        }
                        if (abstractC14037gw != null) {
                            f51178a = new AppMeasurement(abstractC14037gw);
                        } else {
                            f51178a = new AppMeasurement(C13979es.m11997a(context, new zzz(0L, 0L, true, null, null, null, null, null), (Long) null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f51178a;
    }

    public void beginAdUnitExposure(String str) {
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            abstractC14037gw.mo8615a(str);
            return;
        }
        C12045o.m19162a(this.f51179b);
        this.f51179b.m11981p().m12122a(str, this.f51179b.f51532j.mo19038b());
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            abstractC14037gw.mo8609b(str, str2, bundle);
            return;
        }
        C12045o.m19162a(this.f51179b);
        this.f51179b.m11989f().m11848b(str, str2, bundle);
    }

    public void endAdUnitExposure(String str) {
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            abstractC14037gw.mo8610b(str);
            return;
        }
        C12045o.m19162a(this.f51179b);
        this.f51179b.m11981p().m12118b(str, this.f51179b.f51532j.mo19038b());
    }

    public long generateEventId() {
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            return abstractC14037gw.mo8605e();
        }
        C12045o.m19162a(this.f51179b);
        return this.f51179b.m11988g().m11562e();
    }

    public String getAppInstanceId() {
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            return abstractC14037gw.mo8608c();
        }
        C12045o.m19162a(this.f51179b);
        return this.f51179b.m11989f().m11840p();
    }

    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        ArrayList<Bundle> arrayList;
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            arrayList = abstractC14037gw.mo8614a(str, str2);
        } else {
            C12045o.m19162a(this.f51179b);
            arrayList = this.f51179b.m11989f().m11860a(str, str2);
        }
        ArrayList arrayList2 = new ArrayList(arrayList == null ? 0 : arrayList.size());
        for (Bundle bundle : arrayList) {
            arrayList2.add(new ConditionalUserProperty(bundle));
        }
        return arrayList2;
    }

    public String getCurrentScreenClass() {
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            return abstractC14037gw.mo8611b();
        }
        C12045o.m19162a(this.f51179b);
        return this.f51179b.m11989f().m11837s();
    }

    public String getCurrentScreenName() {
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            return abstractC14037gw.mo8617a();
        }
        C12045o.m19162a(this.f51179b);
        return this.f51179b.m11989f().m11838r();
    }

    public String getGmpAppId() {
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            return abstractC14037gw.mo8606d();
        }
        C12045o.m19162a(this.f51179b);
        return this.f51179b.m11989f().m11836t();
    }

    public int getMaxUserProperties(String str) {
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            return abstractC14037gw.mo8607c(str);
        }
        C12045o.m19162a(this.f51179b);
        this.f51179b.m11989f();
        C12045o.m19160a(str);
        return 25;
    }

    protected Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            return abstractC14037gw.mo8612a(str, str2, z);
        }
        C12045o.m19162a(this.f51179b);
        return this.f51179b.m11989f().m11852a(str, str2, z);
    }

    public void logEventInternal(String str, String str2, Bundle bundle) {
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            abstractC14037gw.mo8613a(str, str2, bundle);
            return;
        }
        C12045o.m19162a(this.f51179b);
        this.f51179b.m11989f().m11856a(str, str2, bundle);
    }

    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        C12045o.m19162a(conditionalUserProperty);
        AbstractC14037gw abstractC14037gw = this.f51180c;
        if (abstractC14037gw != null) {
            abstractC14037gw.mo8616a(conditionalUserProperty.m12138a());
            return;
        }
        C12045o.m19162a(this.f51179b);
        this.f51179b.m11989f().m11872a(conditionalUserProperty.m12138a());
    }
}
