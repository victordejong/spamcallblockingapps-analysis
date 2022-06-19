package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazv.class */
public final class zzazv implements zzdzl<Object> {
    private final /* synthetic */ String zzeil;

    public zzazv(String str) {
        this.zzeil = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void onSuccess(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzr.zzkv().zza(th, this.zzeil);
    }
}
