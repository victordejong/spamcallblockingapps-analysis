package com.google.android.gms.ads.internal.util;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzn.class */
public final class zzn implements Runnable {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzj zzegw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(zzj zzjVar, Context context) {
        this.zzegw = zzjVar;
        this.val$context = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.zzegw.zzegr;
        synchronized (obj) {
            this.zzegw.zzbjd = zzj.zzap(this.val$context);
            obj2 = this.zzegw.zzegr;
            obj2.notifyAll();
        }
    }
}
