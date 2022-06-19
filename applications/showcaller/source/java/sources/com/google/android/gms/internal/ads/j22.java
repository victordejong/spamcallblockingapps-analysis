package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.AbstractC5629f;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j22.class */
public final class j22 implements AbstractC5629f {

    /* renamed from: a */
    private AbstractC5629f f24766a;

    /* renamed from: a */
    public final void m14179a(AbstractC5629f abstractC5629f) {
        synchronized (this) {
            this.f24766a = abstractC5629f;
        }
    }

    @Override // com.google.android.gms.ads.internal.AbstractC5629f
    /* renamed from: b */
    public final void mo8992b() {
        synchronized (this) {
            AbstractC5629f abstractC5629f = this.f24766a;
            if (abstractC5629f != null) {
                abstractC5629f.mo8992b();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.AbstractC5629f
    /* renamed from: c */
    public final void mo8991c() {
        synchronized (this) {
            AbstractC5629f abstractC5629f = this.f24766a;
            if (abstractC5629f != null) {
                abstractC5629f.mo8991c();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.AbstractC5629f
    /* renamed from: d */
    public final void mo8990d(View view) {
        synchronized (this) {
            AbstractC5629f abstractC5629f = this.f24766a;
            if (abstractC5629f != null) {
                abstractC5629f.mo8990d(view);
            }
        }
    }
}
