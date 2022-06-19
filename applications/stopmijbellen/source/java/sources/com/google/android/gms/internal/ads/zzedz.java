package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedz.class */
public final class zzedz implements zzdhm {
    private final Context zza;
    private final zzchh zzb;

    public zzedz(Context context, zzchh zzchhVar) {
        this.zza = context;
        this.zzb = zzchhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zzd(zzcdq zzcdqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zze(zzfdz zzfdzVar) {
        if (!TextUtils.isEmpty(zzfdzVar.zzb.zzb.zzd)) {
            this.zzb.zzp(this.zza, zzfdzVar.zza.zza.zzd);
            this.zzb.zzl(this.zza, zzfdzVar.zzb.zzb.zzd);
        }
    }
}
