package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzec.class */
final class zzec implements Runnable {
    private final /* synthetic */ Context zzxl;

    public zzec(zzea zzeaVar, Context context) {
        this.zzxl = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdsy zzdsyVar;
        zzds zzdsVar;
        try {
            zzdsVar = zzea.zzxa;
            zzdsVar.zzb(this.zzxl);
        } catch (Exception e) {
            zzdsyVar = zzea.zzxc;
            zzdsyVar.zza(2019, -1L, e);
        }
    }
}
