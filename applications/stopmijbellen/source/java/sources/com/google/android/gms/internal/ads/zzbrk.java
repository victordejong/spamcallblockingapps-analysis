package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrk.class */
final class zzbrk implements zzbrt<zzcop> {
    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* bridge */ /* synthetic */ void zza(zzcop zzcopVar, Map map) {
        zzcop zzcopVar2 = zzcopVar;
        if (zzcopVar2.zzL() != null) {
            zzcopVar2.zzL().zza();
        }
        zzl zzN = zzcopVar2.zzN();
        if (zzN != null) {
            zzN.zzb();
            return;
        }
        zzl zzO = zzcopVar2.zzO();
        if (zzO != null) {
            zzO.zzb();
        } else {
            zzciz.zzj("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
