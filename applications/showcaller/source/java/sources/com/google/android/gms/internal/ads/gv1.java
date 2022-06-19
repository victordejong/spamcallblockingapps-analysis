package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gv1.class */
public final class gv1 {

    /* renamed from: a */
    private int f23708a = 0;

    /* renamed from: b */
    private long f23709b = 0;

    /* renamed from: c */
    private long f23710c = 0;

    /* renamed from: d */
    private long f23711d = 0;

    /* renamed from: e */
    private final Object f23712e = new Object();

    /* renamed from: f */
    private final Object f23713f = new Object();

    /* renamed from: g */
    private final Object f23714g = new Object();

    /* renamed from: h */
    private final Object f23715h = new Object();

    /* renamed from: a */
    public final void m14806a(int i) {
        synchronized (this.f23712e) {
            this.f23708a = i;
        }
    }

    /* renamed from: b */
    public final int m14805b() {
        int i;
        synchronized (this.f23712e) {
            i = this.f23708a;
        }
        return i;
    }

    /* renamed from: c */
    public final void m14804c(long j) {
        synchronized (this.f23713f) {
            this.f23709b = j;
        }
    }

    /* renamed from: d */
    public final long m14803d() {
        long j;
        synchronized (this.f23713f) {
            j = this.f23709b;
        }
        return j;
    }

    /* renamed from: e */
    public final void m14802e(long j) {
        synchronized (this) {
            synchronized (this.f23714g) {
                this.f23710c = j;
            }
        }
    }

    /* renamed from: f */
    public final long m14801f() {
        long j;
        synchronized (this) {
            synchronized (this.f23714g) {
                j = this.f23710c;
            }
        }
        return j;
    }

    /* renamed from: g */
    public final void m14800g(long j) {
        synchronized (this) {
            synchronized (this.f23715h) {
                this.f23711d = j;
            }
        }
    }

    /* renamed from: h */
    public final long m14799h() {
        long j;
        synchronized (this) {
            synchronized (this.f23715h) {
                j = this.f23711d;
            }
        }
        return j;
    }
}
