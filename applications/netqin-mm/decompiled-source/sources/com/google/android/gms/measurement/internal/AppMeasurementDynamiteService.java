package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzab;
import com.google.android.gms.internal.measurement.zzac;
import com.google.android.gms.internal.measurement.zzae;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.internal.measurement.zzu;
import com.google.android.gms.internal.measurement.zzw;
import com.google.android.gms.measurement.internal.zzhb;
import com.inmobi.ads.C8302r;
import java.util.Map;
import p012b.p035f.C0780a;
import p131c.p161d.p170b.p224d.p260i.p261a.C4748l5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4675d7;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4766n5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4774o4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4819t4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4828u4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4837v4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4858x7;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4864y4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4867y7;
@DynamiteApi
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService.class */
public class AppMeasurementDynamiteService extends zzu {
    @VisibleForTesting

    /* renamed from: a */
    public zzfu f29779a = null;

    /* renamed from: b */
    public final Map<Integer, zzgz> f29780b = new C0780a();

    /* renamed from: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService$a.class */
    public final class C7281a implements zzgw {

        /* renamed from: a */
        public zzab f29781a;

        public C7281a(zzab zzabVar) {
            this.f29781a = zzabVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzgw
        /* renamed from: a */
        public final void mo9008a(String str, String str2, Bundle bundle, long j) {
            try {
                this.f29781a.mo10431a(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.f29779a.mo8789p().m9149t().m9142a("Event interceptor threw exception", e);
            }
        }
    }

    /* renamed from: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b.class */
    public final class C7282b implements zzgz {

        /* renamed from: a */
        public zzab f29783a;

        public C7282b(zzab zzabVar) {
            this.f29783a = zzabVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzgz
        /* renamed from: a */
        public final void mo9006a(String str, String str2, Bundle bundle, long j) {
            try {
                this.f29783a.mo10431a(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.f29779a.mo8789p().m9149t().m9142a("Event listener threw exception", e);
            }
        }
    }

    /* renamed from: a */
    public final void m9368a(zzw zzwVar, String str) {
        this.f29779a.m9044s().m8724a(zzwVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void beginAdUnitExposure(String str, long j) throws RemoteException {
        zza();
        this.f29779a.m9073G().m9363a(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        zza();
        this.f29779a.m9045r().m8961c(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void clearMeasurementEnabled(long j) throws RemoteException {
        zza();
        this.f29779a.m9045r().m8981a((Boolean) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void endAdUnitExposure(String str, long j) throws RemoteException {
        zza();
        this.f29779a.m9073G().m9359b(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void generateEventId(zzw zzwVar) throws RemoteException {
        zza();
        this.f29779a.m9044s().m8726a(zzwVar, this.f29779a.m9044s().m8675q());
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getAppInstanceId(zzw zzwVar) throws RemoteException {
        zza();
        this.f29779a.mo8795j().m9093a(new RunnableC4774o4(this, zzwVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getCachedAppInstanceId(zzw zzwVar) throws RemoteException {
        zza();
        m9368a(zzwVar, this.f29779a.m9045r().m9000G());
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getConditionalUserProperties(String str, String str2, zzw zzwVar) throws RemoteException {
        zza();
        this.f29779a.mo8795j().m9093a(new RunnableC4675d7(this, zzwVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getCurrentScreenClass(zzw zzwVar) throws RemoteException {
        zza();
        m9368a(zzwVar, this.f29779a.m9045r().m8997J());
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getCurrentScreenName(zzw zzwVar) throws RemoteException {
        zza();
        m9368a(zzwVar, this.f29779a.m9045r().m8998I());
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getGmpAppId(zzw zzwVar) throws RemoteException {
        zza();
        m9368a(zzwVar, this.f29779a.m9045r().m8996K());
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getMaxUserProperties(String str, zzw zzwVar) throws RemoteException {
        zza();
        this.f29779a.m9045r();
        Preconditions.m17281b(str);
        this.f29779a.m9044s().m8727a(zzwVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getTestFlag(zzw zzwVar, int i) throws RemoteException {
        zza();
        if (i == 0) {
            this.f29779a.m9044s().m8724a(zzwVar, this.f29779a.m9045r().m9004C());
        } else if (i == 1) {
            this.f29779a.m9044s().m8726a(zzwVar, this.f29779a.m9045r().m9003D().longValue());
        } else if (i == 2) {
            zzkv s = this.f29779a.m9044s();
            double doubleValue = this.f29779a.m9045r().m9001F().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble(C8302r.f32303d, doubleValue);
            try {
                zzwVar.mo9452d(bundle);
            } catch (RemoteException e) {
                s.f17262a.mo8789p().m9149t().m9142a("Error returning double value to wrapper", e);
            }
        } else if (i == 3) {
            this.f29779a.m9044s().m8727a(zzwVar, this.f29779a.m9045r().m9002E().intValue());
        } else if (i == 4) {
            this.f29779a.m9044s().m8722a(zzwVar, this.f29779a.m9045r().m9005A().booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getUserProperties(String str, String str2, boolean z, zzw zzwVar) throws RemoteException {
        zza();
        this.f29779a.mo8795j().m9093a(new RunnableC4766n5(this, zzwVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void initForTests(Map map) throws RemoteException {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void initialize(IObjectWrapper iObjectWrapper, zzae zzaeVar, long j) throws RemoteException {
        Context context = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
        zzfu zzfuVar = this.f29779a;
        if (zzfuVar == null) {
            this.f29779a = zzfu.m9071a(context, zzaeVar, Long.valueOf(j));
        } else {
            zzfuVar.mo8789p().m9149t().m9143a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void isDataCollectionEnabled(zzw zzwVar) throws RemoteException {
        zza();
        this.f29779a.mo8795j().m9093a(new RunnableC4867y7(this, zzwVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        zza();
        this.f29779a.m9045r().m8972a(str, str2, bundle, z, z2, j);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.measurement.internal.zzaq, com.google.android.gms.measurement.internal.zzfr] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.measurement.zzv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void logEventAndBundle(java.lang.String r9, java.lang.String r10, android.os.Bundle r11, com.google.android.gms.internal.measurement.zzw r12, long r13) throws android.os.RemoteException {
        /*
            r8 = this;
            r0 = r8
            r0.zza()
            r0 = r10
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.m17281b(r0)
            android.os.Bundle r0 = new android.os.Bundle
            r15 = r0
            r0 = r11
            if (r0 == 0) goto L_0x001b
            r0 = r15
            r1 = r11
            r0.<init>(r1)
            goto L_0x0020
        L_0x001b:
            r0 = r15
            r0.<init>()
        L_0x0020:
            r0 = r15
            java.lang.String r1 = "_o"
            java.lang.String r2 = "app"
            r0.putString(r1, r2)
            com.google.android.gms.measurement.internal.zzaq r0 = new com.google.android.gms.measurement.internal.zzaq
            r1 = r0
            r2 = r10
            com.google.android.gms.measurement.internal.zzap r3 = new com.google.android.gms.measurement.internal.zzap
            r4 = r3
            r5 = r11
            r4.<init>(r5)
            java.lang.String r4 = "app"
            r5 = r13
            r1.<init>(r2, r3, r4, r5)
            r10 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzfu r0 = r0.f29779a
            com.google.android.gms.measurement.internal.zzfr r0 = r0.mo8795j()
            c.d.b.d.i.a.h6 r1 = new c.d.b.d.i.a.h6
            r2 = r1
            r3 = r8
            r4 = r12
            r5 = r10
            r6 = r9
            r2.<init>(r3, r4, r5, r6)
            r0.m9093a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService.logEventAndBundle(java.lang.String, java.lang.String, android.os.Bundle, com.google.android.gms.internal.measurement.zzw, long):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        zza();
        Object obj = null;
        Object Q = iObjectWrapper == null ? null : ObjectWrapper.m17021Q(iObjectWrapper);
        Object Q2 = iObjectWrapper2 == null ? null : ObjectWrapper.m17021Q(iObjectWrapper2);
        if (iObjectWrapper3 != null) {
            obj = ObjectWrapper.m17021Q(iObjectWrapper3);
        }
        this.f29779a.mo8789p().m9161a(i, true, false, str, Q, Q2, obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException {
        zza();
        C4748l5 l5Var = this.f29779a.m9045r().f30056c;
        if (l5Var != null) {
            this.f29779a.m9045r().m8959y();
            l5Var.onActivityCreated((Activity) ObjectWrapper.m17021Q(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zza();
        C4748l5 l5Var = this.f29779a.m9045r().f30056c;
        if (l5Var != null) {
            this.f29779a.m9045r().m8959y();
            l5Var.onActivityDestroyed((Activity) ObjectWrapper.m17021Q(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zza();
        C4748l5 l5Var = this.f29779a.m9045r().f30056c;
        if (l5Var != null) {
            this.f29779a.m9045r().m8959y();
            l5Var.onActivityPaused((Activity) ObjectWrapper.m17021Q(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zza();
        C4748l5 l5Var = this.f29779a.m9045r().f30056c;
        if (l5Var != null) {
            this.f29779a.m9045r().m8959y();
            l5Var.onActivityResumed((Activity) ObjectWrapper.m17021Q(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzw zzwVar, long j) throws RemoteException {
        zza();
        C4748l5 l5Var = this.f29779a.m9045r().f30056c;
        Bundle bundle = new Bundle();
        if (l5Var != null) {
            this.f29779a.m9045r().m8959y();
            l5Var.onActivitySaveInstanceState((Activity) ObjectWrapper.m17021Q(iObjectWrapper), bundle);
        }
        try {
            zzwVar.mo9452d(bundle);
        } catch (RemoteException e) {
            this.f29779a.mo8789p().m9149t().m9142a("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zza();
        C4748l5 l5Var = this.f29779a.m9045r().f30056c;
        if (l5Var != null) {
            this.f29779a.m9045r().m8959y();
            l5Var.onActivityStarted((Activity) ObjectWrapper.m17021Q(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zza();
        C4748l5 l5Var = this.f29779a.m9045r().f30056c;
        if (l5Var != null) {
            this.f29779a.m9045r().m8959y();
            l5Var.onActivityStopped((Activity) ObjectWrapper.m17021Q(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void performAction(Bundle bundle, zzw zzwVar, long j) throws RemoteException {
        zza();
        zzwVar.mo9452d(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void registerOnMeasurementEventListener(zzab zzabVar) throws RemoteException {
        zzgz zzgzVar;
        zza();
        synchronized (this.f29780b) {
            zzgz zzgzVar2 = this.f29780b.get(Integer.valueOf(zzabVar.zza()));
            zzgzVar = zzgzVar2;
            if (zzgzVar2 == null) {
                zzgzVar = new C7282b(zzabVar);
                this.f29780b.put(Integer.valueOf(zzabVar.zza()), zzgzVar);
            }
        }
        this.f29779a.m9045r().m8986a(zzgzVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void resetAnalyticsData(long j) throws RemoteException {
        zza();
        zzhb r = this.f29779a.m9045r();
        r.m8979a((String) null);
        r.mo8795j().m9093a(new RunnableC4864y4(r, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        zza();
        if (bundle == null) {
            this.f29779a.mo8789p().m9152q().m9143a("Conditional user property must not be null");
        } else {
            this.f29779a.m9045r().m8991a(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setConsent(Bundle bundle, long j) throws RemoteException {
        zza();
        zzhb r = this.f29779a.m9045r();
        if (zzml.m9520a() && r.m24897h().m9344d(null, zzas.f29831H0)) {
            r.m8992a(bundle, 30, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        zza();
        zzhb r = this.f29779a.m9045r();
        if (zzml.m9520a() && r.m24897h().m9344d(null, zzas.f29833I0)) {
            r.m8992a(bundle, 10, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException {
        zza();
        this.f29779a.m9077C().m8939a((Activity) ObjectWrapper.m17021Q(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        zza();
        zzhb r = this.f29779a.m9045r();
        r.m24876t();
        r.mo8795j().m9093a(new RunnableC4819t4(r, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setDefaultEventParameters(Bundle bundle) {
        zza();
        final zzhb r = this.f29779a.m9045r();
        final Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        r.mo8795j().m9093a(new Runnable(r, bundle2) { // from class: c.d.b.d.i.a.p4

            /* renamed from: a */
            public final zzhb f17321a;

            /* renamed from: b */
            public final Bundle f17322b;

            {
                this.f17321a = r;
                this.f17322b = bundle2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f17321a.m8967b(this.f17322b);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setEventInterceptor(zzab zzabVar) throws RemoteException {
        zza();
        C7281a aVar = new C7281a(zzabVar);
        if (this.f29779a.mo8795j().m9080q()) {
            this.f29779a.m9045r().m8987a(aVar);
        } else {
            this.f29779a.mo8795j().m9093a(new RunnableC4858x7(this, aVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setInstanceIdProvider(zzac zzacVar) throws RemoteException {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        zza();
        this.f29779a.m9045r().m8981a(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setMinimumSessionDuration(long j) throws RemoteException {
        zza();
        zzhb r = this.f29779a.m9045r();
        r.mo8795j().m9093a(new RunnableC4837v4(r, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        zza();
        zzhb r = this.f29779a.m9045r();
        r.mo8795j().m9093a(new RunnableC4828u4(r, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setUserId(String str, long j) throws RemoteException {
        zza();
        this.f29779a.m9045r().m8969a((String) null, "_id", (Object) str, true, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        zza();
        this.f29779a.m9045r().m8969a(str, str2, ObjectWrapper.m17021Q(iObjectWrapper), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void unregisterOnMeasurementEventListener(zzab zzabVar) throws RemoteException {
        zzgz remove;
        zza();
        synchronized (this.f29780b) {
            remove = this.f29780b.remove(Integer.valueOf(zzabVar.zza()));
        }
        zzgz zzgzVar = remove;
        if (remove == null) {
            zzgzVar = new C7282b(zzabVar);
        }
        this.f29779a.m9045r().m8966b(zzgzVar);
    }

    public final void zza() {
        if (this.f29779a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }
}
