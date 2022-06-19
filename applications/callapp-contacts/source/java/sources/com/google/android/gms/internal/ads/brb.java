package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brb.class */
public final class brb {

    /* renamed from: c */
    private int f44531c = 0;

    /* renamed from: a */
    long f44529a = 0;

    /* renamed from: d */
    private long f44532d = 0;

    /* renamed from: e */
    private long f44533e = 0;

    /* renamed from: f */
    private final Object f44534f = new Object();

    /* renamed from: b */
    final Object f44530b = new Object();

    /* renamed from: g */
    private final Object f44535g = new Object();

    /* renamed from: h */
    private final Object f44536h = new Object();

    /* renamed from: a */
    public final int m17657a() {
        int i;
        synchronized (this.f44534f) {
            i = this.f44531c;
        }
        return i;
    }

    /* renamed from: a */
    public final void m17656a(int i) {
        synchronized (this.f44534f) {
            this.f44531c = i;
        }
    }

    /* renamed from: a */
    public final void m17655a(long j) {
        synchronized (this) {
            synchronized (this.f44535g) {
                this.f44532d = j;
            }
        }
    }

    /* renamed from: b */
    public final long m17654b() {
        long j;
        synchronized (this.f44530b) {
            j = this.f44529a;
        }
        return j;
    }

    /* renamed from: b */
    public final void m17653b(long j) {
        synchronized (this) {
            synchronized (this.f44536h) {
                this.f44533e = j;
            }
        }
    }

    /* renamed from: c */
    public final long m17652c() {
        long j;
        synchronized (this) {
            synchronized (this.f44535g) {
                j = this.f44532d;
            }
        }
        return j;
    }

    /* renamed from: d */
    public final long m17651d() {
        long j;
        synchronized (this) {
            synchronized (this.f44536h) {
                j = this.f44533e;
            }
        }
        return j;
    }
}
