package com.google.android.exoplayer2.util;
/* renamed from: com.google.android.exoplayer2.util.i */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/i.class */
public final class C5516i {

    /* renamed from: a */
    private boolean f17890a;

    /* renamed from: a */
    public void m18795a() {
        synchronized (this) {
            while (!this.f17890a) {
                wait();
            }
        }
    }

    /* renamed from: b */
    public boolean m18794b() {
        boolean z;
        synchronized (this) {
            z = this.f17890a;
            this.f17890a = false;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m18793c() {
        boolean z;
        synchronized (this) {
            z = this.f17890a;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m18792d() {
        synchronized (this) {
            if (this.f17890a) {
                return false;
            }
            this.f17890a = true;
            notifyAll();
            return true;
        }
    }
}
