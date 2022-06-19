package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.p014c.C0374a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzl;
import com.google.android.gms.internal.measurement.zzn;
import com.google.android.gms.internal.measurement.zzs;
import com.google.android.gms.internal.measurement.zzt;
import com.google.android.gms.internal.measurement.zzv;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService.class */
public class AppMeasurementDynamiteService extends zzl {
    zzga zza = null;
    private Map<Integer, zzgz> zzb = new C0374a();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService$zza.class */
    final class zza implements zzha {
        private zzs zza;

        zza(zzs zzsVar) {
            AppMeasurementDynamiteService.this = r4;
            this.zza = zzsVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzha
        public final void interceptEvent(String str, String str2, Bundle bundle, long j) {
            try {
                this.zza.zza(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.zza.zzr().zzi().zza("Event interceptor threw exception", e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/AppMeasurementDynamiteService$zzb.class */
    final class zzb implements zzgz {
        private zzs zza;

        zzb(zzs zzsVar) {
            AppMeasurementDynamiteService.this = r4;
            this.zza = zzsVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzgz
        public final void onEvent(String str, String str2, Bundle bundle, long j) {
            try {
                this.zza.zza(str, str2, bundle, j);
            } catch (RemoteException e) {
                AppMeasurementDynamiteService.this.zza.zzr().zzi().zza("Event listener threw exception", e);
            }
        }
    }

    private final void zza() {
        if (this.zza != null) {
            return;
        }
        throw new IllegalStateException("Attempting to perform action before initialize.");
    }

    private final void zza(zzn zznVar, String str) {
        this.zza.zzi().zza(zznVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void beginAdUnitExposure(String str, long j) {
        zza();
        this.zza.zzz().zza(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zza();
        this.zza.zzh().zzc(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void endAdUnitExposure(String str, long j) {
        zza();
        this.zza.zzz().zzb(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void generateEventId(zzn zznVar) {
        zza();
        this.zza.zzi().zza(zznVar, this.zza.zzi().zzg());
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getAppInstanceId(zzn zznVar) {
        zza();
        this.zza.zzq().zza(new zzi(this, zznVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getCachedAppInstanceId(zzn zznVar) {
        zza();
        zza(zznVar, this.zza.zzh().zzah());
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getConditionalUserProperties(String str, String str2, zzn zznVar) {
        zza();
        this.zza.zzq().zza(new zzj(this, zznVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getCurrentScreenClass(zzn zznVar) {
        zza();
        zza(zznVar, this.zza.zzh().zzak());
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getCurrentScreenName(zzn zznVar) {
        zza();
        zza(zznVar, this.zza.zzh().zzaj());
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getGmpAppId(zzn zznVar) {
        zza();
        zza(zznVar, this.zza.zzh().zzal());
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getMaxUserProperties(String str, zzn zznVar) {
        zza();
        this.zza.zzh();
        Preconditions.checkNotEmpty(str);
        this.zza.zzi().zza(zznVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getTestFlag(zzn zznVar, int i) {
        zza();
        if (i == 0) {
            this.zza.zzi().zza(zznVar, this.zza.zzh().zzad());
        } else if (i == 1) {
            this.zza.zzi().zza(zznVar, this.zza.zzh().zzae().longValue());
        } else if (i != 2) {
            if (i == 3) {
                this.zza.zzi().zza(zznVar, this.zza.zzh().zzaf().intValue());
            } else if (i != 4) {
            } else {
                this.zza.zzi().zza(zznVar, this.zza.zzh().zzac().booleanValue());
            }
        } else {
            zzkm zzi = this.zza.zzi();
            double doubleValue = this.zza.zzh().zzag().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                zznVar.zza(bundle);
            } catch (RemoteException e) {
                zzi.zzx.zzr().zzi().zza("Error returning double value to wrapper", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void getUserProperties(String str, String str2, boolean z, zzn zznVar) {
        zza();
        this.zza.zzq().zza(new zzk(this, zznVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void initForTests(Map map) {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void initialize(IObjectWrapper iObjectWrapper, zzv zzvVar, long j) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzga zzgaVar = this.zza;
        if (zzgaVar == null) {
            this.zza = zzga.zza(context, zzvVar);
        } else {
            zzgaVar.zzr().zzi().zza("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void isDataCollectionEnabled(zzn zznVar) {
        zza();
        this.zza.zzq().zza(new zzl(this, zznVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        zza();
        this.zza.zzh().zza(str, str2, bundle, z, z2, j);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.measurement.internal.zzan, com.google.android.gms.measurement.internal.zzft] */
    @Override // com.google.android.gms.internal.measurement.zzm
    public void logEventAndBundle(String str, String str2, Bundle bundle, zzn zznVar, long j) {
        zza();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        new zzan(str2, new zzam(bundle), "app", j);
        ?? zzq = this.zza.zzq();
        zzq.zza(new zzh(this, zznVar, zzq, str));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        zza();
        this.zza.zzr().zza(i, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 == null ? null : ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) {
        zza();
        zzhy zzhyVar = this.zza.zzh().zza;
        if (zzhyVar != null) {
            this.zza.zzh().zzab();
            zzhyVar.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) {
        zza();
        zzhy zzhyVar = this.zza.zzh().zza;
        if (zzhyVar != null) {
            this.zza.zzh().zzab();
            zzhyVar.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j) {
        zza();
        zzhy zzhyVar = this.zza.zzh().zza;
        if (zzhyVar != null) {
            this.zza.zzh().zzab();
            zzhyVar.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j) {
        zza();
        zzhy zzhyVar = this.zza.zzh().zza;
        if (zzhyVar != null) {
            this.zza.zzh().zzab();
            zzhyVar.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzn zznVar, long j) {
        zza();
        zzhy zzhyVar = this.zza.zzh().zza;
        Bundle bundle = new Bundle();
        if (zzhyVar != null) {
            this.zza.zzh().zzab();
            zzhyVar.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zznVar.zza(bundle);
        } catch (RemoteException e) {
            this.zza.zzr().zzi().zza("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j) {
        zza();
        zzhy zzhyVar = this.zza.zzh().zza;
        if (zzhyVar != null) {
            this.zza.zzh().zzab();
            zzhyVar.onActivityStarted((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j) {
        zza();
        zzhy zzhyVar = this.zza.zzh().zza;
        if (zzhyVar != null) {
            this.zza.zzh().zzab();
            zzhyVar.onActivityStopped((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void performAction(Bundle bundle, zzn zznVar, long j) {
        zza();
        zznVar.zza(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void registerOnMeasurementEventListener(zzs zzsVar) {
        zza();
        zzgz zzgzVar = this.zzb.get(Integer.valueOf(zzsVar.zza()));
        zzb zzbVar = zzgzVar;
        if (zzgzVar == null) {
            zzbVar = new zzb(zzsVar);
            this.zzb.put(Integer.valueOf(zzsVar.zza()), zzbVar);
        }
        this.zza.zzh().zza(zzbVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void resetAnalyticsData(long j) {
        zza();
        this.zza.zzh().zzd(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setConditionalUserProperty(Bundle bundle, long j) {
        zza();
        if (bundle == null) {
            this.zza.zzr().zzf().zza("Conditional user property must not be null");
        } else {
            this.zza.zzh().zza(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) {
        zza();
        this.zza.zzv().zza((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setDataCollectionEnabled(boolean z) {
        zza();
        this.zza.zzh().zzb(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setEventInterceptor(zzs zzsVar) {
        zza();
        zzhb zzh = this.zza.zzh();
        zza zzaVar = new zza(zzsVar);
        zzh.zzb();
        zzh.zzw();
        zzh.zzq().zza(new zzhj(zzh, zzaVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setInstanceIdProvider(zzt zztVar) {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setMeasurementEnabled(boolean z, long j) {
        zza();
        this.zza.zzh().zza(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setMinimumSessionDuration(long j) {
        zza();
        this.zza.zzh().zza(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setSessionTimeoutDuration(long j) {
        zza();
        this.zza.zzh().zzb(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setUserId(String str, long j) {
        zza();
        this.zza.zzh().zza(null, "_id", str, true, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) {
        zza();
        this.zza.zzh().zza(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public void unregisterOnMeasurementEventListener(zzs zzsVar) {
        zza();
        zzgz remove = this.zzb.remove(Integer.valueOf(zzsVar.zza()));
        zzb zzbVar = remove;
        if (remove == null) {
            zzbVar = new zzb(zzsVar);
        }
        this.zza.zzh().zzb(zzbVar);
    }
}
