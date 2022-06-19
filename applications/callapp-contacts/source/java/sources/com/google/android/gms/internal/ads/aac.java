package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aac.class */
final class aac implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ MediaPlayer f39699a;

    /* renamed from: b */
    private final /* synthetic */ zzbbq f39700b;

    public aac(zzbbq zzbbqVar, MediaPlayer mediaPlayer) {
        this.f39700b = zzbbqVar;
        this.f39699a = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        zzbbq.m13879a(this.f39700b, this.f39699a);
        aakVar = this.f39700b.f50152a;
        if (aakVar != null) {
            aakVar2 = this.f39700b.f50152a;
            aakVar2.mo13864b();
        }
    }
}
