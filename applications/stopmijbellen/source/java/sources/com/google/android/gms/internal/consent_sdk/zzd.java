package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzd.class */
public abstract class zzd {
    private static zzd zza;

    public static zzd zza(Context context) {
        zzd zzdVar;
        synchronized (zzd.class) {
            try {
                if (zza == null) {
                    zzag zzagVar = new zzag(null);
                    zzagVar.zzb((Application) context.getApplicationContext());
                    zza = zzagVar.zza();
                }
                zzdVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzdVar;
    }

    public abstract zzk zzb();

    public abstract zzba zzc();
}
