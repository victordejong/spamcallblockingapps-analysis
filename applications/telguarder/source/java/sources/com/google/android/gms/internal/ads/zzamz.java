package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamz.class */
public final class zzamz {
    private static zzamz zzdlp;
    private AtomicBoolean zzdlq = new AtomicBoolean(false);

    zzamz() {
    }

    public static zzamz zzut() {
        if (zzdlp == null) {
            zzdlp = new zzamz();
        }
        return zzdlp;
    }

    public final Thread zzc(Context context, String str) {
        if (!this.zzdlq.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: com.google.android.gms.internal.ads.zzamy
            private final Context zzcle;
            private final zzamz zzdln;
            private final String zzdlo;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdln = this;
                this.zzcle = context;
                this.zzdlo = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = this.zzcle;
                String str2 = this.zzdlo;
                zzabp.initialize(context2);
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) zzwr.zzqr().zzd(zzabp.zzcok)).booleanValue());
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcor)).booleanValue()) {
                    bundle.putString("ad_storage", "denied");
                    bundle.putString("analytics_storage", "denied");
                }
                try {
                    ((zzbfv) zzazj.zza(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", zzanb.zzbyi)).zza(ObjectWrapper.wrap(context2), new zzamw(AppMeasurementSdk.getInstance(context2, "FA-Ads", "am", str2, bundle)));
                } catch (RemoteException | zzazl | NullPointerException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        });
        thread.start();
        return thread;
    }
}
