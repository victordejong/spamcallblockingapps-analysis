package com.google.android.exoplayer2.util;
/* renamed from: com.google.android.exoplayer2.util.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/f.class */
public final class C11606f {

    /* renamed from: a */
    private final AbstractC11603c f38674a;

    /* renamed from: b */
    private boolean f38675b;

    public C11606f() {
        this(AbstractC11603c.f38667a);
    }

    public C11606f(AbstractC11603c abstractC11603c) {
        this.f38674a = abstractC11603c;
    }

    /* renamed from: a */
    public final boolean m19898a() {
        synchronized (this) {
            if (this.f38675b) {
                return false;
            }
            this.f38675b = true;
            notifyAll();
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m19897b() {
        boolean z;
        synchronized (this) {
            z = this.f38675b;
            this.f38675b = false;
        }
        return z;
    }

    /* renamed from: c */
    public final void m19896c() throws InterruptedException {
        synchronized (this) {
            while (!this.f38675b) {
                wait();
            }
        }
    }

    /* renamed from: d */
    public final boolean m19895d() {
        boolean z;
        synchronized (this) {
            z = this.f38675b;
        }
        return z;
    }
}
