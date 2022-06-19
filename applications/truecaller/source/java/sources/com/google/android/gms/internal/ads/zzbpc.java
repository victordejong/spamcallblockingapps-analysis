package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzcb;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpc.class */
public final /* synthetic */ class zzbpc implements zzbpr {
    public static final zzbpr zza = new zzbpc();

    private zzbpc() {
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zza(Object obj, Map map) {
        zzcnn zzcnnVar = (zzcnn) obj;
        zzbpr<zzcml> zzbprVar = zzbpq.zza;
        String str = (String) map.get("u");
        if (str == null) {
            zzcgt.zzi("URL missing from httpTrack GMSG.");
        } else {
            new zzcb(zzcnnVar.getContext(), ((zzcnv) zzcnnVar).zzt().zza, str).zzc();
        }
    }
}
