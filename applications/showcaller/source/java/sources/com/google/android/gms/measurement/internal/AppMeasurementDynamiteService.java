package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.internal.measurement.AbstractBinderC7385gc;
import com.google.android.gms.internal.measurement.AbstractC7441kc;
import com.google.android.gms.internal.measurement.AbstractC7483nc;
import com.google.android.gms.internal.measurement.AbstractC7511pc;
import com.google.android.gms.internal.measurement.C7382g9;
import com.google.android.gms.internal.measurement.C7508p9;
import com.google.android.gms.internal.measurement.zzz;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import p020b.p036e.C1489a;
@DynamiteApi
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService.class */
public class AppMeasurementDynamiteService extends AbstractBinderC7385gc {

    /* renamed from: d */
    C7858s4 f34963d = null;

    /* renamed from: e */
    private final Map<Integer, AbstractC7881u5> f34964e = new C1489a();

    /* renamed from: D0 */
    private final void m6601D0(AbstractC7441kc abstractC7441kc, String str) {
        m6600b();
        this.f34963d.m6043G().m5984R(abstractC7441kc, str);
    }

    @EnsuresNonNull({"scion"})
    /* renamed from: b */
    private final void m6600b() {
        if (this.f34963d != null) {
            return;
        }
        throw new IllegalStateException("Attempting to perform action before initialize.");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void beginAdUnitExposure(@RecentlyNonNull String str, long j) {
        m6600b();
        this.f34963d.m6026e().m6599g(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void clearConditionalUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        m6600b();
        this.f34963d.m6044F().m5939A(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void clearMeasurementEnabled(long j) {
        m6600b();
        this.f34963d.m6044F().m5921T(null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void endAdUnitExposure(@RecentlyNonNull String str, long j) {
        m6600b();
        this.f34963d.m6026e().m6598h(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void generateEventId(AbstractC7441kc abstractC7441kc) {
        m6600b();
        long m5967h0 = this.f34963d.m6043G().m5967h0();
        m6600b();
        this.f34963d.m6043G().m5983S(abstractC7441kc, m5967h0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void getAppInstanceId(AbstractC7441kc abstractC7441kc) {
        m6600b();
        this.f34963d.mo6029b().m6109p(new RunnableC7687d6(this, abstractC7441kc));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void getCachedAppInstanceId(AbstractC7441kc abstractC7441kc) {
        m6600b();
        m6601D0(abstractC7441kc, this.f34963d.m6044F().m5908o());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void getConditionalUserProperties(String str, String str2, AbstractC7441kc abstractC7441kc) {
        m6600b();
        this.f34963d.mo6029b().m6109p(new RunnableC7918x9(this, abstractC7441kc, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void getCurrentScreenClass(AbstractC7441kc abstractC7441kc) {
        m6600b();
        m6601D0(abstractC7441kc, this.f34963d.m6044F().m5935F());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void getCurrentScreenName(AbstractC7441kc abstractC7441kc) {
        m6600b();
        m6601D0(abstractC7441kc, this.f34963d.m6044F().m5936E());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void getGmpAppId(AbstractC7441kc abstractC7441kc) {
        m6600b();
        m6601D0(abstractC7441kc, this.f34963d.m6044F().m5934G());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void getMaxUserProperties(String str, AbstractC7441kc abstractC7441kc) {
        m6600b();
        this.f34963d.m6044F().m5900w(str);
        m6600b();
        this.f34963d.m6043G().m5982T(abstractC7441kc, 25);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void getTestFlag(AbstractC7441kc abstractC7441kc, int i) {
        m6600b();
        if (i == 0) {
            this.f34963d.m6043G().m5984R(abstractC7441kc, this.f34963d.m6044F().m5925P());
        } else if (i == 1) {
            this.f34963d.m6043G().m5983S(abstractC7441kc, this.f34963d.m6044F().m5924Q().longValue());
        } else if (i != 2) {
            if (i == 3) {
                this.f34963d.m6043G().m5982T(abstractC7441kc, this.f34963d.m6044F().m5923R().intValue());
            } else if (i != 4) {
            } else {
                this.f34963d.m6043G().m5980V(abstractC7441kc, this.f34963d.m6044F().m5926O().booleanValue());
            }
        } else {
            C7885u9 m6043G = this.f34963d.m6043G();
            double doubleValue = this.f34963d.m6044F().m5922S().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                abstractC7441kc.mo7197C0(bundle);
            } catch (RemoteException e) {
                m6043G.f35460a.mo6047C().m6192p().m6215b("Error returning double value to wrapper", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void getUserProperties(String str, String str2, boolean z, AbstractC7441kc abstractC7441kc) {
        m6600b();
        this.f34963d.mo6029b().m6109p(new RunnableC7701e8(this, abstractC7441kc, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void initForTests(@RecentlyNonNull Map map) {
        m6600b();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void initialize(AbstractC6253a abstractC6253a, zzz zzzVar, long j) {
        C7858s4 c7858s4 = this.f34963d;
        if (c7858s4 == null) {
            this.f34963d = C7858s4.m6025f((Context) C6155o.m17018j((Context) BinderC6255b.m16745J0(abstractC6253a)), zzzVar, Long.valueOf(j));
        } else {
            c7858s4.mo6047C().m6192p().m6216a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void isDataCollectionEnabled(AbstractC7441kc abstractC7441kc) {
        m6600b();
        this.f34963d.mo6029b().m6109p(new RunnableC7929y9(this, abstractC7441kc));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void logEvent(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle, boolean z, boolean z2, long j) {
        m6600b();
        this.f34963d.m6044F().m5914a0(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void logEventAndBundle(String str, String str2, Bundle bundle, AbstractC7441kc abstractC7441kc, long j) {
        m6600b();
        C6155o.m17022f(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.f34963d.mo6029b().m6109p(new RunnableC7700e7(this, abstractC7441kc, new zzas(str2, new zzaq(bundle), "app", j), str));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void logHealthData(int i, @RecentlyNonNull String str, @RecentlyNonNull AbstractC6253a abstractC6253a, @RecentlyNonNull AbstractC6253a abstractC6253a2, @RecentlyNonNull AbstractC6253a abstractC6253a3) {
        m6600b();
        this.f34963d.mo6047C().m6185w(i, true, false, str, abstractC6253a == null ? null : BinderC6255b.m16745J0(abstractC6253a), abstractC6253a2 == null ? null : BinderC6255b.m16745J0(abstractC6253a2), abstractC6253a3 == null ? null : BinderC6255b.m16745J0(abstractC6253a3));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void onActivityCreated(@RecentlyNonNull AbstractC6253a abstractC6253a, @RecentlyNonNull Bundle bundle, long j) {
        m6600b();
        C7882u6 c7882u6 = this.f34963d.m6044F().f35747c;
        if (c7882u6 != null) {
            this.f34963d.m6044F().m5927N();
            c7882u6.onActivityCreated((Activity) BinderC6255b.m16745J0(abstractC6253a), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void onActivityDestroyed(@RecentlyNonNull AbstractC6253a abstractC6253a, long j) {
        m6600b();
        C7882u6 c7882u6 = this.f34963d.m6044F().f35747c;
        if (c7882u6 != null) {
            this.f34963d.m6044F().m5927N();
            c7882u6.onActivityDestroyed((Activity) BinderC6255b.m16745J0(abstractC6253a));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void onActivityPaused(@RecentlyNonNull AbstractC6253a abstractC6253a, long j) {
        m6600b();
        C7882u6 c7882u6 = this.f34963d.m6044F().f35747c;
        if (c7882u6 != null) {
            this.f34963d.m6044F().m5927N();
            c7882u6.onActivityPaused((Activity) BinderC6255b.m16745J0(abstractC6253a));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void onActivityResumed(@RecentlyNonNull AbstractC6253a abstractC6253a, long j) {
        m6600b();
        C7882u6 c7882u6 = this.f34963d.m6044F().f35747c;
        if (c7882u6 != null) {
            this.f34963d.m6044F().m5927N();
            c7882u6.onActivityResumed((Activity) BinderC6255b.m16745J0(abstractC6253a));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void onActivitySaveInstanceState(AbstractC6253a abstractC6253a, AbstractC7441kc abstractC7441kc, long j) {
        m6600b();
        C7882u6 c7882u6 = this.f34963d.m6044F().f35747c;
        Bundle bundle = new Bundle();
        if (c7882u6 != null) {
            this.f34963d.m6044F().m5927N();
            c7882u6.onActivitySaveInstanceState((Activity) BinderC6255b.m16745J0(abstractC6253a), bundle);
        }
        try {
            abstractC7441kc.mo7197C0(bundle);
        } catch (RemoteException e) {
            this.f34963d.mo6047C().m6192p().m6215b("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void onActivityStarted(@RecentlyNonNull AbstractC6253a abstractC6253a, long j) {
        m6600b();
        if (this.f34963d.m6044F().f35747c != null) {
            this.f34963d.m6044F().m5927N();
            Activity activity = (Activity) BinderC6255b.m16745J0(abstractC6253a);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void onActivityStopped(@RecentlyNonNull AbstractC6253a abstractC6253a, long j) {
        m6600b();
        if (this.f34963d.m6044F().f35747c != null) {
            this.f34963d.m6044F().m5927N();
            Activity activity = (Activity) BinderC6255b.m16745J0(abstractC6253a);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void performAction(Bundle bundle, AbstractC7441kc abstractC7441kc, long j) {
        m6600b();
        abstractC7441kc.mo7197C0(null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void registerOnMeasurementEventListener(AbstractC7483nc abstractC7483nc) {
        AbstractC7881u5 abstractC7881u5;
        m6600b();
        synchronized (this.f34964e) {
            AbstractC7881u5 abstractC7881u52 = this.f34964e.get(Integer.valueOf(abstractC7483nc.mo7064a()));
            abstractC7881u5 = abstractC7881u52;
            if (abstractC7881u52 == null) {
                abstractC7881u5 = new C7655aa(this, abstractC7483nc);
                this.f34964e.put(Integer.valueOf(abstractC7483nc.mo7064a()), abstractC7881u5);
            }
        }
        this.f34963d.m6044F().m5902u(abstractC7881u5);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void resetAnalyticsData(long j) {
        m6600b();
        this.f34963d.m6044F().m5906q(j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setConditionalUserProperty(@RecentlyNonNull Bundle bundle, long j) {
        m6600b();
        if (bundle == null) {
            this.f34963d.mo6047C().m6195m().m6216a("Conditional user property must not be null");
        } else {
            this.f34963d.m6044F().m5898z(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setConsent(@RecentlyNonNull Bundle bundle, long j) {
        m6600b();
        C7893v6 m6044F = this.f34963d.m6044F();
        C7382g9.m7385a();
        if (m6044F.f35460a.m6006y().m6471u(null, C7672c3.f35107w0)) {
            C7508p9.m7024a();
            if (!m6044F.f35460a.m6006y().m6471u(null, C7672c3.f35043H0) || TextUtils.isEmpty(m6044F.f35460a.m6027d().m6429o())) {
                m6044F.m5920U(bundle, 0, j);
            } else {
                m6044F.f35460a.mo6047C().m6190r().m6216a("Using developer consent only; google app id found");
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setConsentThirdParty(@RecentlyNonNull Bundle bundle, long j) {
        m6600b();
        C7893v6 m6044F = this.f34963d.m6044F();
        C7382g9.m7385a();
        if (m6044F.f35460a.m6006y().m6471u(null, C7672c3.f35109x0)) {
            m6044F.m5920U(bundle, -20, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setCurrentScreen(@RecentlyNonNull AbstractC6253a abstractC6253a, @RecentlyNonNull String str, @RecentlyNonNull String str2, long j) {
        m6600b();
        this.f34963d.m6033Q().m6297t((Activity) BinderC6255b.m16745J0(abstractC6253a), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setDataCollectionEnabled(boolean z) {
        m6600b();
        C7893v6 m6044F = this.f34963d.m6044F();
        m6044F.m6572h();
        m6044F.f35460a.mo6029b().m6109p(new RunnableC7925y5(m6044F, z));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setDefaultEventParameters(@RecentlyNonNull Bundle bundle) {
        m6600b();
        C7893v6 m6044F = this.f34963d.m6044F();
        m6044F.f35460a.mo6029b().m6109p(new Runnable(m6044F, bundle == null ? null : new Bundle(bundle)) { // from class: com.google.android.gms.measurement.internal.w5

            /* renamed from: d */
            private final C7893v6 f35777d;

            /* renamed from: e */
            private final Bundle f35778e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f35777d = m6044F;
                this.f35778e = bundle2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f35777d.m5933H(this.f35778e);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setEventInterceptor(AbstractC7483nc abstractC7483nc) {
        m6600b();
        C7940z9 c7940z9 = new C7940z9(this, abstractC7483nc);
        if (this.f34963d.mo6029b().m6112m()) {
            this.f34963d.m6044F().m5903t(c7940z9);
        } else {
            this.f34963d.mo6029b().m6109p(new RunnableC7714f9(this, c7940z9));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setInstanceIdProvider(AbstractC7511pc abstractC7511pc) {
        m6600b();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setMeasurementEnabled(boolean z, long j) {
        m6600b();
        this.f34963d.m6044F().m5921T(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setMinimumSessionDuration(long j) {
        m6600b();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setSessionTimeoutDuration(long j) {
        m6600b();
        C7893v6 m6044F = this.f34963d.m6044F();
        m6044F.f35460a.mo6029b().m6109p(new RunnableC7651a6(m6044F, j));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setUserId(@RecentlyNonNull String str, long j) {
        m6600b();
        if (!this.f34963d.m6006y().m6471u(null, C7672c3.f35039F0) || str == null || str.length() != 0) {
            this.f34963d.m6044F().m5911d0(null, "_id", str, true, j);
        } else {
            this.f34963d.mo6047C().m6192p().m6216a("User ID must be non-empty");
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void setUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull AbstractC6253a abstractC6253a, boolean z, long j) {
        m6600b();
        this.f34963d.m6044F().m5911d0(str, str2, BinderC6255b.m16745J0(abstractC6253a), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7399hc
    public void unregisterOnMeasurementEventListener(AbstractC7483nc abstractC7483nc) {
        AbstractC7881u5 remove;
        m6600b();
        synchronized (this.f34964e) {
            remove = this.f34964e.remove(Integer.valueOf(abstractC7483nc.mo7064a()));
        }
        C7655aa c7655aa = remove;
        if (remove == null) {
            c7655aa = new C7655aa(this, abstractC7483nc);
        }
        this.f34963d.m6044F().m5901v(c7655aa);
    }
}
