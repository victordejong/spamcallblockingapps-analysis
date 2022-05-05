package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzab;
import com.google.android.gms.internal.measurement.zzac;
import com.google.android.gms.internal.measurement.zzae;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.internal.measurement.zzu;
import com.google.android.gms.internal.measurement.zzw;
import java.util.Map;
@DynamiteApi
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService.class */
public class AppMeasurementDynamiteService extends zzu {
    @VisibleForTesting

    /* renamed from: a */
    zzfv f8821a = null;

    /* renamed from: b */
    private Map<Integer, zzgw> f8822b = new ArrayMap();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService$zza.class */
    final class zza implements zzgw {

        /* renamed from: a */
        private zzab f8823a;

        zza(zzab zzabVar) {
            this.f8823a = zzabVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzgw
        public final void onEvent(String str, String str2, Bundle bundle, long j) {
            try {
                this.f8823a.mo13405l0(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.f8821a.mo11081c().m11557G().m11539b("Event listener threw exception", e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService$zzb.class */
    final class zzb implements zzgx {

        /* renamed from: a */
        private zzab f8825a;

        zzb(zzab zzabVar) {
            this.f8825a = zzabVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzgx
        /* renamed from: a */
        public final void mo11300a(String str, String str2, Bundle bundle, long j) {
            try {
                this.f8825a.mo13405l0(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.f8821a.mo11081c().m11557G().m11539b("Event interceptor threw exception", e);
            }
        }
    }

    /* renamed from: b */
    private final void m11817b() {
        if (this.f8821a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    /* renamed from: c */
    private final void m11816c(zzw zzwVar, String str) {
        this.f8821a.m11381G().m10976P(zzwVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void beginAdUnitExposure(String str, long j) throws RemoteException {
        m11817b();
        this.f8821a.m11369S().m11806y(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        m11817b();
        this.f8821a.m11382F().m11298A0(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void clearMeasurementEnabled(long j) throws RemoteException {
        m11817b();
        this.f8821a.m11382F().m11279R(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void endAdUnitExposure(String str, long j) throws RemoteException {
        m11817b();
        this.f8821a.m11369S().m11813C(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void generateEventId(zzw zzwVar) throws RemoteException {
        m11817b();
        this.f8821a.m11381G().m10978N(zzwVar, this.f8821a.m11381G().m10998C0());
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getAppInstanceId(zzw zzwVar) throws RemoteException {
        m11817b();
        this.f8821a.mo11083b().m11409x(new zzh(this, zzwVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getCachedAppInstanceId(zzw zzwVar) throws RemoteException {
        m11817b();
        m11816c(zzwVar, this.f8821a.m11382F().m11260k0());
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getConditionalUserProperties(String str, String str2, zzw zzwVar) throws RemoteException {
        m11817b();
        this.f8821a.mo11083b().m11409x(new zzl(this, zzwVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getCurrentScreenClass(zzw zzwVar) throws RemoteException {
        m11817b();
        m11816c(zzwVar, this.f8821a.m11382F().m11257n0());
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getCurrentScreenName(zzw zzwVar) throws RemoteException {
        m11817b();
        m11816c(zzwVar, this.f8821a.m11382F().m11258m0());
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getGmpAppId(zzw zzwVar) throws RemoteException {
        m11817b();
        m11816c(zzwVar, this.f8821a.m11382F().m11256o0());
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getMaxUserProperties(String str, zzw zzwVar) throws RemoteException {
        m11817b();
        this.f8821a.m11382F();
        Preconditions.m14527g(str);
        this.f8821a.m11381G().m10979M(zzwVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getTestFlag(zzw zzwVar, int i) throws RemoteException {
        m11817b();
        if (i == 0) {
            this.f8821a.m11381G().m10976P(zzwVar, this.f8821a.m11382F().m11264g0());
        } else if (i == 1) {
            this.f8821a.m11381G().m10978N(zzwVar, this.f8821a.m11382F().m11263h0().longValue());
        } else if (i == 2) {
            zzkw G = this.f8821a.m11381G();
            double doubleValue = this.f8821a.m11382F().m11261j0().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                zzwVar.zza(bundle);
            } catch (RemoteException e) {
                G.f9354a.mo11081c().m11557G().m11539b("Error returning double value to wrapper", e);
            }
        } else if (i == 3) {
            this.f8821a.m11381G().m10979M(zzwVar, this.f8821a.m11382F().m11262i0().intValue());
        } else if (i == 4) {
            this.f8821a.m11381G().m10974R(zzwVar, this.f8821a.m11382F().m11265f0().booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void getUserProperties(String str, String str2, boolean z, zzw zzwVar) throws RemoteException {
        m11817b();
        this.f8821a.mo11083b().m11409x(new zzi(this, zzwVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void initForTests(Map map) throws RemoteException {
        m11817b();
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void initialize(IObjectWrapper iObjectWrapper, zzae zzaeVar, long j) throws RemoteException {
        Context context = (Context) ObjectWrapper.m14258c(iObjectWrapper);
        zzfv zzfvVar = this.f8821a;
        if (zzfvVar == null) {
            this.f8821a = zzfv.m11367d(context, zzaeVar, Long.valueOf(j));
        } else {
            zzfvVar.mo11081c().m11557G().m11540a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void isDataCollectionEnabled(zzw zzwVar) throws RemoteException {
        m11817b();
        this.f8821a.mo11083b().m11409x(new zzk(this, zzwVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        m11817b();
        this.f8821a.m11382F().m11271Z(str, str2, bundle, z, z2, j);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.measurement.internal.zzfo, com.google.android.gms.measurement.internal.zzar] */
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
            r0.m11817b()
            r0 = r10
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.m14527g(r0)
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
            com.google.android.gms.measurement.internal.zzar r0 = new com.google.android.gms.measurement.internal.zzar
            r1 = r0
            r2 = r10
            com.google.android.gms.measurement.internal.zzam r3 = new com.google.android.gms.measurement.internal.zzam
            r4 = r3
            r5 = r11
            r4.<init>(r5)
            java.lang.String r4 = "app"
            r5 = r13
            r1.<init>(r2, r3, r4, r5)
            r10 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzfv r0 = r0.f8821a
            com.google.android.gms.measurement.internal.zzfo r0 = r0.mo11083b()
            com.google.android.gms.measurement.internal.zzj r1 = new com.google.android.gms.measurement.internal.zzj
            r2 = r1
            r3 = r8
            r4 = r12
            r5 = r10
            r6 = r9
            r2.<init>(r3, r4, r5, r6)
            r0.m11409x(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService.logEventAndBundle(java.lang.String, java.lang.String, android.os.Bundle, com.google.android.gms.internal.measurement.zzw, long):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        m11817b();
        Object obj = null;
        Object c = iObjectWrapper == null ? null : ObjectWrapper.m14258c(iObjectWrapper);
        Object c2 = iObjectWrapper2 == null ? null : ObjectWrapper.m14258c(iObjectWrapper2);
        if (iObjectWrapper3 != null) {
            obj = ObjectWrapper.m14258c(iObjectWrapper3);
        }
        this.f8821a.mo11081c().m11542z(i, true, false, str, c, c2, obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException {
        m11817b();
        zzhz zzhzVar = this.f8821a.m11382F().f9371c;
        if (zzhzVar != null) {
            this.f8821a.m11382F().m11266e0();
            zzhzVar.onActivityCreated((Activity) ObjectWrapper.m14258c(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        m11817b();
        zzhz zzhzVar = this.f8821a.m11382F().f9371c;
        if (zzhzVar != null) {
            this.f8821a.m11382F().m11266e0();
            zzhzVar.onActivityDestroyed((Activity) ObjectWrapper.m14258c(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        m11817b();
        zzhz zzhzVar = this.f8821a.m11382F().f9371c;
        if (zzhzVar != null) {
            this.f8821a.m11382F().m11266e0();
            zzhzVar.onActivityPaused((Activity) ObjectWrapper.m14258c(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        m11817b();
        zzhz zzhzVar = this.f8821a.m11382F().f9371c;
        if (zzhzVar != null) {
            this.f8821a.m11382F().m11266e0();
            zzhzVar.onActivityResumed((Activity) ObjectWrapper.m14258c(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzw zzwVar, long j) throws RemoteException {
        m11817b();
        zzhz zzhzVar = this.f8821a.m11382F().f9371c;
        Bundle bundle = new Bundle();
        if (zzhzVar != null) {
            this.f8821a.m11382F().m11266e0();
            zzhzVar.onActivitySaveInstanceState((Activity) ObjectWrapper.m14258c(iObjectWrapper), bundle);
        }
        try {
            zzwVar.zza(bundle);
        } catch (RemoteException e) {
            this.f8821a.mo11081c().m11557G().m11539b("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        m11817b();
        zzhz zzhzVar = this.f8821a.m11382F().f9371c;
        if (zzhzVar != null) {
            this.f8821a.m11382F().m11266e0();
            zzhzVar.onActivityStarted((Activity) ObjectWrapper.m14258c(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        m11817b();
        zzhz zzhzVar = this.f8821a.m11382F().f9371c;
        if (zzhzVar != null) {
            this.f8821a.m11382F().m11266e0();
            zzhzVar.onActivityStopped((Activity) ObjectWrapper.m14258c(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void performAction(Bundle bundle, zzw zzwVar, long j) throws RemoteException {
        m11817b();
        zzwVar.zza(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void registerOnMeasurementEventListener(zzab zzabVar) throws RemoteException {
        m11817b();
        zzgw zzgwVar = this.f8822b.get(Integer.valueOf(zzabVar.zza()));
        zzgw zzgwVar2 = zzgwVar;
        if (zzgwVar == null) {
            zzgwVar2 = new zza(zzabVar);
            this.f8822b.put(Integer.valueOf(zzabVar.zza()), zzgwVar2);
        }
        this.f8821a.m11382F().m11285L(zzgwVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void resetAnalyticsData(long j) throws RemoteException {
        m11817b();
        zzgy F = this.f8821a.m11382F();
        F.m11277T(null);
        F.mo11083b().m11409x(new zzhi(F, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        m11817b();
        if (bundle == null) {
            this.f8821a.mo11081c().m11560D().m11540a("Conditional user property must not be null");
        } else {
            this.f8821a.m11382F().m11289H(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setConsent(Bundle bundle, long j) throws RemoteException {
        m11817b();
        zzgy F = this.f8821a.m11382F();
        if (zzmj.m11898a() && F.m11311l().m10873y(null, zzat.f8902H0)) {
            F.m11290G(bundle, 30, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        m11817b();
        zzgy F = this.f8821a.m11382F();
        if (zzmj.m11898a() && F.m11311l().m10873y(null, zzat.f8904I0)) {
            F.m11290G(bundle, 10, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException {
        m11817b();
        this.f8821a.m11373O().m11224H((Activity) ObjectWrapper.m14258c(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        m11817b();
        zzgy F = this.f8821a.m11382F();
        F.m11321v();
        F.mo11083b().m11409x(new zzhw(F, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setDefaultEventParameters(Bundle bundle) {
        m11817b();
        final zzgy F = this.f8821a.m11382F();
        final Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        F.mo11083b().m11409x(new Runnable(F, bundle2) { // from class: com.google.android.gms.measurement.internal.zzhb

            /* renamed from: f */
            private final zzgy f9397f;

            /* renamed from: g */
            private final Bundle f9398g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9397f = F;
                this.f9398g = bundle2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9397f.m11245z0(this.f9398g);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setEventInterceptor(zzab zzabVar) throws RemoteException {
        m11817b();
        zzgy F = this.f8821a.m11382F();
        zzb zzbVar = new zzb(zzabVar);
        F.m11321v();
        F.mo11083b().m11409x(new zzhl(F, zzbVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setInstanceIdProvider(zzac zzacVar) throws RemoteException {
        m11817b();
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        m11817b();
        this.f8821a.m11382F().m11279R(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setMinimumSessionDuration(long j) throws RemoteException {
        m11817b();
        zzgy F = this.f8821a.m11382F();
        F.mo11083b().m11409x(new zzhf(F, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        m11817b();
        zzgy F = this.f8821a.m11382F();
        F.mo11083b().m11409x(new zzhe(F, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setUserId(String str, long j) throws RemoteException {
        m11817b();
        this.f8821a.m11382F().m11268c0(null, "_id", str, true, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        m11817b();
        this.f8821a.m11382F().m11268c0(str, str2, ObjectWrapper.m14258c(iObjectWrapper), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public void unregisterOnMeasurementEventListener(zzab zzabVar) throws RemoteException {
        m11817b();
        zzgw remove = this.f8822b.remove(Integer.valueOf(zzabVar.zza()));
        zzgw zzgwVar = remove;
        if (remove == null) {
            zzgwVar = new zza(zzabVar);
        }
        this.f8821a.m11382F().m11250u0(zzgwVar);
    }
}
