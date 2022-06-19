package com.google.android.gms.internal.ads;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqu.class */
public final class zzbqu implements zzbrt<Object> {
    private final zzbqv zza;

    public zzbqu(zzbqv zzbqvVar) {
        this.zza = zzbqvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get(AppMeasurementSdk.ConditionalUserProperty.NAME);
        if (str == null) {
            zzciz.zzj("App event with no name parameter.");
        } else {
            this.zza.zzbL(str, map.get("info"));
        }
    }
}
