package com.google.android.gms.ads.internal.util;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzn.class */
public final class zzn implements Runnable {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzj zzeet;

    public zzn(zzj zzjVar, Context context) {
        this.zzeet = zzjVar;
        this.val$context = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.zzeet.zzeeo;
        synchronized (obj) {
            this.zzeet.zzbit = zzj.zzam(this.val$context);
            obj2 = this.zzeet.zzeeo;
            obj2.notifyAll();
        }
    }
}
