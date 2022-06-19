package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxa.class */
public final class zzbxa {
    private static zzbxa zza;
    private final AtomicBoolean zzb = new AtomicBoolean(false);

    public static zzbxa zza() {
        if (zza == null) {
            zza = new zzbxa();
        }
        return zza;
    }

    public final Thread zzb(final Context context, final String str) {
        if (!this.zzb.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbwz
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                String str2 = str;
                zzblj.zzc(context2);
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) zzbgq.zzc().zzb(zzblj.zzac)).booleanValue());
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzaj)).booleanValue()) {
                    bundle.putString("ad_storage", "denied");
                    bundle.putString("analytics_storage", "denied");
                }
                try {
                    ((zzcqj) zzcjd.zzb(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", zzbwy.zza)).zze(ObjectWrapper.wrap(context2), new zzbwx(AppMeasurementSdk.getInstance(context2, "FA-Ads", "am", str2, bundle)));
                } catch (RemoteException | zzcjc | NullPointerException e) {
                    zzciz.zzl("#007 Could not call remote method.", e);
                }
            }
        });
        thread.start();
        return thread;
    }
}
