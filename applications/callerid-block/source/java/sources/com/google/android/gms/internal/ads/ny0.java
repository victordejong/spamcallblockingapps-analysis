package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ny0.class */
public final class ny0 {

    /* renamed from: a */
    private int f7807a = 0;

    /* renamed from: b */
    private long f7808b = 0;

    /* renamed from: c */
    private long f7809c = 0;

    /* renamed from: d */
    private long f7810d = 0;

    /* renamed from: e */
    private final Object f7811e = new Object();

    /* renamed from: f */
    private final Object f7812f = new Object();

    /* renamed from: g */
    private final Object f7813g = new Object();

    /* renamed from: h */
    private final Object f7814h = new Object();

    /* renamed from: a */
    public final void m6377a(int i) {
        synchronized (this.f7811e) {
            this.f7807a = i;
        }
    }

    /* renamed from: b */
    public final int m6376b() {
        int i;
        synchronized (this.f7811e) {
            i = this.f7807a;
        }
        return i;
    }

    /* renamed from: c */
    public final void m6375c(long j) {
        synchronized (this.f7812f) {
            this.f7808b = j;
        }
    }

    /* renamed from: d */
    public final long m6374d() {
        long j;
        synchronized (this.f7812f) {
            j = this.f7808b;
        }
        return j;
    }

    /* renamed from: e */
    public final void m6373e(long j) {
        synchronized (this) {
            synchronized (this.f7813g) {
                this.f7809c = j;
            }
        }
    }

    /* renamed from: f */
    public final long m6372f() {
        long j;
        synchronized (this) {
            synchronized (this.f7813g) {
                j = this.f7809c;
            }
        }
        return j;
    }

    /* renamed from: g */
    public final void m6371g(long j) {
        synchronized (this) {
            synchronized (this.f7814h) {
                this.f7810d = j;
            }
        }
    }

    /* renamed from: h */
    public final long m6370h() {
        long j;
        synchronized (this) {
            synchronized (this.f7814h) {
                j = this.f7810d;
            }
        }
        return j;
    }
}
