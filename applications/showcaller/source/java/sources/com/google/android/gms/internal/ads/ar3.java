package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ar3.class */
public class ar3 {

    /* renamed from: a */
    public final Object f20100a;

    /* renamed from: b */
    public final int f20101b;

    /* renamed from: c */
    public final int f20102c;

    /* renamed from: d */
    public final long f20103d;

    /* renamed from: e */
    public final int f20104e;

    public ar3(ar3 ar3Var) {
        this.f20100a = ar3Var.f20100a;
        this.f20101b = ar3Var.f20101b;
        this.f20102c = ar3Var.f20102c;
        this.f20103d = ar3Var.f20103d;
        this.f20104e = ar3Var.f20104e;
    }

    public ar3(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    private ar3(Object obj, int i, int i2, long j, int i3) {
        this.f20100a = obj;
        this.f20101b = i;
        this.f20102c = i2;
        this.f20103d = j;
        this.f20104e = i3;
    }

    public ar3(Object obj, long j) {
        this(obj, -1, -1, -1L, -1);
    }

    public ar3(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }

    /* renamed from: a */
    public final ar3 m16492a(Object obj) {
        return this.f20100a.equals(obj) ? this : new ar3(obj, this.f20101b, this.f20102c, this.f20103d, this.f20104e);
    }

    /* renamed from: b */
    public final boolean m16491b() {
        return this.f20101b != -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ar3)) {
            return false;
        }
        ar3 ar3Var = (ar3) obj;
        return this.f20100a.equals(ar3Var.f20100a) && this.f20101b == ar3Var.f20101b && this.f20102c == ar3Var.f20102c && this.f20103d == ar3Var.f20103d && this.f20104e == ar3Var.f20104e;
    }

    public final int hashCode() {
        return ((((((((this.f20100a.hashCode() + 527) * 31) + this.f20101b) * 31) + this.f20102c) * 31) + ((int) this.f20103d)) * 31) + this.f20104e;
    }
}
