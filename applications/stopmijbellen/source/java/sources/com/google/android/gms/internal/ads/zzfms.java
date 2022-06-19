package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.ShowFirstParty;
@ShowFirstParty
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfms.class */
public final class zzfms {
    private final Context zza;
    private final Looper zzb;

    public zzfms(Context context, Looper looper) {
        this.zza = context;
        this.zzb = looper;
    }

    public final void zza(String str) {
        zzfng zza = zzfni.zza();
        zza.zza(this.zza.getPackageName());
        zza.zzc(2);
        zzfnd zza2 = zzfne.zza();
        zza2.zza(str);
        zza2.zzb(2);
        zza.zzb(zza2);
        new zzfmt(this.zza, this.zzb, zza.zzah()).zza();
    }
}
