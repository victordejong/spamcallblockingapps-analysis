package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.C2249b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyw.class */
public class dyw extends C2249b {

    /* renamed from: a */
    private final Object f16152a = new Object();

    /* renamed from: b */
    private C2249b f16153b;

    @Override // com.google.android.gms.ads.C2249b
    /* renamed from: a */
    public void mo8042a() {
        synchronized (this.f16152a) {
            if (this.f16153b != null) {
                this.f16153b.mo8042a();
            }
        }
    }

    @Override // com.google.android.gms.ads.C2249b
    /* renamed from: a */
    public void mo8041a(int i) {
        synchronized (this.f16152a) {
            if (this.f16153b != null) {
                this.f16153b.mo8041a(i);
            }
        }
    }

    /* renamed from: a */
    public final void m8165a(C2249b c2249b) {
        synchronized (this.f16152a) {
            this.f16153b = c2249b;
        }
    }

    @Override // com.google.android.gms.ads.C2249b
    /* renamed from: b */
    public void mo8164b() {
        synchronized (this.f16152a) {
            if (this.f16153b != null) {
                this.f16153b.mo8164b();
            }
        }
    }

    @Override // com.google.android.gms.ads.C2249b
    /* renamed from: c */
    public void mo1190c() {
        synchronized (this.f16152a) {
            if (this.f16153b != null) {
                this.f16153b.mo1190c();
            }
        }
    }

    @Override // com.google.android.gms.ads.C2249b
    /* renamed from: d */
    public void mo8163d() {
        synchronized (this.f16152a) {
            if (this.f16153b != null) {
                this.f16153b.mo8163d();
            }
        }
    }
}
