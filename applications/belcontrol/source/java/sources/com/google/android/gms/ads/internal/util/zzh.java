package com.google.android.gms.ads.internal.util;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzh.class */
public final /* synthetic */ class zzh implements Runnable {
    private final Context zzcle;
    private final String zzdlo;
    private final zzi zzeds;

    public zzh(zzi zziVar, Context context, String str) {
        this.zzeds = zziVar;
        this.zzcle = context;
        this.zzdlo = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeds.zzo(this.zzcle, this.zzdlo);
    }
}
