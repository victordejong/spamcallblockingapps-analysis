package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.internal.measurement.zzcb;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.internal.measurement.zzci;
import com.google.android.gms.internal.measurement.zzck;
import com.google.android.gms.internal.measurement.zzcl;
import com.google.android.gms.internal.measurement.zzod;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import p007a6.C0033h;
import p226s.C4251a;
@DynamiteApi
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService.class */
public class AppMeasurementDynamiteService extends zzcb {
    @VisibleForTesting
    public zzfu zza = null;
    private final Map<Integer, zzgv> zzb = new C4251a();

    @EnsuresNonNull({"scion"})
    private final void zzb() {
        if (this.zza != null) {
            return;
        }
        throw new IllegalStateException("Attempting to perform action before initialize.");
    }

    private final void zzc(zzcf zzcfVar, String str) {
        zzb();
        this.zza.zzl().zzad(zzcfVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void beginAdUnitExposure(String str, long j) throws RemoteException {
        zzb();
        this.zza.zzB().zza(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        zzb();
        this.zza.zzk().zzO(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void clearMeasurementEnabled(long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzn(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void endAdUnitExposure(String str, long j) throws RemoteException {
        zzb();
        this.zza.zzB().zzb(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void generateEventId(zzcf zzcfVar) throws RemoteException {
        zzb();
        long zzd = this.zza.zzl().zzd();
        zzb();
        this.zza.zzl().zzae(zzcfVar, zzd);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getAppInstanceId(zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.zzav().zzh(new zzh(this, zzcfVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getCachedAppInstanceId(zzcf zzcfVar) throws RemoteException {
        zzb();
        zzc(zzcfVar, this.zza.zzk().zzD());
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getConditionalUserProperties(String str, String str2, zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.zzav().zzh(new zzl(this, zzcfVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getCurrentScreenClass(zzcf zzcfVar) throws RemoteException {
        zzb();
        zzc(zzcfVar, this.zza.zzk().zzS());
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getCurrentScreenName(zzcf zzcfVar) throws RemoteException {
        zzb();
        zzc(zzcfVar, this.zza.zzk().zzR());
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getGmpAppId(zzcf zzcfVar) throws RemoteException {
        zzb();
        zzc(zzcfVar, this.zza.zzk().zzT());
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getMaxUserProperties(String str, zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.zzk().zzL(str);
        zzb();
        this.zza.zzl().zzaf(zzcfVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getTestFlag(zzcf zzcfVar, int i) throws RemoteException {
        zzb();
        if (i == 0) {
            this.zza.zzl().zzad(zzcfVar, this.zza.zzk().zzj());
        } else if (i == 1) {
            this.zza.zzl().zzae(zzcfVar, this.zza.zzk().zzk().longValue());
        } else if (i != 2) {
            if (i == 3) {
                this.zza.zzl().zzaf(zzcfVar, this.zza.zzk().zzl().intValue());
            } else if (i != 4) {
            } else {
                this.zza.zzl().zzah(zzcfVar, this.zza.zzk().zzi().booleanValue());
            }
        } else {
            zzku zzl = this.zza.zzl();
            double doubleValue = this.zza.zzk().zzm().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                zzcfVar.zzb(bundle);
            } catch (RemoteException e) {
                zzl.zzs.zzau().zze().zzb("Error returning double value to wrapper", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getUserProperties(String str, String str2, boolean z, zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.zzav().zzh(new zzj(this, zzcfVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void initForTests(Map map) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void initialize(IObjectWrapper iObjectWrapper, zzcl zzclVar, long j) throws RemoteException {
        zzfu zzfuVar = this.zza;
        if (zzfuVar == null) {
            this.zza = zzfu.zzC((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzclVar, Long.valueOf(j));
        } else {
            C1676a.m4786k(zzfuVar, "Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void isDataCollectionEnabled(zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.zzav().zzh(new zzm(this, zzcfVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzv(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void logEventAndBundle(String str, String str2, Bundle bundle, zzcf zzcfVar, long j) throws RemoteException {
        zzb();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.zza.zzav().zzh(new zzi(this, zzcfVar, new zzas(str2, new zzaq(bundle), "app", j), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        zzb();
        this.zza.zzau().zzm(i, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 == null ? null : ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException {
        zzb();
        zzhv zzhvVar = this.zza.zzk().zza;
        if (zzhvVar != null) {
            this.zza.zzk().zzh();
            zzhvVar.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        zzhv zzhvVar = this.zza.zzk().zza;
        if (zzhvVar != null) {
            this.zza.zzk().zzh();
            zzhvVar.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        zzhv zzhvVar = this.zza.zzk().zza;
        if (zzhvVar != null) {
            this.zza.zzk().zzh();
            zzhvVar.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        zzhv zzhvVar = this.zza.zzk().zza;
        if (zzhvVar != null) {
            this.zza.zzk().zzh();
            zzhvVar.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzcf zzcfVar, long j) throws RemoteException {
        zzb();
        zzhv zzhvVar = this.zza.zzk().zza;
        Bundle bundle = new Bundle();
        if (zzhvVar != null) {
            this.zza.zzk().zzh();
            zzhvVar.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzcfVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zza.zzau().zze().zzb("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        if (this.zza.zzk().zza != null) {
            this.zza.zzk().zzh();
            Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        if (this.zza.zzk().zza != null) {
            this.zza.zzk().zzh();
            Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void performAction(Bundle bundle, zzcf zzcfVar, long j) throws RemoteException {
        zzb();
        zzcfVar.zzb(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void registerOnMeasurementEventListener(zzci zzciVar) throws RemoteException {
        zzgv zzgvVar;
        zzb();
        synchronized (this.zzb) {
            zzgv zzgvVar2 = this.zzb.get(Integer.valueOf(zzciVar.zze()));
            zzgvVar = zzgvVar2;
            if (zzgvVar2 == null) {
                zzgvVar = new zzo(this, zzciVar);
                this.zzb.put(Integer.valueOf(zzciVar.zze()), zzgvVar);
            }
        }
        this.zza.zzk().zzJ(zzgvVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void resetAnalyticsData(long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzF(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        zzb();
        if (bundle == null) {
            C0033h.m8883n(this.zza, "Conditional user property must not be null");
        } else {
            this.zza.zzk().zzN(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setConsent(Bundle bundle, long j) throws RemoteException {
        zzb();
        zzhw zzk = this.zza.zzk();
        zzod.zzb();
        if (!zzk.zzs.zzc().zzn(null, zzea.zzaC) || TextUtils.isEmpty(zzk.zzs.zzA().zzj())) {
            zzk.zzo(bundle, 0, j);
        } else {
            zzk.zzs.zzau().zzh().zza("Using developer consent only; google app id found");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzo(bundle, -20, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException {
        zzb();
        this.zza.zzx().zzk((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        zzb();
        zzhw zzk = this.zza.zzk();
        zzk.zzb();
        zzk.zzs.zzav().zzh(new zzgz(zzk, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setDefaultEventParameters(Bundle bundle) {
        zzb();
        zzhw zzk = this.zza.zzk();
        zzk.zzs.zzav().zzh(new Runnable(zzk, bundle == null ? null : new Bundle(bundle)) { // from class: com.google.android.gms.measurement.internal.zzgx
            private final zzhw zza;
            private final Bundle zzb;

            {
                this.zza = zzk;
                this.zzb = bundle2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzU(this.zzb);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setEventInterceptor(zzci zzciVar) throws RemoteException {
        zzb();
        zzn zznVar = new zzn(this, zzciVar);
        if (this.zza.zzav().zzd()) {
            this.zza.zzk().zzI(zznVar);
        } else {
            this.zza.zzav().zzh(new zzk(this, zznVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setInstanceIdProvider(zzck zzckVar) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzn(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setMinimumSessionDuration(long j) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        zzb();
        zzhw zzk = this.zza.zzk();
        zzk.zzs.zzav().zzh(new zzhb(zzk, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setUserId(String str, long j) throws RemoteException {
        zzb();
        if (!this.zza.zzc().zzn(null, zzea.zzaA) || str == null || str.length() != 0) {
            this.zza.zzk().zzz(null, "_id", str, true, j);
        } else {
            C1676a.m4786k(this.zza, "User ID must be non-empty");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzz(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void unregisterOnMeasurementEventListener(zzci zzciVar) throws RemoteException {
        zzgv remove;
        zzb();
        synchronized (this.zzb) {
            remove = this.zzb.remove(Integer.valueOf(zzciVar.zze()));
        }
        zzo zzoVar = remove;
        if (remove == null) {
            zzoVar = new zzo(this, zzciVar);
        }
        this.zza.zzk().zzK(zzoVar);
    }
}
