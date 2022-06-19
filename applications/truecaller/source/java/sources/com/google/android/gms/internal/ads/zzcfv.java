package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfv.class */
public final class zzcfv implements Runnable {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzchl zzb;

    public zzcfv(zzcfw zzcfwVar, Context context, zzchl zzchlVar) {
        this.zza = context;
        this.zzb = zzchlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzb.zzc(AdvertisingIdClient.getAdvertisingIdInfo(this.zza));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.zzb.zzd(e);
            zzcgt.zzg("Exception while getting advertising Id info", e);
        }
    }
}
