package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzee;
import com.mopub.common.Constants;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbuz.class */
public final class zzbuz {
    private static zzbuz zza;
    private final AtomicBoolean zzb = new AtomicBoolean(false);

    public static zzbuz zza() {
        if (zza == null) {
            zza = new zzbuz();
        }
        return zza;
    }

    public final Thread zzb(Context context, String str) {
        if (!this.zzb.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: com.google.android.gms.internal.ads.zzbux
            private final zzbuz zza;
            private final Context zzb;
            private final String zzc;

            {
                this.zza = this;
                this.zzb = context;
                this.zzc = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = this.zzb;
                String str2 = this.zzc;
                zzbjl.zza(context2);
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) zzbet.zzc().zzc(zzbjl.zzac)).booleanValue());
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzaj)).booleanValue()) {
                    bundle.putString("ad_storage", Constants.TAS_DENIED);
                    bundle.putString("analytics_storage", Constants.TAS_DENIED);
                }
                try {
                    ((zzcog) zzcgx.zza(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", zzbuy.zza)).zze(new ObjectWrapper(context2), new zzbuw(zzee.zzg(context2, "FA-Ads", "am", str2, bundle).zzd()));
                } catch (RemoteException | zzcgw | NullPointerException e) {
                    zzcgt.zzl("#007 Could not call remote method.", e);
                }
            }
        });
        thread.start();
        return thread;
    }
}
