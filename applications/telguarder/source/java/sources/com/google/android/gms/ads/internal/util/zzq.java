package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzazb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzq.class */
public final class zzq implements zzazb {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzeev;

    public zzq(zzj zzjVar, Context context, String str) {
        this.val$context = context;
        this.zzeev = str;
    }

    @Override // com.google.android.gms.internal.ads.zzazb
    public final void zzel(String str) {
        zzr.zzkr();
        zzj.zzb(this.val$context, this.zzeev, str);
    }
}
