package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayl.class */
public final class zzayl implements Runnable {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzbaa zzebs;

    public zzayl(zzayi zzayiVar, Context context, zzbaa zzbaaVar) {
        this.val$context = context;
        this.zzebs = zzbaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzebs.set(AdvertisingIdClient.getAdvertisingIdInfo(this.val$context));
        } catch (GooglePlayServicesRepairableException | GooglePlayServicesNotAvailableException | IOException | IllegalStateException e) {
            this.zzebs.setException(e);
            zzazk.zzc("Exception while getting advertising Id info", e);
        }
    }
}
