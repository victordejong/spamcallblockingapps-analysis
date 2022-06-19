package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.internal.ads.zzdtt;
import com.google.android.gms.internal.ads.zzdua;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtm.class */
public final class zzdtm {
    private final Context context;
    private final Looper zzhsz;

    public zzdtm(Context context, Looper looper) {
        this.context = context;
        this.zzhsz = looper;
    }

    public final void zzhf(String str) {
        new zzdtl(this.context, this.zzhsz, (zzdua) ((zzelb) zzdua.zzayc().zzhi(this.context.getPackageName()).zzb(zzdua.zza.BLOCKED_IMPRESSION).zza(zzdtt.zzaya().zzhh(str).zzb(zzdtt.zza.BLOCKED_REASON_BACKGROUND)).zzbiw())).zzaxv();
    }
}
