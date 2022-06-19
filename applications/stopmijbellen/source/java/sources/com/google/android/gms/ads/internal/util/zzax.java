package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbew;
import com.google.android.gms.internal.ads.zzbim;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzax.class */
public final class zzax extends zzbim {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzba zzb;

    public zzax(zzba zzbaVar, Context context) {
        this.zzb = zzbaVar;
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbin
    public final void zze(zzbew zzbewVar) {
        if (zzbewVar == null) {
            return;
        }
        this.zzb.zzi(this.zza, zzbewVar.zzb, true, true);
    }
}
