package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzo;
import com.google.android.gms.internal.measurement.zzs;
import com.google.android.gms.internal.measurement.zzv;
import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.internal.measurement.zzy;
import com.j256.ormlite.field.FieldType;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService.class */
public class AppMeasurementDynamiteService extends zzo {
    zzfl zza = null;
    private final Map<Integer, zzgm> zzb = new ArrayMap();

    @EnsuresNonNull({"scion"})
    private final void zzb() {
        if (this.zza != null) {
            return;
        }
        throw new IllegalStateException("Attempting to perform action before initialize.");
    }

    private final void zzc(zzs zzsVar, String str) {
        zzb();
        this.zza.zzl().zzad(zzsVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void beginAdUnitExposure(String str, long j) throws RemoteException {
        zzb();
        this.zza.zzB().zza(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        zzb();
        this.zza.zzk().zzO(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void clearMeasurementEnabled(long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzn(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void endAdUnitExposure(String str, long j) throws RemoteException {
        zzb();
        this.zza.zzB().zzb(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void generateEventId(zzs zzsVar) throws RemoteException {
        zzb();
        long zzd = this.zza.zzl().zzd();
        zzb();
        this.zza.zzl().zzae(zzsVar, zzd);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getAppInstanceId(zzs zzsVar) throws RemoteException {
        zzb();
        this.zza.zzau().zzh(new zzh(this, zzsVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getCachedAppInstanceId(zzs zzsVar) throws RemoteException {
        zzb();
        zzc(zzsVar, this.zza.zzk().zzD());
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getConditionalUserProperties(String str, String str2, zzs zzsVar) throws RemoteException {
        zzb();
        this.zza.zzau().zzh(new zzl(this, zzsVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getCurrentScreenClass(zzs zzsVar) throws RemoteException {
        zzb();
        zzc(zzsVar, this.zza.zzk().zzS());
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getCurrentScreenName(zzs zzsVar) throws RemoteException {
        zzb();
        zzc(zzsVar, this.zza.zzk().zzR());
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getGmpAppId(zzs zzsVar) throws RemoteException {
        zzb();
        zzc(zzsVar, this.zza.zzk().zzT());
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getMaxUserProperties(String str, zzs zzsVar) throws RemoteException {
        zzb();
        this.zza.zzk().zzL(str);
        zzb();
        this.zza.zzl().zzaf(zzsVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getTestFlag(zzs zzsVar, int i) throws RemoteException {
        zzb();
        if (i == 0) {
            this.zza.zzl().zzad(zzsVar, this.zza.zzk().zzj());
        } else if (i == 1) {
            this.zza.zzl().zzae(zzsVar, this.zza.zzk().zzk().longValue());
        } else if (i != 2) {
            if (i == 3) {
                this.zza.zzl().zzaf(zzsVar, this.zza.zzk().zzl().intValue());
            } else if (i != 4) {
            } else {
                this.zza.zzl().zzah(zzsVar, this.zza.zzk().zzi().booleanValue());
            }
        } else {
            zzkk zzl = this.zza.zzl();
            double doubleValue = this.zza.zzk().zzm().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                zzsVar.zzb(bundle);
            } catch (RemoteException e) {
                zzl.zzx.zzat().zze().zzb("Error returning double value to wrapper", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void getUserProperties(String str, String str2, boolean z, zzs zzsVar) throws RemoteException {
        zzb();
        this.zza.zzau().zzh(new zzj(this, zzsVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void initForTests(Map map) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void initialize(IObjectWrapper iObjectWrapper, zzy zzyVar, long j) throws RemoteException {
        zzfl zzflVar = this.zza;
        if (zzflVar == null) {
            this.zza = zzfl.zzC((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzyVar, Long.valueOf(j));
        } else {
            zzflVar.zzat().zze().zza("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void isDataCollectionEnabled(zzs zzsVar) throws RemoteException {
        zzb();
        this.zza.zzau().zzh(new zzm(this, zzsVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzv(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void logEventAndBundle(String str, String str2, Bundle bundle, zzs zzsVar, long j) throws RemoteException {
        zzb();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", POBConstants.KEY_APP);
        this.zza.zzau().zzh(new zzi(this, zzsVar, new zzas(str2, new zzaq(bundle), POBConstants.KEY_APP, j), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        zzb();
        this.zza.zzat().zzm(i, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 == null ? null : ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException {
        zzb();
        zzhm zzhmVar = this.zza.zzk().zza;
        if (zzhmVar != null) {
            this.zza.zzk().zzh();
            zzhmVar.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        zzhm zzhmVar = this.zza.zzk().zza;
        if (zzhmVar != null) {
            this.zza.zzk().zzh();
            zzhmVar.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        zzhm zzhmVar = this.zza.zzk().zza;
        if (zzhmVar != null) {
            this.zza.zzk().zzh();
            zzhmVar.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        zzhm zzhmVar = this.zza.zzk().zza;
        if (zzhmVar != null) {
            this.zza.zzk().zzh();
            zzhmVar.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzs zzsVar, long j) throws RemoteException {
        zzb();
        zzhm zzhmVar = this.zza.zzk().zza;
        Bundle bundle = new Bundle();
        if (zzhmVar != null) {
            this.zza.zzk().zzh();
            zzhmVar.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zza.zzat().zze().zzb("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        if (this.zza.zzk().zza != null) {
            this.zza.zzk().zzh();
            Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        if (this.zza.zzk().zza != null) {
            this.zza.zzk().zzh();
            Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void performAction(Bundle bundle, zzs zzsVar, long j) throws RemoteException {
        zzb();
        zzsVar.zzb(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void registerOnMeasurementEventListener(zzv zzvVar) throws RemoteException {
        zzgm zzgmVar;
        zzb();
        synchronized (this.zzb) {
            zzgm zzgmVar2 = this.zzb.get(Integer.valueOf(zzvVar.zze()));
            zzgmVar = zzgmVar2;
            if (zzgmVar2 == null) {
                zzgmVar = new zzo(this, zzvVar);
                this.zzb.put(Integer.valueOf(zzvVar.zze()), zzgmVar);
            }
        }
        this.zza.zzk().zzJ(zzgmVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void resetAnalyticsData(long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzF(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        zzb();
        if (bundle == null) {
            this.zza.zzat().zzb().zza("Conditional user property must not be null");
        } else {
            this.zza.zzk().zzN(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setConsent(Bundle bundle, long j) throws RemoteException {
        zzb();
        zzhn zzk = this.zza.zzk();
        zzlc.zzb();
        if (zzk.zzx.zzc().zzn(null, zzdw.zzaw)) {
            zzk.zzo(bundle, 30, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        zzb();
        zzhn zzk = this.zza.zzk();
        zzlc.zzb();
        if (zzk.zzx.zzc().zzn(null, zzdw.zzax)) {
            zzk.zzo(bundle, 10, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException {
        zzb();
        this.zza.zzx().zzk((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        zzb();
        zzhn zzk = this.zza.zzk();
        zzk.zzb();
        zzfl zzflVar = zzk.zzx;
        zzk.zzx.zzau().zzh(new zzgq(zzk, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setDefaultEventParameters(Bundle bundle) {
        zzb();
        zzhn zzk = this.zza.zzk();
        zzk.zzx.zzau().zzh(new Runnable(zzk, bundle == null ? null : new Bundle(bundle)) { // from class: com.google.android.gms.measurement.internal.zzgo
            private final zzhn zza;
            private final Bundle zzb;

            /* JADX INFO: Access modifiers changed from: package-private */
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

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setEventInterceptor(zzv zzvVar) throws RemoteException {
        zzb();
        zzn zznVar = new zzn(this, zzvVar);
        if (this.zza.zzau().zzd()) {
            this.zza.zzk().zzI(zznVar);
        } else {
            this.zza.zzau().zzh(new zzk(this, zznVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setInstanceIdProvider(zzx zzxVar) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzn(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setMinimumSessionDuration(long j) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        zzb();
        zzhn zzk = this.zza.zzk();
        zzfl zzflVar = zzk.zzx;
        zzk.zzx.zzau().zzh(new zzgs(zzk, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setUserId(String str, long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzz(null, FieldType.FOREIGN_ID_FIELD_SUFFIX, str, true, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        zzb();
        this.zza.zzk().zzz(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public void unregisterOnMeasurementEventListener(zzv zzvVar) throws RemoteException {
        zzgm remove;
        zzb();
        synchronized (this.zzb) {
            remove = this.zzb.remove(Integer.valueOf(zzvVar.zze()));
        }
        zzo zzoVar = remove;
        if (remove == null) {
            zzoVar = new zzo(this, zzvVar);
        }
        this.zza.zzk().zzK(zzoVar);
    }
}
