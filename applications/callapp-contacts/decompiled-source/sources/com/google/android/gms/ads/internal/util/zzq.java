package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.yr;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzq.class */
public final class zzq implements yr {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzegy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(zzj zzjVar, Context context, String str) {
        this.val$context = context;
        this.zzegy = str;
    }

    @Override // com.google.android.gms.internal.ads.yr
    public final void zzen(String str) {
        zzr.zzkv();
        zzj.zzb(this.val$context, this.zzegy, str);
    }
}
