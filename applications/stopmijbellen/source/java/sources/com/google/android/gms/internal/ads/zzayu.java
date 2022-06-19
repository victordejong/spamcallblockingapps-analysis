package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayu.class */
public final class zzayu {
    private final Object zza = new Object();
    @GuardedBy("activityTrackerLock")
    private zzays zzb = null;
    @GuardedBy("activityTrackerLock")
    private boolean zzc = false;

    public final Activity zza() {
        synchronized (this.zza) {
            zzays zzaysVar = this.zzb;
            if (zzaysVar != null) {
                return zzaysVar.zza();
            }
            return null;
        }
    }

    public final Context zzb() {
        synchronized (this.zza) {
            zzays zzaysVar = this.zzb;
            if (zzaysVar != null) {
                return zzaysVar.zzb();
            }
            return null;
        }
    }

    public final void zzc(zzayt zzaytVar) {
        synchronized (this.zza) {
            if (this.zzb == null) {
                this.zzb = new zzays();
            }
            this.zzb.zzf(zzaytVar);
        }
    }

    public final void zzd(Context context) {
        synchronized (this.zza) {
            if (!this.zzc) {
                Context applicationContext = context.getApplicationContext();
                Context context2 = applicationContext;
                if (applicationContext == null) {
                    context2 = context;
                }
                Application application = context2 instanceof Application ? (Application) context2 : null;
                if (application == null) {
                    zzciz.zzj("Can not cast Context to Application");
                    return;
                }
                if (this.zzb == null) {
                    this.zzb = new zzays();
                }
                this.zzb.zzg(application, context);
                this.zzc = true;
            }
        }
    }

    public final void zze(zzayt zzaytVar) {
        synchronized (this.zza) {
            zzays zzaysVar = this.zzb;
            if (zzaysVar == null) {
                return;
            }
            zzaysVar.zzh(zzaytVar);
        }
    }
}
