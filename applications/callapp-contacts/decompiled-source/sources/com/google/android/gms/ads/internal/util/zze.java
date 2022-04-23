package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.yu;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zze.class */
final class zze extends zza {
    private Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(Context context) {
        this.context = context;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        boolean z;
        try {
            z = AdvertisingIdClient.getIsAdIdFakeForDebugLogging(this.context);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            zzd.zzc("Fail to get isAdIdFakeForDebugLogging", e);
            z = false;
        }
        yu.a(z);
        StringBuilder sb = new StringBuilder(43);
        sb.append("Update ad debug logging enablement as ");
        sb.append(z);
        zzd.zzez(sb.toString());
    }
}
