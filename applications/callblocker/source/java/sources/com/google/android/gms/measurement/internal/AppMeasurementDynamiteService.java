package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.p013b.C0373a;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.measurement.AbstractBinderC4130mh;
import com.google.android.gms.internal.measurement.AbstractC4132mj;
import com.google.android.gms.internal.measurement.AbstractC4136mn;
import com.google.android.gms.internal.measurement.AbstractC4137mo;
import com.google.android.gms.internal.measurement.C3811b;
import com.google.android.gms.internal.measurement.C4072kd;
import java.util.Map;
@DynamiteApi
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService.class */
public class AppMeasurementDynamiteService extends AbstractBinderC4130mh {

    /* renamed from: a */
    C4296fd f18566a = null;

    /* renamed from: b */
    private Map<Integer, AbstractC4328gi> f18567b = new C0373a();

    /* renamed from: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService$a.class */
    final class C4155a implements AbstractC4324ge {

        /* renamed from: a */
        private AbstractC4136mn f18568a;

        C4155a(AbstractC4136mn abstractC4136mn) {
            AppMeasurementDynamiteService.this = r4;
            this.f18568a = abstractC4136mn;
        }

        @Override // com.google.android.gms.measurement.internal.AbstractC4324ge
        /* renamed from: a */
        public final void mo4433a(String str, String str2, Bundle bundle, long j) {
            try {
                this.f18568a.mo4949a(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.f18566a.mo4030v().m4662e().m4653a("Event interceptor threw exception", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b.class */
    final class C4156b implements AbstractC4328gi {

        /* renamed from: a */
        private AbstractC4136mn f18570a;

        C4156b(AbstractC4136mn abstractC4136mn) {
            AppMeasurementDynamiteService.this = r4;
            this.f18570a = abstractC4136mn;
        }

        @Override // com.google.android.gms.measurement.internal.AbstractC4328gi
        /* renamed from: a */
        public final void mo4431a(String str, String str2, Bundle bundle, long j) {
            try {
                this.f18570a.mo4949a(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.f18566a.mo4030v().m4662e().m4653a("Event listener threw exception", e);
            }
        }
    }

    /* renamed from: a */
    private final void m4819a() {
        if (this.f18566a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    /* renamed from: a */
    private final void m4818a(AbstractC4132mj abstractC4132mj, String str) {
        this.f18566a.m4547i().m4129a(abstractC4132mj, str);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void beginAdUnitExposure(String str, long j) {
        m4819a();
        this.f18566a.m4535z().m4813a(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        m4819a();
        this.f18566a.m4548h().m4381c(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void endAdUnitExposure(String str, long j) {
        m4819a();
        this.f18566a.m4535z().m4809b(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void generateEventId(AbstractC4132mj abstractC4132mj) {
        m4819a();
        this.f18566a.m4547i().m4131a(abstractC4132mj, this.f18566a.m4547i().m4093c());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void getAppInstanceId(AbstractC4132mj abstractC4132mj) {
        m4819a();
        this.f18566a.mo4031u().m4587a(new RunnableC4353hg(this, abstractC4132mj));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void getCachedAppInstanceId(AbstractC4132mj abstractC4132mj) {
        m4819a();
        m4818a(abstractC4132mj, this.f18566a.m4548h().m4424H());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void getConditionalUserProperties(String str, String str2, AbstractC4132mj abstractC4132mj) {
        m4819a();
        this.f18566a.mo4031u().m4587a(new RunnableC4380ig(this, abstractC4132mj, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void getCurrentScreenClass(AbstractC4132mj abstractC4132mj) {
        m4819a();
        m4818a(abstractC4132mj, this.f18566a.m4548h().m4421K());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void getCurrentScreenName(AbstractC4132mj abstractC4132mj) {
        m4819a();
        m4818a(abstractC4132mj, this.f18566a.m4548h().m4422J());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void getGmpAppId(AbstractC4132mj abstractC4132mj) {
        m4819a();
        m4818a(abstractC4132mj, this.f18566a.m4548h().m4420L());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void getMaxUserProperties(String str, AbstractC4132mj abstractC4132mj) {
        m4819a();
        this.f18566a.m4548h();
        C2662s.m13979a(str);
        this.f18566a.m4547i().m4132a(abstractC4132mj, 25);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void getTestFlag(AbstractC4132mj abstractC4132mj, int i) {
        m4819a();
        switch (i) {
            case 0:
                this.f18566a.m4547i().m4129a(abstractC4132mj, this.f18566a.m4548h().m4428D());
                return;
            case 1:
                this.f18566a.m4547i().m4131a(abstractC4132mj, this.f18566a.m4548h().m4427E().longValue());
                return;
            case 2:
                C4424jw m4547i = this.f18566a.m4547i();
                double doubleValue = this.f18566a.m4548h().m4425G().doubleValue();
                Bundle bundle = new Bundle();
                bundle.putDouble("r", doubleValue);
                try {
                    abstractC4132mj.mo4950a(bundle);
                    return;
                } catch (RemoteException e) {
                    m4547i.f18970z.mo4030v().m4662e().m4653a("Error returning double value to wrapper", e);
                    return;
                }
            case 3:
                this.f18566a.m4547i().m4132a(abstractC4132mj, this.f18566a.m4548h().m4426F().intValue());
                return;
            case 4:
                this.f18566a.m4547i().m4127a(abstractC4132mj, this.f18566a.m4548h().m4429C().booleanValue());
                return;
            default:
                return;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void getUserProperties(String str, String str2, boolean z, AbstractC4132mj abstractC4132mj) {
        m4819a();
        this.f18566a.mo4031u().m4587a(new RunnableC4408jh(this, abstractC4132mj, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void initForTests(Map map) {
        m4819a();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void initialize(AbstractC2731a abstractC2731a, C3811b c3811b, long j) {
        Context context = (Context) BinderC2734b.m13795a(abstractC2731a);
        if (this.f18566a == null) {
            this.f18566a = C4296fd.m4565a(context, c3811b, Long.valueOf(j));
        } else {
            this.f18566a.mo4030v().m4662e().m4654a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void isDataCollectionEnabled(AbstractC4132mj abstractC4132mj) {
        m4819a();
        this.f18566a.mo4031u().m4587a(new RunnableC4429ka(this, abstractC4132mj));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        m4819a();
        this.f18566a.m4548h().m4403a(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void logEventAndBundle(String str, String str2, Bundle bundle, AbstractC4132mj abstractC4132mj, long j) {
        m4819a();
        C2662s.m13979a(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.f18566a.mo4031u().m4587a(new RunnableC4327gh(this, abstractC4132mj, new C4450r(str2, new C4445m(bundle), "app", j), str));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void logHealthData(int i, String str, AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2, AbstractC2731a abstractC2731a3) {
        m4819a();
        this.f18566a.mo4030v().m4673a(i, true, false, str, abstractC2731a == null ? null : BinderC2734b.m13795a(abstractC2731a), abstractC2731a2 == null ? null : BinderC2734b.m13795a(abstractC2731a2), abstractC2731a3 == null ? null : BinderC2734b.m13795a(abstractC2731a3));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void onActivityCreated(AbstractC2731a abstractC2731a, Bundle bundle, long j) {
        m4819a();
        C4350hd c4350hd = this.f18566a.m4548h().f18995a;
        if (c4350hd != null) {
            this.f18566a.m4548h().m4430B();
            c4350hd.onActivityCreated((Activity) BinderC2734b.m13795a(abstractC2731a), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void onActivityDestroyed(AbstractC2731a abstractC2731a, long j) {
        m4819a();
        C4350hd c4350hd = this.f18566a.m4548h().f18995a;
        if (c4350hd != null) {
            this.f18566a.m4548h().m4430B();
            c4350hd.onActivityDestroyed((Activity) BinderC2734b.m13795a(abstractC2731a));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void onActivityPaused(AbstractC2731a abstractC2731a, long j) {
        m4819a();
        C4350hd c4350hd = this.f18566a.m4548h().f18995a;
        if (c4350hd != null) {
            this.f18566a.m4548h().m4430B();
            c4350hd.onActivityPaused((Activity) BinderC2734b.m13795a(abstractC2731a));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void onActivityResumed(AbstractC2731a abstractC2731a, long j) {
        m4819a();
        C4350hd c4350hd = this.f18566a.m4548h().f18995a;
        if (c4350hd != null) {
            this.f18566a.m4548h().m4430B();
            c4350hd.onActivityResumed((Activity) BinderC2734b.m13795a(abstractC2731a));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void onActivitySaveInstanceState(AbstractC2731a abstractC2731a, AbstractC4132mj abstractC4132mj, long j) {
        m4819a();
        C4350hd c4350hd = this.f18566a.m4548h().f18995a;
        Bundle bundle = new Bundle();
        if (c4350hd != null) {
            this.f18566a.m4548h().m4430B();
            c4350hd.onActivitySaveInstanceState((Activity) BinderC2734b.m13795a(abstractC2731a), bundle);
        }
        try {
            abstractC4132mj.mo4950a(bundle);
        } catch (RemoteException e) {
            this.f18566a.mo4030v().m4662e().m4653a("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void onActivityStarted(AbstractC2731a abstractC2731a, long j) {
        m4819a();
        C4350hd c4350hd = this.f18566a.m4548h().f18995a;
        if (c4350hd != null) {
            this.f18566a.m4548h().m4430B();
            c4350hd.onActivityStarted((Activity) BinderC2734b.m13795a(abstractC2731a));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void onActivityStopped(AbstractC2731a abstractC2731a, long j) {
        m4819a();
        C4350hd c4350hd = this.f18566a.m4548h().f18995a;
        if (c4350hd != null) {
            this.f18566a.m4548h().m4430B();
            c4350hd.onActivityStopped((Activity) BinderC2734b.m13795a(abstractC2731a));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void performAction(Bundle bundle, AbstractC4132mj abstractC4132mj, long j) {
        m4819a();
        abstractC4132mj.mo4950a(null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void registerOnMeasurementEventListener(AbstractC4136mn abstractC4136mn) {
        m4819a();
        AbstractC4328gi abstractC4328gi = this.f18567b.get(Integer.valueOf(abstractC4136mn.mo4948r_()));
        C4156b c4156b = abstractC4328gi;
        if (abstractC4328gi == null) {
            c4156b = new C4156b(abstractC4136mn);
            this.f18567b.put(Integer.valueOf(abstractC4136mn.mo4948r_()), c4156b);
        }
        this.f18566a.m4548h().m4414a(c4156b);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void resetAnalyticsData(long j) {
        m4819a();
        this.f18566a.m4548h().m4383c(j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void setConditionalUserProperty(Bundle bundle, long j) {
        m4819a();
        if (bundle == null) {
            this.f18566a.mo4030v().m4655x_().m4654a("Conditional user property must not be null");
        } else {
            this.f18566a.m4548h().m4416a(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void setCurrentScreen(AbstractC2731a abstractC2731a, String str, String str2, long j) {
        m4819a();
        this.f18566a.m4539s().m4362a((Activity) BinderC2734b.m13795a(abstractC2731a), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void setDataCollectionEnabled(boolean z) {
        m4819a();
        this.f18566a.m4548h().m4384b(z);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void setDefaultEventParameters(Bundle bundle) {
        m4819a();
        C4330gk m4548h = this.f18566a.m4548h();
        m4548h.mo4031u().m4587a(new Runnable(m4548h, bundle == null ? null : new Bundle(bundle)) { // from class: com.google.android.gms.measurement.internal.gj

            /* renamed from: a */
            private final C4330gk f18993a;

            /* renamed from: b */
            private final Bundle f18994b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f18993a = m4548h;
                this.f18994b = bundle2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C4330gk c4330gk = this.f18993a;
                Bundle bundle3 = this.f18994b;
                if (!C4072kd.m5020b() || !c4330gk.mo4027x().m4804a(C4452t.f19431aN)) {
                    return;
                }
                if (bundle3 == null) {
                    c4330gk.mo4029w().f18783y.m4621a(new Bundle());
                    return;
                }
                Bundle m4622a = c4330gk.mo4029w().f18783y.m4622a();
                for (String str : bundle3.keySet()) {
                    Object obj = bundle3.get(str);
                    if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                        c4330gk.mo4032t();
                        if (C4424jw.m4123a(obj)) {
                            c4330gk.mo4032t().m4145a(27, (String) null, (String) null, 0);
                        }
                        c4330gk.mo4030v().m4660g().m4652a("Invalid default event parameter type. Name, value", str, obj);
                    } else if (C4424jw.m4085e(str)) {
                        c4330gk.mo4030v().m4660g().m4653a("Invalid default event parameter name. Name", str);
                    } else if (obj == null) {
                        m4622a.remove(str);
                    } else if (c4330gk.mo4032t().m4115a("param", str, 100, obj)) {
                        c4330gk.mo4032t().m4134a(m4622a, str, obj);
                    }
                }
                c4330gk.mo4032t();
                if (C4424jw.m4137a(m4622a, c4330gk.mo4027x().m4806a())) {
                    c4330gk.mo4032t().m4145a(26, (String) null, (String) null, 0);
                    c4330gk.mo4030v().m4660g().m4654a("Too many default event parameters set. Discarding beyond event parameter limit");
                }
                c4330gk.mo4029w().f18783y.m4621a(m4622a);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void setEventInterceptor(AbstractC4136mn abstractC4136mn) {
        m4819a();
        C4330gk m4548h = this.f18566a.m4548h();
        C4155a c4155a = new C4155a(abstractC4136mn);
        m4548h.mo4039m();
        m4548h.m4711i();
        m4548h.mo4031u().m4587a(new RunnableC4338gs(m4548h, c4155a));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void setInstanceIdProvider(AbstractC4137mo abstractC4137mo) {
        m4819a();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void setMeasurementEnabled(boolean z, long j) {
        m4819a();
        this.f18566a.m4548h().m4395a(z);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void setMinimumSessionDuration(long j) {
        m4819a();
        this.f18566a.m4548h().m4418a(j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void setSessionTimeoutDuration(long j) {
        m4819a();
        this.f18566a.m4548h().m4394b(j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void setUserId(String str, long j) {
        m4819a();
        this.f18566a.m4548h().m4400a(null, "_id", str, true, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void setUserProperty(String str, String str2, AbstractC2731a abstractC2731a, boolean z, long j) {
        m4819a();
        this.f18566a.m4548h().m4400a(str, str2, BinderC2734b.m13795a(abstractC2731a), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4131mi
    public void unregisterOnMeasurementEventListener(AbstractC4136mn abstractC4136mn) {
        m4819a();
        AbstractC4328gi remove = this.f18567b.remove(Integer.valueOf(abstractC4136mn.mo4948r_()));
        C4156b c4156b = remove;
        if (remove == null) {
            c4156b = new C4156b(abstractC4136mn);
        }
        this.f18566a.m4548h().m4391b(c4156b);
    }
}
