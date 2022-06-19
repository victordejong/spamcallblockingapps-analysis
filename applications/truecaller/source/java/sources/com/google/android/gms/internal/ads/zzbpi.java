package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpi.class */
public final class zzbpi implements zzbpr<zzcml> {
    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcml zzcmlVar, Map map) {
        zzcml zzcmlVar2 = zzcmlVar;
        if (zzcmlVar2.zzay() != null) {
            zzcmlVar2.zzay().zza();
        }
        zzl zzN = zzcmlVar2.zzN();
        if (zzN != null) {
            zzN.zzb();
            return;
        }
        zzl zzO = zzcmlVar2.zzO();
        if (zzO != null) {
            zzO.zzb();
        } else {
            zzcgt.zzi("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
