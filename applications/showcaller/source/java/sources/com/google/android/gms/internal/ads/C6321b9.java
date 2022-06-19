package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.b9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b9.class */
public final class C6321b9 {

    /* renamed from: a */
    private final AbstractC7210z8 f20312a;

    /* renamed from: b */
    private boolean f20313b;

    public C6321b9(AbstractC7210z8 abstractC7210z8) {
        this.f20312a = abstractC7210z8;
    }

    /* renamed from: a */
    public final boolean m16429a() {
        synchronized (this) {
            if (this.f20313b) {
                return false;
            }
            this.f20313b = true;
            notifyAll();
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m16428b() {
        boolean z;
        synchronized (this) {
            z = this.f20313b;
            this.f20313b = false;
        }
        return z;
    }

    /* renamed from: c */
    public final void m16427c() {
        synchronized (this) {
            while (!this.f20313b) {
                wait();
            }
        }
    }

    /* renamed from: d */
    public final void m16426d() {
        synchronized (this) {
            boolean z = false;
            while (!this.f20313b) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    z = true;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: e */
    public final boolean m16425e() {
        boolean z;
        synchronized (this) {
            z = this.f20313b;
        }
        return z;
    }
}
