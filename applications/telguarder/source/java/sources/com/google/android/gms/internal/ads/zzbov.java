package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbov.class */
public final class zzbov implements zzdzl<zzatq> {
    private final /* synthetic */ zzbou zzfxi;

    public zzbov(zzbou zzbouVar) {
        this.zzfxi = zzbouVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(@NullableDecl zzatq zzatqVar) {
        zzbvu zzbvuVar;
        zzbvuVar = this.zzfxi.zzfxc;
        zzbvuVar.zzbg(true);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzbvu zzbvuVar;
        zzbvuVar = this.zzfxi.zzfxc;
        zzbvuVar.zzbg(false);
    }
}
