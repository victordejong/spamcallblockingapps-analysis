package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpd.class */
public final /* synthetic */ class zzbpd implements zzbpr {
    public static final zzbpr zza = new zzbpd();

    private zzbpd() {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zza(Object obj, Map map) {
        zzcnu zzcnuVar = (zzcnu) obj;
        zzbpr<zzcml> zzbprVar = zzbpq.zza;
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            zzaas zzU = zzcnuVar.zzU();
            if (zzU == null) {
                return;
            }
            zzU.zzb().zzk(parseInt, parseInt2, parseInt3);
        } catch (NumberFormatException e) {
            zzcgt.zzi("Could not parse touch parameters from gmsg.");
        }
    }
}
