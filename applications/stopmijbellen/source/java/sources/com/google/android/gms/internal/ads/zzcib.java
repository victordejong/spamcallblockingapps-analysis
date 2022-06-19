package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcib.class */
public final class zzcib implements Runnable {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzcjr zzb;

    public zzcib(zzcic zzcicVar, Context context, zzcjr zzcjrVar) {
        this.zza = context;
        this.zzb = zzcjrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzb.zzd(AdvertisingIdClient.getAdvertisingIdInfo(this.zza));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.zzb.zze(e);
            zzciz.zzh("Exception while getting advertising Id info", e);
        }
    }
}
