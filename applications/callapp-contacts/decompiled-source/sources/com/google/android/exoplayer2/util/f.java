package com.google.android.exoplayer2.util;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final c f22290a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22291b;

    public f() {
        this(c.f22283a);
    }

    public f(c cVar) {
        this.f22290a = cVar;
    }

    public final boolean a() {
        synchronized (this) {
            if (this.f22291b) {
                return false;
            }
            this.f22291b = true;
            notifyAll();
            return true;
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this) {
            z = this.f22291b;
            this.f22291b = false;
        }
        return z;
    }

    public final void c() throws InterruptedException {
        synchronized (this) {
            while (!this.f22291b) {
                wait();
            }
        }
    }

    public final boolean d() {
        boolean z;
        synchronized (this) {
            z = this.f22291b;
        }
        return z;
    }
}
