package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbii.class */
public final class zzbii implements zzeqb<zzb> {
    private final zzbig zzfqg;

    public zzbii(zzbig zzbigVar) {
        this.zzfqg = zzbigVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzb) zzeqh.zza(this.zzfqg.zzain(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
