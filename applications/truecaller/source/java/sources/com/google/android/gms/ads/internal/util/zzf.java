package com.google.android.gms.ads.internal.util;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzfla;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzf.class */
public final class zzf extends zzfla {
    public zzf(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            zzt.zzg().zzk(e, "AdMobHandler.handleMessage");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfla
    public final void zza(Message message) {
        try {
            super.zza(message);
        } catch (Throwable th) {
            zzt.zzc();
            zzs.zzO(zzt.zzg().zzq(), th);
            throw th;
        }
    }
}
