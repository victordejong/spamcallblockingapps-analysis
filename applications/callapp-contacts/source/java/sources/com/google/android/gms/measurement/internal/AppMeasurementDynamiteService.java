package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.p023b.C0428a;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.measurement.AbstractBinderC13701my;
import com.google.android.gms.internal.measurement.AbstractC13706nc;
import com.google.android.gms.internal.measurement.AbstractC13709nf;
import com.google.android.gms.internal.measurement.AbstractC13711nh;
import com.google.android.gms.internal.measurement.C13620jy;
import com.google.android.gms.internal.measurement.C13630kh;
import com.google.android.gms.internal.measurement.zzz;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService.class */
public class AppMeasurementDynamiteService extends AbstractBinderC13701my {

    /* renamed from: a */
    C13979es f51185a = null;

    /* renamed from: b */
    private final Map<Integer, AbstractC14008fu> f51186b = new C0428a();

    @EnsuresNonNull({"scion"})
    /* renamed from: a */
    private final void m12127a() {
        if (this.f51185a != null) {
            return;
        }
        throw new IllegalStateException("Attempting to perform action before initialize.");
    }

    /* renamed from: a */
    private final void m12126a(AbstractC13706nc abstractC13706nc, String str) {
        m12127a();
        this.f51185a.m11988g().m11596a(abstractC13706nc, str);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void beginAdUnitExposure(String str, long j) throws RemoteException {
        m12127a();
        this.f51185a.m11981p().m12122a(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        m12127a();
        this.f51185a.m11989f().m11848b(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void clearMeasurementEnabled(long j) throws RemoteException {
        m12127a();
        this.f51185a.m11989f().m11864a((Boolean) null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void endAdUnitExposure(String str, long j) throws RemoteException {
        m12127a();
        this.f51185a.m11981p().m12118b(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void generateEventId(AbstractC13706nc abstractC13706nc) throws RemoteException {
        m12127a();
        long m11562e = this.f51185a.m11988g().m11562e();
        m12127a();
        this.f51185a.m11988g().m11598a(abstractC13706nc, m11562e);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void getAppInstanceId(AbstractC13706nc abstractC13706nc) throws RemoteException {
        m12127a();
        this.f51185a.mo11658d().m12011a(new RunnableC14018gd(this, abstractC13706nc));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void getCachedAppInstanceId(AbstractC13706nc abstractC13706nc) throws RemoteException {
        m12127a();
        m12126a(abstractC13706nc, this.f51185a.m11989f().m11840p());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void getConditionalUserProperties(String str, String str2, AbstractC13706nc abstractC13706nc) throws RemoteException {
        m12127a();
        this.f51185a.mo11658d().m12011a(new RunnableC14119jx(this, abstractC13706nc, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void getCurrentScreenClass(AbstractC13706nc abstractC13706nc) throws RemoteException {
        m12127a();
        m12126a(abstractC13706nc, this.f51185a.m11989f().m11837s());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void getCurrentScreenName(AbstractC13706nc abstractC13706nc) throws RemoteException {
        m12127a();
        m12126a(abstractC13706nc, this.f51185a.m11989f().m11838r());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void getGmpAppId(AbstractC13706nc abstractC13706nc) throws RemoteException {
        m12127a();
        m12126a(abstractC13706nc, this.f51185a.m11989f().m11836t());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void getMaxUserProperties(String str, AbstractC13706nc abstractC13706nc) throws RemoteException {
        m12127a();
        this.f51185a.m11989f();
        C12045o.m19160a(str);
        m12127a();
        this.f51185a.m11988g().m11599a(abstractC13706nc, 25);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void getTestFlag(AbstractC13706nc abstractC13706nc, int i) throws RemoteException {
        m12127a();
        if (i == 0) {
            this.f51185a.m11988g().m11596a(abstractC13706nc, this.f51185a.m11989f().m11845g());
        } else if (i == 1) {
            this.f51185a.m11988g().m11598a(abstractC13706nc, this.f51185a.m11989f().m11844h().longValue());
        } else if (i != 2) {
            if (i == 3) {
                this.f51185a.m11988g().m11599a(abstractC13706nc, this.f51185a.m11989f().m11843i().intValue());
            } else if (i != 4) {
            } else {
                this.f51185a.m11988g().m11594a(abstractC13706nc, this.f51185a.m11989f().m11846f().booleanValue());
            }
        } else {
            C14116ju m11988g = this.f51185a.m11988g();
            double doubleValue = this.f51185a.m11989f().m11842n().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                abstractC13706nc.mo12294a(bundle);
            } catch (RemoteException e) {
                m11988g.f51637t.mo11661c().f51398f.m12091a("Error returning double value to wrapper", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void getUserProperties(String str, String str2, boolean z, AbstractC13706nc abstractC13706nc) throws RemoteException {
        m12127a();
        this.f51185a.mo11658d().m12011a(new RunnableC14073ie(this, abstractC13706nc, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void initForTests(Map map) throws RemoteException {
        m12127a();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void initialize(AbstractC12126b abstractC12126b, zzz zzzVar, long j) throws RemoteException {
        C13979es c13979es = this.f51185a;
        if (c13979es == null) {
            this.f51185a = C13979es.m11997a((Context) C12045o.m19162a((Context) BinderC12129d.m18980a(abstractC12126b)), zzzVar, Long.valueOf(j));
        } else {
            c13979es.mo11661c().f51398f.m12092a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void isDataCollectionEnabled(AbstractC13706nc abstractC13706nc) throws RemoteException {
        m12127a();
        this.f51185a.mo11658d().m12011a(new RunnableC14120jy(this, abstractC13706nc));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        m12127a();
        this.f51185a.m11989f().m11855a(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void logEventAndBundle(String str, String str2, Bundle bundle, AbstractC13706nc abstractC13706nc, long j) throws RemoteException {
        m12127a();
        C12045o.m19160a(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.f51185a.mo11658d().m12011a(new RunnableC14046he(this, abstractC13706nc, new zzas(str2, new zzaq(bundle), "app", j), str));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void logHealthData(int i, String str, AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) throws RemoteException {
        m12127a();
        this.f51185a.mo11661c().m12088a(i, true, false, str, abstractC12126b == null ? null : BinderC12129d.m18980a(abstractC12126b), abstractC12126b2 == null ? null : BinderC12129d.m18980a(abstractC12126b2), abstractC12126b3 == null ? null : BinderC12129d.m18980a(abstractC12126b3));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void onActivityCreated(AbstractC12126b abstractC12126b, Bundle bundle, long j) throws RemoteException {
        m12127a();
        C14035gu c14035gu = this.f51185a.m11989f().f51738a;
        if (c14035gu != null) {
            this.f51185a.m11989f().m11847e();
            c14035gu.onActivityCreated((Activity) BinderC12129d.m18980a(abstractC12126b), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void onActivityDestroyed(AbstractC12126b abstractC12126b, long j) throws RemoteException {
        m12127a();
        C14035gu c14035gu = this.f51185a.m11989f().f51738a;
        if (c14035gu != null) {
            this.f51185a.m11989f().m11847e();
            c14035gu.onActivityDestroyed((Activity) BinderC12129d.m18980a(abstractC12126b));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void onActivityPaused(AbstractC12126b abstractC12126b, long j) throws RemoteException {
        m12127a();
        C14035gu c14035gu = this.f51185a.m11989f().f51738a;
        if (c14035gu != null) {
            this.f51185a.m11989f().m11847e();
            c14035gu.onActivityPaused((Activity) BinderC12129d.m18980a(abstractC12126b));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void onActivityResumed(AbstractC12126b abstractC12126b, long j) throws RemoteException {
        m12127a();
        C14035gu c14035gu = this.f51185a.m11989f().f51738a;
        if (c14035gu != null) {
            this.f51185a.m11989f().m11847e();
            c14035gu.onActivityResumed((Activity) BinderC12129d.m18980a(abstractC12126b));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void onActivitySaveInstanceState(AbstractC12126b abstractC12126b, AbstractC13706nc abstractC13706nc, long j) throws RemoteException {
        m12127a();
        C14035gu c14035gu = this.f51185a.m11989f().f51738a;
        Bundle bundle = new Bundle();
        if (c14035gu != null) {
            this.f51185a.m11989f().m11847e();
            c14035gu.onActivitySaveInstanceState((Activity) BinderC12129d.m18980a(abstractC12126b), bundle);
        }
        try {
            abstractC13706nc.mo12294a(bundle);
        } catch (RemoteException e) {
            this.f51185a.mo11661c().f51398f.m12091a("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void onActivityStarted(AbstractC12126b abstractC12126b, long j) throws RemoteException {
        m12127a();
        if (this.f51185a.m11989f().f51738a != null) {
            this.f51185a.m11989f().m11847e();
            BinderC12129d.m18980a(abstractC12126b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void onActivityStopped(AbstractC12126b abstractC12126b, long j) throws RemoteException {
        m12127a();
        if (this.f51185a.m11989f().f51738a != null) {
            this.f51185a.m11989f().m11847e();
            BinderC12129d.m18980a(abstractC12126b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void performAction(Bundle bundle, AbstractC13706nc abstractC13706nc, long j) throws RemoteException {
        m12127a();
        abstractC13706nc.mo12294a(null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void registerOnMeasurementEventListener(AbstractC13709nf abstractC13709nf) throws RemoteException {
        AbstractC14008fu abstractC14008fu;
        m12127a();
        synchronized (this.f51186b) {
            AbstractC14008fu abstractC14008fu2 = this.f51186b.get(Integer.valueOf(abstractC13709nf.mo12293O_()));
            abstractC14008fu = abstractC14008fu2;
            if (abstractC14008fu2 == null) {
                abstractC14008fu = new C14123ka(this, abstractC13709nf);
                this.f51186b.put(Integer.valueOf(abstractC13709nf.mo12293O_()), abstractC14008fu);
            }
        }
        this.f51185a.m11989f().m11866a(abstractC14008fu);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void resetAnalyticsData(long j) throws RemoteException {
        m12127a();
        this.f51185a.m11989f().m11874a(j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        m12127a();
        if (bundle == null) {
            this.f51185a.mo11661c().f51395c.m12092a("Conditional user property must not be null");
        } else {
            this.f51185a.m11989f().m11870a(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setConsent(Bundle bundle, long j) throws RemoteException {
        m12127a();
        C14036gv m11989f = this.f51185a.m11989f();
        C13620jy.m12411b();
        if (m11989f.f51637t.f51529g.m12061d(null, C13935dc.f51333au)) {
            C13630kh.m12394b();
            if (!m11989f.f51637t.f51529g.m12061d(null, C13935dc.f51310aF) || TextUtils.isEmpty(m11989f.f51637t.m11982o().m12111e())) {
                m11989f.m11871a(bundle, 0, j);
            } else {
                m11989f.f51637t.mo11661c().f51400h.m12092a("Using developer consent only; google app id found");
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        m12127a();
        C14036gv m11989f = this.f51185a.m11989f();
        C13620jy.m12411b();
        if (m11989f.f51637t.f51529g.m12061d(null, C13935dc.f51334av)) {
            m11989f.m11871a(bundle, -20, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setCurrentScreen(AbstractC12126b abstractC12126b, String str, String str2, long j) throws RemoteException {
        m12127a();
        this.f51185a.m11985l().m11827a((Activity) BinderC12129d.m18980a(abstractC12126b), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        m12127a();
        C14036gv m11989f = this.f51185a.m11989f();
        m11989f.m12046k();
        m11989f.f51637t.mo11658d().m12011a(new RunnableC14012fy(m11989f, z));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setDefaultEventParameters(Bundle bundle) {
        m12127a();
        C14036gv m11989f = this.f51185a.m11989f();
        m11989f.f51637t.mo11658d().m12011a(new Runnable(m11989f, bundle == null ? null : new Bundle(bundle)) { // from class: com.google.android.gms.measurement.internal.fw

            /* renamed from: a */
            private final C14036gv f51659a;

            /* renamed from: b */
            private final Bundle f51660b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f51659a = m11989f;
                this.f51660b = bundle2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f51659a.m11851b(this.f51660b);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setEventInterceptor(AbstractC13709nf abstractC13709nf) throws RemoteException {
        m12127a();
        C14121jz c14121jz = new C14121jz(this, abstractC13709nf);
        if (this.f51185a.mo11658d().aj_()) {
            this.f51185a.m11989f().m11867a(c14121jz);
        } else {
            this.f51185a.mo11658d().m12011a(new RunnableC14101jf(this, c14121jz));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setInstanceIdProvider(AbstractC13711nh abstractC13711nh) throws RemoteException {
        m12127a();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        m12127a();
        this.f51185a.m11989f().m11864a(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setMinimumSessionDuration(long j) throws RemoteException {
        m12127a();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        m12127a();
        C14036gv m11989f = this.f51185a.m11989f();
        m11989f.f51637t.mo11658d().m12011a(new RunnableC14015ga(m11989f, j));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setUserId(String str, long j) throws RemoteException {
        m12127a();
        if (!this.f51185a.f51529g.m12061d(null, C13935dc.f51308aD) || str == null || str.length() != 0) {
            this.f51185a.m11989f().m11853a(null, "_id", str, true, j);
        } else {
            this.f51185a.mo11661c().f51398f.m12092a("User ID must be non-empty");
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void setUserProperty(String str, String str2, AbstractC12126b abstractC12126b, boolean z, long j) throws RemoteException {
        m12127a();
        this.f51185a.m11989f().m11853a(str, str2, BinderC12129d.m18980a(abstractC12126b), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13702mz
    public void unregisterOnMeasurementEventListener(AbstractC13709nf abstractC13709nf) throws RemoteException {
        AbstractC14008fu remove;
        m12127a();
        synchronized (this.f51186b) {
            remove = this.f51186b.remove(Integer.valueOf(abstractC13709nf.mo12293O_()));
        }
        C14123ka c14123ka = remove;
        if (remove == null) {
            c14123ka = new C14123ka(this, abstractC13709nf);
        }
        this.f51185a.m11989f().m11850b(c14123ka);
    }
}
