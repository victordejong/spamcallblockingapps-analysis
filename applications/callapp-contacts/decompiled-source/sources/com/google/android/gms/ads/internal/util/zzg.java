package com.google.android.gms.ads.internal.util;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.cxg;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzg.class */
public final class zzg extends cxg {
    public zzg(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            zzr.zzkz().a(e, "AdMobHandler.handleMessage");
        }
    }

    @Override // com.google.android.gms.internal.ads.cxg
    public final void zzb(Message message) {
        try {
            super.zzb(message);
        } catch (Throwable th) {
            zzr.zzkv();
            zzj.zza(zzr.zzkz().f28528c, th);
            throw th;
        }
    }
}
