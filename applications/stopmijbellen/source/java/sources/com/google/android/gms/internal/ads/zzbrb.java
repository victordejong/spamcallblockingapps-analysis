package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzcc;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrb.class */
public final /* synthetic */ class zzbrb implements zzbrt {
    public static final /* synthetic */ zzbrb zza = new zzbrb();

    private /* synthetic */ zzbrb() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map map) {
        zzcpq zzcpqVar = (zzcpq) obj;
        zzbrt<zzcop> zzbrtVar = zzbrs.zza;
        String str = (String) map.get("u");
        if (str == null) {
            zzciz.zzj("URL missing from httpTrack GMSG.");
        } else {
            new zzcc(zzcpqVar.getContext(), ((zzcpy) zzcpqVar).zzp().zza, str).zzb();
        }
    }
}
