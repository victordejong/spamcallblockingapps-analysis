package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abd.class */
final class abd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private zzbcb f23044a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f23045b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abd(zzbcb zzbcbVar) {
        this.f23044a = zzbcbVar;
    }

    private final void c() {
        zzj.zzegq.removeCallbacks(this);
        zzj.zzegq.postDelayed(this, 250L);
    }

    public final void a() {
        this.f23045b = true;
        this.f23044a.m();
    }

    public final void b() {
        this.f23045b = false;
        c();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f23045b) {
            this.f23044a.m();
            c();
        }
    }
}
