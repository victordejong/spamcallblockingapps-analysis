package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.internal.ads.k9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/k9.class */
public final class C1815k9 {

    /* renamed from: a */
    private boolean f6969a = false;

    /* renamed from: b */
    private boolean f6970b = false;

    /* renamed from: c */
    private float f6971c = 0.0f;

    /* renamed from: d */
    private final AtomicBoolean f6972d = new AtomicBoolean(false);

    /* renamed from: a */
    public final void m6856a(boolean z) {
        synchronized (this) {
            this.f6969a = z;
            this.f6972d.set(true);
        }
    }

    /* renamed from: b */
    public final void m6855b(boolean z, float f) {
        synchronized (this) {
            this.f6970b = z;
            this.f6971c = f;
        }
    }

    /* renamed from: c */
    public final boolean m6854c(boolean z) {
        synchronized (this) {
            if (!this.f6972d.get()) {
                return z;
            }
            return this.f6969a;
        }
    }

    /* renamed from: d */
    public final boolean m6853d() {
        boolean z;
        synchronized (this) {
            z = this.f6970b;
        }
        return z;
    }

    /* renamed from: e */
    public final float m6852e() {
        float f;
        synchronized (this) {
            f = this.f6971c;
        }
        return f;
    }
}
