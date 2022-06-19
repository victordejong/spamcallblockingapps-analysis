package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bmg.class */
public final class bmg {

    /* renamed from: a */
    private int f11527a = 0;

    /* renamed from: b */
    private long f11528b = 0;

    /* renamed from: c */
    private long f11529c = 0;

    /* renamed from: d */
    private long f11530d = 0;

    /* renamed from: e */
    private final Object f11531e = new Object();

    /* renamed from: f */
    private final Object f11532f = new Object();

    /* renamed from: g */
    private final Object f11533g = new Object();

    /* renamed from: h */
    private final Object f11534h = new Object();

    /* renamed from: a */
    public final int m11794a() {
        int i;
        synchronized (this.f11531e) {
            i = this.f11527a;
        }
        return i;
    }

    /* renamed from: a */
    public final void m11793a(int i) {
        synchronized (this.f11531e) {
            this.f11527a = i;
        }
    }

    /* renamed from: a */
    public final void m11792a(long j) {
        synchronized (this.f11532f) {
            this.f11528b = j;
        }
    }

    /* renamed from: b */
    public final long m11791b() {
        long j;
        synchronized (this.f11532f) {
            j = this.f11528b;
        }
        return j;
    }

    /* renamed from: b */
    public final void m11790b(long j) {
        synchronized (this) {
            synchronized (this.f11533g) {
                this.f11529c = j;
            }
        }
    }

    /* renamed from: c */
    public final long m11789c() {
        long j;
        synchronized (this) {
            synchronized (this.f11533g) {
                j = this.f11529c;
            }
        }
        return j;
    }

    /* renamed from: c */
    public final void m11788c(long j) {
        synchronized (this) {
            synchronized (this.f11534h) {
                this.f11530d = j;
            }
        }
    }

    /* renamed from: d */
    public final long m11787d() {
        long j;
        synchronized (this) {
            synchronized (this.f11534h) {
                j = this.f11530d;
            }
        }
        return j;
    }
}
