package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbao.class */
public final class zzbao implements Runnable {
    private final /* synthetic */ zzbam zzejo;
    private final /* synthetic */ MediaPlayer zzejp;

    public zzbao(zzbam zzbamVar, MediaPlayer mediaPlayer) {
        this.zzejo = zzbamVar;
        this.zzejp = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbam.zza(this.zzejo, this.zzejp);
        if (zzbam.zza(this.zzejo) != null) {
            zzbam.zza(this.zzejo).zzfb();
        }
    }
}
