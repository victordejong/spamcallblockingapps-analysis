package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.b.a;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.measurement.jy;
import com.google.android.gms.internal.measurement.kh;
import com.google.android.gms.internal.measurement.my;
import com.google.android.gms.internal.measurement.nc;
import com.google.android.gms.internal.measurement.nf;
import com.google.android.gms.internal.measurement.nh;
import com.google.android.gms.internal.measurement.zzz;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService.class */
public class AppMeasurementDynamiteService extends my {

    /* renamed from: a  reason: collision with root package name */
    es f29392a = null;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Integer, fu> f29393b = new a();

    @EnsuresNonNull({"scion"})
    private final void a() {
        if (this.f29392a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    private final void a(nc ncVar, String str) {
        a();
        this.f29392a.g().a(ncVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void beginAdUnitExposure(String str, long j) throws RemoteException {
        a();
        this.f29392a.p().a(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        a();
        this.f29392a.f().b(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void clearMeasurementEnabled(long j) throws RemoteException {
        a();
        this.f29392a.f().a((Boolean) null);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void endAdUnitExposure(String str, long j) throws RemoteException {
        a();
        this.f29392a.p().b(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void generateEventId(nc ncVar) throws RemoteException {
        a();
        long e = this.f29392a.g().e();
        a();
        this.f29392a.g().a(ncVar, e);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void getAppInstanceId(nc ncVar) throws RemoteException {
        a();
        this.f29392a.d().a(new gd(this, ncVar));
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void getCachedAppInstanceId(nc ncVar) throws RemoteException {
        a();
        a(ncVar, this.f29392a.f().p());
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void getConditionalUserProperties(String str, String str2, nc ncVar) throws RemoteException {
        a();
        this.f29392a.d().a(new jx(this, ncVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void getCurrentScreenClass(nc ncVar) throws RemoteException {
        a();
        a(ncVar, this.f29392a.f().s());
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void getCurrentScreenName(nc ncVar) throws RemoteException {
        a();
        a(ncVar, this.f29392a.f().r());
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void getGmpAppId(nc ncVar) throws RemoteException {
        a();
        a(ncVar, this.f29392a.f().t());
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void getMaxUserProperties(String str, nc ncVar) throws RemoteException {
        a();
        this.f29392a.f();
        o.a(str);
        a();
        this.f29392a.g().a(ncVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void getTestFlag(nc ncVar, int i) throws RemoteException {
        a();
        if (i == 0) {
            this.f29392a.g().a(ncVar, this.f29392a.f().g());
        } else if (i == 1) {
            this.f29392a.g().a(ncVar, this.f29392a.f().h().longValue());
        } else if (i == 2) {
            ju g = this.f29392a.g();
            double doubleValue = this.f29392a.f().n().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                ncVar.a(bundle);
            } catch (RemoteException e) {
                g.t.c().f.a("Error returning double value to wrapper", e);
            }
        } else if (i == 3) {
            this.f29392a.g().a(ncVar, this.f29392a.f().i().intValue());
        } else if (i == 4) {
            this.f29392a.g().a(ncVar, this.f29392a.f().f().booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void getUserProperties(String str, String str2, boolean z, nc ncVar) throws RemoteException {
        a();
        this.f29392a.d().a(new ie(this, ncVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void initForTests(Map map) throws RemoteException {
        a();
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void initialize(b bVar, zzz zzzVar, long j) throws RemoteException {
        es esVar = this.f29392a;
        if (esVar == null) {
            this.f29392a = es.a((Context) o.a((Context) d.a(bVar)), zzzVar, Long.valueOf(j));
        } else {
            esVar.c().f.a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void isDataCollectionEnabled(nc ncVar) throws RemoteException {
        a();
        this.f29392a.d().a(new jy(this, ncVar));
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        a();
        this.f29392a.f().a(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void logEventAndBundle(String str, String str2, Bundle bundle, nc ncVar, long j) throws RemoteException {
        a();
        o.a(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.f29392a.d().a(new he(this, ncVar, new zzas(str2, new zzaq(bundle), "app", j), str));
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void logHealthData(int i, String str, b bVar, b bVar2, b bVar3) throws RemoteException {
        a();
        Object obj = null;
        Object a2 = bVar == null ? null : d.a(bVar);
        Object a3 = bVar2 == null ? null : d.a(bVar2);
        if (bVar3 != null) {
            obj = d.a(bVar3);
        }
        this.f29392a.c().a(i, true, false, str, a2, a3, obj);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void onActivityCreated(b bVar, Bundle bundle, long j) throws RemoteException {
        a();
        gu guVar = this.f29392a.f().f29728a;
        if (guVar != null) {
            this.f29392a.f().e();
            guVar.onActivityCreated((Activity) d.a(bVar), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void onActivityDestroyed(b bVar, long j) throws RemoteException {
        a();
        gu guVar = this.f29392a.f().f29728a;
        if (guVar != null) {
            this.f29392a.f().e();
            guVar.onActivityDestroyed((Activity) d.a(bVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void onActivityPaused(b bVar, long j) throws RemoteException {
        a();
        gu guVar = this.f29392a.f().f29728a;
        if (guVar != null) {
            this.f29392a.f().e();
            guVar.onActivityPaused((Activity) d.a(bVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void onActivityResumed(b bVar, long j) throws RemoteException {
        a();
        gu guVar = this.f29392a.f().f29728a;
        if (guVar != null) {
            this.f29392a.f().e();
            guVar.onActivityResumed((Activity) d.a(bVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void onActivitySaveInstanceState(b bVar, nc ncVar, long j) throws RemoteException {
        a();
        gu guVar = this.f29392a.f().f29728a;
        Bundle bundle = new Bundle();
        if (guVar != null) {
            this.f29392a.f().e();
            guVar.onActivitySaveInstanceState((Activity) d.a(bVar), bundle);
        }
        try {
            ncVar.a(bundle);
        } catch (RemoteException e) {
            this.f29392a.c().f.a("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void onActivityStarted(b bVar, long j) throws RemoteException {
        a();
        if (this.f29392a.f().f29728a != null) {
            this.f29392a.f().e();
            d.a(bVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void onActivityStopped(b bVar, long j) throws RemoteException {
        a();
        if (this.f29392a.f().f29728a != null) {
            this.f29392a.f().e();
            d.a(bVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void performAction(Bundle bundle, nc ncVar, long j) throws RemoteException {
        a();
        ncVar.a(null);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void registerOnMeasurementEventListener(nf nfVar) throws RemoteException {
        fu fuVar;
        a();
        synchronized (this.f29393b) {
            fu fuVar2 = this.f29393b.get(Integer.valueOf(nfVar.O_()));
            fuVar = fuVar2;
            if (fuVar2 == null) {
                fuVar = new ka(this, nfVar);
                this.f29393b.put(Integer.valueOf(nfVar.O_()), fuVar);
            }
        }
        this.f29392a.f().a(fuVar);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void resetAnalyticsData(long j) throws RemoteException {
        a();
        this.f29392a.f().a(j);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        a();
        if (bundle == null) {
            this.f29392a.c().f29506c.a("Conditional user property must not be null");
        } else {
            this.f29392a.f().a(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setConsent(Bundle bundle, long j) throws RemoteException {
        a();
        gv f = this.f29392a.f();
        jy.b();
        if (f.t.g.d(null, dc.au)) {
            kh.b();
            if (!f.t.g.d(null, dc.aF) || TextUtils.isEmpty(f.t.o().e())) {
                f.a(bundle, 0, j);
            } else {
                f.t.c().h.a("Using developer consent only; google app id found");
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        a();
        gv f = this.f29392a.f();
        jy.b();
        if (f.t.g.d(null, dc.av)) {
            f.a(bundle, -20, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setCurrentScreen(b bVar, String str, String str2, long j) throws RemoteException {
        a();
        this.f29392a.l().a((Activity) d.a(bVar), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        a();
        gv f = this.f29392a.f();
        f.k();
        f.t.d().a(new fy(f, z));
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setDefaultEventParameters(Bundle bundle) {
        a();
        final gv f = this.f29392a.f();
        final Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        f.t.d().a(new Runnable(f, bundle2) { // from class: com.google.android.gms.measurement.internal.fw

            /* renamed from: a  reason: collision with root package name */
            private final gv f29662a;

            /* renamed from: b  reason: collision with root package name */
            private final Bundle f29663b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29662a = f;
                this.f29663b = bundle2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29662a.b(this.f29663b);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setEventInterceptor(nf nfVar) throws RemoteException {
        a();
        jz jzVar = new jz(this, nfVar);
        if (this.f29392a.d().aj_()) {
            this.f29392a.f().a(jzVar);
        } else {
            this.f29392a.d().a(new jf(this, jzVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setInstanceIdProvider(nh nhVar) throws RemoteException {
        a();
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        a();
        this.f29392a.f().a(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setMinimumSessionDuration(long j) throws RemoteException {
        a();
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        a();
        gv f = this.f29392a.f();
        f.t.d().a(new ga(f, j));
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setUserId(String str, long j) throws RemoteException {
        a();
        if (!this.f29392a.g.d(null, dc.aD) || str == null || str.length() != 0) {
            this.f29392a.f().a(null, "_id", str, true, j);
        } else {
            this.f29392a.c().f.a("User ID must be non-empty");
        }
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void setUserProperty(String str, String str2, b bVar, boolean z, long j) throws RemoteException {
        a();
        this.f29392a.f().a(str, str2, d.a(bVar), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.mz
    public void unregisterOnMeasurementEventListener(nf nfVar) throws RemoteException {
        fu remove;
        a();
        synchronized (this.f29393b) {
            remove = this.f29393b.remove(Integer.valueOf(nfVar.O_()));
        }
        fu fuVar = remove;
        if (remove == null) {
            fuVar = new ka(this, nfVar);
        }
        this.f29392a.f().b(fuVar);
    }
}
