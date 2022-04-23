package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aac.class */
final class aac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ MediaPlayer f22996a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ zzbbq f22997b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aac(zzbbq zzbbqVar, MediaPlayer mediaPlayer) {
        this.f22997b = zzbbqVar;
        this.f22996a = mediaPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        zzbbq.a(this.f22997b, this.f22996a);
        aakVar = this.f22997b.f28604a;
        if (aakVar != null) {
            aakVar2 = this.f22997b.f28604a;
            aakVar2.b();
        }
    }
}
