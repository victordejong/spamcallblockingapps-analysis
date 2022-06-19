package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ij0.class */
final class ij0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ MediaPlayer f24298d;

    /* renamed from: e */
    final /* synthetic */ zzcig f24299e;

    public ij0(zzcig zzcigVar, MediaPlayer mediaPlayer) {
        this.f24299e = zzcigVar;
        this.f24298d = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rj0 rj0Var;
        rj0 rj0Var2;
        zzcig.m8057K(this.f24299e, this.f24298d);
        rj0Var = this.f24299e.f33875v;
        if (rj0Var != null) {
            rj0Var2 = this.f24299e.f33875v;
            rj0Var2.mo8045b();
        }
    }
}
