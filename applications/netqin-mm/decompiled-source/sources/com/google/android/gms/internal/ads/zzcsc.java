package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsc.class */
public final class zzcsc {

    /* renamed from: a */
    public int f26452a = 0;

    /* renamed from: b */
    public long f26453b = 0;

    /* renamed from: c */
    public long f26454c = 0;

    /* renamed from: d */
    public long f26455d = 0;

    /* renamed from: e */
    public final Object f26456e = new Object();

    /* renamed from: f */
    public final Object f26457f = new Object();

    /* renamed from: g */
    public final Object f26458g = new Object();

    /* renamed from: h */
    public final Object f26459h = new Object();

    /* renamed from: a */
    public final int m13898a() {
        int i;
        synchronized (this.f26456e) {
            i = this.f26452a;
        }
        return i;
    }

    /* renamed from: a */
    public final void m13897a(int i) {
        synchronized (this.f26456e) {
            this.f26452a = i;
        }
    }

    /* renamed from: a */
    public final void m13896a(long j) {
        synchronized (this.f26457f) {
            this.f26453b = j;
        }
    }

    /* renamed from: b */
    public final long m13895b() {
        long j;
        synchronized (this.f26457f) {
            j = this.f26453b;
        }
        return j;
    }

    /* renamed from: b */
    public final void m13894b(long j) {
        synchronized (this) {
            synchronized (this.f26459h) {
                this.f26455d = j;
            }
        }
    }

    /* renamed from: c */
    public final long m13893c() {
        long j;
        synchronized (this) {
            synchronized (this.f26458g) {
                j = this.f26454c;
            }
        }
        return j;
    }

    /* renamed from: c */
    public final void m13892c(long j) {
        synchronized (this) {
            synchronized (this.f26458g) {
                this.f26454c = j;
            }
        }
    }

    /* renamed from: d */
    public final long m13891d() {
        long j;
        synchronized (this) {
            synchronized (this.f26459h) {
                j = this.f26455d;
            }
        }
        return j;
    }
}
