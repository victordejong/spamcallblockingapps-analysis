package com.google.android.gms.ads.internal.util;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzm.class */
public final class zzm implements Runnable {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzt zzb;

    public zzm(zzt zztVar, Context context) {
        this.zzb = zztVar;
        this.zza = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.zzb.zzf;
        synchronized (obj) {
            this.zzb.zzg = zzt.zzV(this.zza);
            obj2 = this.zzb.zzf;
            obj2.notifyAll();
        }
    }
}
