package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abd.class */
public final class abd implements Runnable {

    /* renamed from: a */
    private zzbcb f39798a;

    /* renamed from: b */
    private boolean f39799b = false;

    public abd(zzbcb zzbcbVar) {
        this.f39798a = zzbcbVar;
    }

    /* renamed from: c */
    private final void m18911c() {
        zzj.zzegq.removeCallbacks(this);
        zzj.zzegq.postDelayed(this, 250L);
    }

    /* renamed from: a */
    public final void m18913a() {
        this.f39799b = true;
        this.f39798a.m13852m();
    }

    /* renamed from: b */
    public final void m18912b() {
        this.f39799b = false;
        m18911c();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f39799b) {
            this.f39798a.m13852m();
            m18911c();
        }
    }
}
