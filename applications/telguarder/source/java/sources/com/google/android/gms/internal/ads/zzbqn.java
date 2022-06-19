package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqn.class */
final class zzbqn implements zzdzl<Boolean> {
    private final /* synthetic */ zzbql zzfye;

    public zzbqn(zzbql zzbqlVar) {
        this.zzfye = zzbqlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(@NullableDecl Boolean bool) {
        zzbsd zzbsdVar;
        zzbsdVar = this.zzfye.zzfxz;
        zzbsdVar.onAdImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
    }
}
