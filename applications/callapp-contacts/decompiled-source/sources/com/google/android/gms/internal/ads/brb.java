package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brb.class */
public final class brb {

    /* renamed from: c  reason: collision with root package name */
    private int f24928c = 0;

    /* renamed from: a  reason: collision with root package name */
    long f24926a = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f24929d = 0;
    private long e = 0;
    private final Object f = new Object();

    /* renamed from: b  reason: collision with root package name */
    final Object f24927b = new Object();
    private final Object g = new Object();
    private final Object h = new Object();

    public final int a() {
        int i;
        synchronized (this.f) {
            i = this.f24928c;
        }
        return i;
    }

    public final void a(int i) {
        synchronized (this.f) {
            this.f24928c = i;
        }
    }

    public final void a(long j) {
        synchronized (this) {
            synchronized (this.g) {
                this.f24929d = j;
            }
        }
    }

    public final long b() {
        long j;
        synchronized (this.f24927b) {
            j = this.f24926a;
        }
        return j;
    }

    public final void b(long j) {
        synchronized (this) {
            synchronized (this.h) {
                this.e = j;
            }
        }
    }

    public final long c() {
        long j;
        synchronized (this) {
            synchronized (this.g) {
                j = this.f24929d;
            }
        }
        return j;
    }

    public final long d() {
        long j;
        synchronized (this) {
            synchronized (this.h) {
                j = this.e;
            }
        }
        return j;
    }
}
