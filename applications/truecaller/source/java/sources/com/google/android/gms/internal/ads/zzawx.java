package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawx.class */
public final class zzawx {
    private final Object zza = new Object();
    private zzawv zzb = null;
    private boolean zzc = false;

    public final void zza(Context context) {
        synchronized (this.zza) {
            if (!this.zzc) {
                Context applicationContext = context.getApplicationContext();
                Context context2 = applicationContext;
                if (applicationContext == null) {
                    context2 = context;
                }
                Application application = context2 instanceof Application ? (Application) context2 : null;
                if (application == null) {
                    zzcgt.zzi("Can not cast Context to Application");
                    return;
                }
                if (this.zzb == null) {
                    this.zzb = new zzawv();
                }
                this.zzb.zzf(application, context);
                this.zzc = true;
            }
        }
    }

    public final void zzb(zzaww zzawwVar) {
        synchronized (this.zza) {
            if (this.zzb == null) {
                this.zzb = new zzawv();
            }
            this.zzb.zzg(zzawwVar);
        }
    }

    public final void zzc(zzaww zzawwVar) {
        synchronized (this.zza) {
            zzawv zzawvVar = this.zzb;
            if (zzawvVar == null) {
                return;
            }
            zzawvVar.zzh(zzawwVar);
        }
    }

    public final Activity zzd() {
        synchronized (this.zza) {
            zzawv zzawvVar = this.zzb;
            if (zzawvVar != null) {
                return zzawvVar.zzi();
            }
            return null;
        }
    }

    public final Context zze() {
        synchronized (this.zza) {
            zzawv zzawvVar = this.zzb;
            if (zzawvVar != null) {
                return zzawvVar.zzj();
            }
            return null;
        }
    }
}
