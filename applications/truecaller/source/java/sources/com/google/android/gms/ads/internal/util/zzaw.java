package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbcz;
import com.google.android.gms.internal.ads.zzbgp;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaw.class */
public final class zzaw extends zzbgp {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzaz zzb;

    public zzaw(zzaz zzazVar, Context context) {
        this.zzb = zzazVar;
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zze(zzbcz zzbczVar) {
        if (zzbczVar == null) {
            return;
        }
        this.zzb.zzn(this.zza, zzbczVar.zzb, true, true);
    }
}
