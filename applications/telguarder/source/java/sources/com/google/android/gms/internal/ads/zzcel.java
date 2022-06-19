package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcel.class */
public final class zzcel implements zzdvz<zzz, Bitmap> {
    private final /* synthetic */ double zzghh;
    private final /* synthetic */ boolean zzghi;
    private final /* synthetic */ zzcem zzghj;

    public zzcel(zzcem zzcemVar, double d, boolean z) {
        this.zzghj = zzcemVar;
        this.zzghh = d;
        this.zzghi = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final /* synthetic */ Bitmap apply(zzz zzzVar) {
        Bitmap zza;
        zza = this.zzghj.zza(zzzVar.data, this.zzghh, this.zzghi);
        return zza;
    }
}
