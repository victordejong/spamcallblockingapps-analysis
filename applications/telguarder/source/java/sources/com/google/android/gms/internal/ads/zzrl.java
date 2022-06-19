package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrl.class */
public final class zzrl {
    private final Object zzbtc = new Object();
    private zzrk zzbtd = null;
    private boolean zzbte = false;

    public final Activity getActivity() {
        synchronized (this.zzbtc) {
            zzrk zzrkVar = this.zzbtd;
            if (zzrkVar != null) {
                return zzrkVar.getActivity();
            }
            return null;
        }
    }

    public final Context getContext() {
        synchronized (this.zzbtc) {
            zzrk zzrkVar = this.zzbtd;
            if (zzrkVar != null) {
                return zzrkVar.getContext();
            }
            return null;
        }
    }

    public final void initialize(Context context) {
        synchronized (this.zzbtc) {
            if (!this.zzbte) {
                Application application = null;
                Context applicationContext = context.getApplicationContext();
                Context context2 = applicationContext;
                if (applicationContext == null) {
                    context2 = context;
                }
                if (context2 instanceof Application) {
                    application = (Application) context2;
                }
                if (application == null) {
                    zzd.zzex("Can not cast Context to Application");
                    return;
                }
                if (this.zzbtd == null) {
                    this.zzbtd = new zzrk();
                }
                this.zzbtd.zza(application, context);
                this.zzbte = true;
            }
        }
    }

    public final void zza(zzrm zzrmVar) {
        synchronized (this.zzbtc) {
            if (this.zzbtd == null) {
                this.zzbtd = new zzrk();
            }
            this.zzbtd.zza(zzrmVar);
        }
    }

    public final void zzb(zzrm zzrmVar) {
        synchronized (this.zzbtc) {
            zzrk zzrkVar = this.zzbtd;
            if (zzrkVar == null) {
                return;
            }
            zzrkVar.zzb(zzrmVar);
        }
    }
}
