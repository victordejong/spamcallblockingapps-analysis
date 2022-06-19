package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfau.class */
public final class zzfau implements zzfpv<zzeeg, zzfax> {
    public final /* synthetic */ zzfay zza;

    public zzfau(zzfay zzfayVar) {
        this.zza = zzfayVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfpv
    @NullableDecl
    public final /* bridge */ /* synthetic */ zzfax apply(@NullableDecl zzeeg zzeegVar) {
        zzffx zze;
        zzfax zzfaxVar;
        zzciz.zzh("", zzeegVar);
        zze.zza("Failed to get a cache key, reverting to legacy flow.");
        zzfay zzfayVar = this.zza;
        zze = zzfayVar.zze();
        zzfayVar.zzd = new zzfax(null, zze, null);
        zzfaxVar = this.zza.zzd;
        return zzfaxVar;
    }
}
