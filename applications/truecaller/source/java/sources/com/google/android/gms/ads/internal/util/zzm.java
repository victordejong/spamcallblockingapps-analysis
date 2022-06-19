package com.google.android.gms.ads.internal.util;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzm.class */
public final class zzm implements Runnable {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzs zzb;

    public zzm(zzs zzsVar, Context context) {
        this.zzb = zzsVar;
        this.zza = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.zzb.zzf;
        synchronized (obj) {
            this.zzb.zzg = zzs.zzU(this.zza);
            obj2 = this.zzb.zzf;
            obj2.notifyAll();
        }
    }
}
