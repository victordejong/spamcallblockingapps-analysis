package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdkj.class */
public final class zzdkj implements zzdvz<zzcoc, zzdkl> {
    private final /* synthetic */ zzdkh zzhhr;

    public zzdkj(zzdkh zzdkhVar) {
        this.zzhhr = zzdkhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    @NullableDecl
    public final /* synthetic */ zzdkl apply(@NullableDecl zzcoc zzcocVar) {
        zzdpl zzaut;
        zzdkl zzdklVar;
        zzazk.zzc("", zzcocVar);
        zzd.zzeb("Failed to get a cache key, reverting to legacy flow.");
        zzdkh zzdkhVar = this.zzhhr;
        zzaut = zzdkhVar.zzaut();
        zzdkhVar.zzhhq = new zzdkl(null, zzaut, null);
        zzdklVar = this.zzhhr.zzhhq;
        return zzdklVar;
    }
}
