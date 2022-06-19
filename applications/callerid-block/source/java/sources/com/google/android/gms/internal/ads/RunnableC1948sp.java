package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;
/* renamed from: com.google.android.gms.internal.ads.sp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sp.class */
final class RunnableC1948sp implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MediaPlayer f8523b;

    /* renamed from: c */
    final /* synthetic */ zzbcw f8524c;

    RunnableC1948sp(zzbcw zzbcwVar, MediaPlayer mediaPlayer) {
        this.f8524c = zzbcwVar;
        this.f8523b = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbcw.J(this.f8524c, this.f8523b);
        if (zzbcw.K(this.f8524c) != null) {
            zzbcw.K(this.f8524c).m8110b();
        }
    }
}
