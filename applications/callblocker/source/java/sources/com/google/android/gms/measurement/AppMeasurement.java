package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.measurement.internal.AbstractC4352hf;
import com.google.android.gms.measurement.internal.C4296fd;
import com.google.android.gms.measurement.internal.C4320ga;
import com.google.android.gms.measurement.internal.C4325gf;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {

    /* renamed from: a */
    private static volatile AppMeasurement f18558a;

    /* renamed from: b */
    private final C4296fd f18559b;

    /* renamed from: c */
    private final AbstractC4352hf f18560c;

    /* renamed from: d */
    private final boolean f18561d;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty.class */
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

        ConditionalUserProperty(Bundle bundle) {
            C2662s.m13981a(bundle);
            this.mAppId = (String) C4320ga.m4436a(bundle, "app_id", String.class, null);
            this.mOrigin = (String) C4320ga.m4436a(bundle, "origin", String.class, null);
            this.mName = (String) C4320ga.m4436a(bundle, "name", String.class, null);
            this.mValue = C4320ga.m4436a(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) C4320ga.m4436a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) C4320ga.m4436a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) C4320ga.m4436a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) C4320ga.m4436a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) C4320ga.m4436a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) C4320ga.m4436a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) C4320ga.m4436a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) C4320ga.m4436a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) C4320ga.m4436a(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) C4320ga.m4436a(bundle, "active", Boolean.class, false)).booleanValue();
            this.mCreationTimestamp = ((Long) C4320ga.m4436a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) C4320ga.m4436a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }

        /* renamed from: a */
        final Bundle m4842a() {
            Bundle bundle = new Bundle();
            if (this.mAppId != null) {
                bundle.putString("app_id", this.mAppId);
            }
            if (this.mOrigin != null) {
                bundle.putString("origin", this.mOrigin);
            }
            if (this.mName != null) {
                bundle.putString("name", this.mName);
            }
            if (this.mValue != null) {
                C4320ga.m4437a(bundle, this.mValue);
            }
            if (this.mTriggerEventName != null) {
                bundle.putString("trigger_event_name", this.mTriggerEventName);
            }
            bundle.putLong("trigger_timeout", this.mTriggerTimeout);
            if (this.mTimedOutEventName != null) {
                bundle.putString("timed_out_event_name", this.mTimedOutEventName);
            }
            if (this.mTimedOutEventParams != null) {
                bundle.putBundle("timed_out_event_params", this.mTimedOutEventParams);
            }
            if (this.mTriggeredEventName != null) {
                bundle.putString("triggered_event_name", this.mTriggeredEventName);
            }
            if (this.mTriggeredEventParams != null) {
                bundle.putBundle("triggered_event_params", this.mTriggeredEventParams);
            }
            bundle.putLong("time_to_live", this.mTimeToLive);
            if (this.mExpiredEventName != null) {
                bundle.putString("expired_event_name", this.mExpiredEventName);
            }
            if (this.mExpiredEventParams != null) {
                bundle.putBundle("expired_event_params", this.mExpiredEventParams);
            }
            bundle.putLong("creation_timestamp", this.mCreationTimestamp);
            bundle.putBoolean("active", this.mActive);
            bundle.putLong("triggered_timestamp", this.mTriggeredTimestamp);
            return bundle;
        }
    }

    /* renamed from: com.google.android.gms.measurement.AppMeasurement$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$a.class */
    public static final class C4153a extends C4325gf {
    }

    private AppMeasurement(C4296fd c4296fd) {
        C2662s.m13981a(c4296fd);
        this.f18559b = c4296fd;
        this.f18560c = null;
        this.f18561d = false;
    }

    private AppMeasurement(AbstractC4352hf abstractC4352hf) {
        C2662s.m13981a(abstractC4352hf);
        this.f18560c = abstractC4352hf;
        this.f18559b = null;
        this.f18561d = true;
    }

    /* renamed from: a */
    public static AppMeasurement m4846a(Context context, Bundle bundle) {
        if (f18558a == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f18558a == null) {
                        AbstractC4352hf m4843b = m4843b(context, bundle);
                        if (m4843b != null) {
                            f18558a = new AppMeasurement(m4843b);
                        } else {
                            f18558a = new AppMeasurement(C4296fd.m4564a(context, null, null, bundle));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18558a;
    }

    /* renamed from: a */
    private static AppMeasurement m4845a(Context context, String str, String str2) {
        if (f18558a == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f18558a == null) {
                        AbstractC4352hf m4843b = m4843b(context, null);
                        if (m4843b != null) {
                            f18558a = new AppMeasurement(m4843b);
                        } else {
                            f18558a = new AppMeasurement(C4296fd.m4564a(context, null, null, null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18558a;
    }

    /* renamed from: b */
    private static AbstractC4352hf m4843b(Context context, Bundle bundle) {
        AbstractC4352hf abstractC4352hf;
        try {
            try {
                abstractC4352hf = (AbstractC4352hf) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, bundle);
            } catch (Exception e) {
                abstractC4352hf = null;
            }
        } catch (ClassNotFoundException e2) {
            abstractC4352hf = null;
        }
        return abstractC4352hf;
    }

    @Keep
    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        return m4845a(context, null, null);
    }

    /* renamed from: a */
    public final void m4844a(boolean z) {
        if (this.f18561d) {
            this.f18560c.mo2175a(z);
        } else {
            this.f18559b.m4548h().m4384b(z);
        }
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        if (this.f18561d) {
            this.f18560c.mo2179a(str);
        } else {
            this.f18559b.m4535z().m4813a(str, this.f18559b.mo4035q().mo13861b());
        }
    }

    @Keep
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (this.f18561d) {
            this.f18560c.mo2172b(str, str2, bundle);
        } else {
            this.f18559b.m4548h().m4381c(str, str2, bundle);
        }
    }

    @Keep
    protected void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        if (this.f18561d) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f18559b.m4548h().m4398a(str, str2, str3, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        if (this.f18561d) {
            this.f18560c.mo2173b(str);
        } else {
            this.f18559b.m4535z().m4809b(str, this.f18559b.mo4035q().mo13861b());
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Keep
    public long generateEventId() {
        return this.f18561d ? this.f18560c.mo2168e() : this.f18559b.m4547i().m4093c();
    }

    @Keep
    public String getAppInstanceId() {
        return this.f18561d ? this.f18560c.mo2171c() : this.f18559b.m4548h().m4424H();
    }

    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        ArrayList<Bundle> mo2178a = this.f18561d ? this.f18560c.mo2178a(str, str2) : this.f18559b.m4548h().m4409a(str, str2);
        ArrayList arrayList = new ArrayList(mo2178a == null ? 0 : mo2178a.size());
        for (Bundle bundle : mo2178a) {
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    @Keep
    protected List<ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        if (this.f18561d) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        ArrayList<Bundle> m4399a = this.f18559b.m4548h().m4399a(str, str2, str3);
        ArrayList arrayList = new ArrayList(m4399a == null ? 0 : m4399a.size());
        ArrayList<Bundle> arrayList2 = m4399a;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            i++;
            arrayList.add(new ConditionalUserProperty(arrayList2.get(i)));
        }
        return arrayList;
    }

    @Keep
    public String getCurrentScreenClass() {
        return this.f18561d ? this.f18560c.mo2174b() : this.f18559b.m4548h().m4421K();
    }

    @Keep
    public String getCurrentScreenName() {
        return this.f18561d ? this.f18560c.mo2181a() : this.f18559b.m4548h().m4422J();
    }

    @Keep
    public String getGmpAppId() {
        return this.f18561d ? this.f18560c.mo2169d() : this.f18559b.m4548h().m4420L();
    }

    @Keep
    public int getMaxUserProperties(String str) {
        int i;
        if (this.f18561d) {
            i = this.f18560c.mo2170c(str);
        } else {
            this.f18559b.m4548h();
            C2662s.m13979a(str);
            i = 25;
        }
        return i;
    }

    @Keep
    protected Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.f18561d ? this.f18560c.mo2176a(str, str2, z) : this.f18559b.m4548h().m4396a(str, str2, z);
    }

    @Keep
    protected Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        if (this.f18561d) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        return this.f18559b.m4548h().m4397a(str, str2, str3, z);
    }

    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (this.f18561d) {
            this.f18560c.mo2177a(str, str2, bundle);
        } else {
            this.f18559b.m4548h().m4405a(str, str2, bundle);
        }
    }

    @Keep
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        C2662s.m13981a(conditionalUserProperty);
        if (this.f18561d) {
            this.f18560c.mo2180a(conditionalUserProperty.m4842a());
        } else {
            this.f18559b.m4548h().m4417a(conditionalUserProperty.m4842a());
        }
    }

    @Keep
    protected void setConditionalUserPropertyAs(ConditionalUserProperty conditionalUserProperty) {
        C2662s.m13981a(conditionalUserProperty);
        if (this.f18561d) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f18559b.m4548h().m4393b(conditionalUserProperty.m4842a());
    }
}
