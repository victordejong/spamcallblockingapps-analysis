package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmw.class */
final class zzmw implements Runnable {
    private final /* synthetic */ zzms zzbdl;
    private final /* synthetic */ IOException zzber;

    public zzmw(zzms zzmsVar, IOException iOException) {
        this.zzbdl = zzmsVar;
        this.zzber = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzmz zzmzVar;
        zzmzVar = this.zzbdl.zzbdn;
        zzmzVar.zzb(this.zzber);
    }
}
