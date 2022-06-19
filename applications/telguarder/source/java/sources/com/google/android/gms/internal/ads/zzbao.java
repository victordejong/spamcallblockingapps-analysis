package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbao.class */
final class zzbao implements Runnable {
    private final /* synthetic */ zzbam zzejo;
    private final /* synthetic */ MediaPlayer zzejp;

    public zzbao(zzbam zzbamVar, MediaPlayer mediaPlayer) {
        this.zzejo = zzbamVar;
        this.zzejp = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbaw zzbawVar;
        zzbaw zzbawVar2;
        this.zzejo.zza(this.zzejp);
        zzbawVar = this.zzejo.zzejm;
        if (zzbawVar != null) {
            zzbawVar2 = this.zzejo.zzejm;
            zzbawVar2.zzfb();
        }
    }
}
