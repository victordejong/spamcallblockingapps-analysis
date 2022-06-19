package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahv.class */
final class zzahv implements zzaif<zzbeb> {
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbebVar, Map map) {
        zzbeb zzbebVar2 = zzbebVar;
        if (zzbebVar2.zzadl() != null) {
            zzbebVar2.zzadl().zzmt();
        }
        zzc zzact = zzbebVar2.zzact();
        if (zzact != null) {
            zzact.close();
            return;
        }
        zzc zzacu = zzbebVar2.zzacu();
        if (zzacu != null) {
            zzacu.close();
        } else {
            zzd.zzex("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
