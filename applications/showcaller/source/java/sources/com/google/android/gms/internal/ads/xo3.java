package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xo3.class */
final class xo3 {

    /* renamed from: c */
    private boolean f32140c;

    /* renamed from: e */
    private int f32142e;

    /* renamed from: a */
    private wo3 f32138a = new wo3();

    /* renamed from: b */
    private wo3 f32139b = new wo3();

    /* renamed from: d */
    private long f32141d = -9223372036854775807L;

    /* renamed from: a */
    public final void m9103a() {
        this.f32138a.m9501a();
        this.f32139b.m9501a();
        this.f32140c = false;
        this.f32141d = -9223372036854775807L;
        this.f32142e = 0;
    }

    /* renamed from: b */
    public final void m9102b(long j) {
        this.f32138a.m9496f(j);
        int i = 0;
        if (this.f32138a.m9500b()) {
            this.f32140c = false;
        } else if (this.f32141d != -9223372036854775807L) {
            if (!this.f32140c || this.f32139b.m9499c()) {
                this.f32139b.m9501a();
                this.f32139b.m9496f(this.f32141d);
            }
            this.f32140c = true;
            this.f32139b.m9496f(j);
        }
        if (this.f32140c && this.f32139b.m9500b()) {
            wo3 wo3Var = this.f32138a;
            this.f32138a = this.f32139b;
            this.f32139b = wo3Var;
            this.f32140c = false;
        }
        this.f32141d = j;
        if (!this.f32138a.m9500b()) {
            i = this.f32142e + 1;
        }
        this.f32142e = i;
    }

    /* renamed from: c */
    public final boolean m9101c() {
        return this.f32138a.m9500b();
    }

    /* renamed from: d */
    public final int m9100d() {
        return this.f32142e;
    }

    /* renamed from: e */
    public final long m9099e() {
        if (this.f32138a.m9500b()) {
            return this.f32138a.m9498d();
        }
        return -9223372036854775807L;
    }

    /* renamed from: f */
    public final long m9098f() {
        if (this.f32138a.m9500b()) {
            return this.f32138a.m9497e();
        }
        return -9223372036854775807L;
    }

    /* renamed from: g */
    public final float m9097g() {
        if (this.f32138a.m9500b()) {
            return (float) (1.0E9d / this.f32138a.m9497e());
        }
        return -1.0f;
    }
}
