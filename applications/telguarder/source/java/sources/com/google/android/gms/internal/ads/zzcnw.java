package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcnw.class */
final class zzcnw implements zzbua {
    private final Context context;
    private final zzaxc zzbqv;

    public zzcnw(Context context, zzaxc zzaxcVar) {
        this.context = context;
        this.zzbqv = zzaxcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnlVar) {
        if (!TextUtils.isEmpty(zzdnlVar.zzhks.zzess.zzdwy)) {
            this.zzbqv.zza(this.context, zzdnlVar.zzhkr.zzfwy.zzhkw);
            this.zzbqv.zzi(this.context, zzdnlVar.zzhks.zzess.zzdwy);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatqVar) {
    }
}
