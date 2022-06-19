package com.google.android.gms.ads.internal.util;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzfpj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzf.class */
public final class zzf extends zzfpj {
    public zzf(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            zzt.zzo().zzs(e, "AdMobHandler.handleMessage");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfpj
    public final void zza(Message message) {
        try {
            super.zza(message);
        } catch (Throwable th) {
            zzt.zzp();
            zzt.zzP(zzt.zzo().zzc(), th);
            throw th;
        }
    }
}
