package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q20.class */
public final class q20 {

    /* renamed from: a */
    private boolean f28289a = false;

    /* renamed from: b */
    private boolean f28290b = false;

    /* renamed from: c */
    private float f28291c = 0.0f;

    /* renamed from: d */
    private final AtomicBoolean f28292d = new AtomicBoolean(false);

    /* renamed from: a */
    public final void m12048a(boolean z) {
        synchronized (this) {
            this.f28289a = z;
            this.f28292d.set(true);
        }
    }

    /* renamed from: b */
    public final void m12047b(boolean z, float f) {
        synchronized (this) {
            this.f28290b = z;
            this.f28291c = f;
        }
    }

    /* renamed from: c */
    public final boolean m12046c(boolean z) {
        synchronized (this) {
            if (this.f28292d.get()) {
                return this.f28289a;
            }
            return z;
        }
    }

    /* renamed from: d */
    public final boolean m12045d() {
        boolean z;
        synchronized (this) {
            z = this.f28290b;
        }
        return z;
    }

    /* renamed from: e */
    public final float m12044e() {
        float f;
        synchronized (this) {
            f = this.f28291c;
        }
        return f;
    }
}
