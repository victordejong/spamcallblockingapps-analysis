package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzboy.class */
public final class zzboy implements zzdzl<Void> {
    private final /* synthetic */ zzbou zzfxi;

    public zzboy(zzbou zzbouVar) {
        this.zzfxi = zzbouVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(@NullableDecl Void r4) {
        zzbvu zzbvuVar;
        zzbvuVar = this.zzfxi.zzfxc;
        zzbvuVar.zzbh(true);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzbvu zzbvuVar;
        zzbvuVar = this.zzfxi.zzfxc;
        zzbvuVar.zzbh(false);
    }
}
