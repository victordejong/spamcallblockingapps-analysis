package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.i0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/i0.class */
final class C5096i0 {

    /* renamed from: a */
    public final AbstractC5294v.C5295a f15948a;

    /* renamed from: b */
    public final long f15949b;

    /* renamed from: c */
    public final long f15950c;

    /* renamed from: d */
    public final long f15951d;

    /* renamed from: e */
    public final long f15952e;

    /* renamed from: f */
    public final boolean f15953f;

    /* renamed from: g */
    public final boolean f15954g;

    public C5096i0(AbstractC5294v.C5295a c5295a, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f15948a = c5295a;
        this.f15949b = j;
        this.f15950c = j2;
        this.f15951d = j3;
        this.f15952e = j4;
        this.f15953f = z;
        this.f15954g = z2;
    }

    /* renamed from: a */
    public C5096i0 m20556a(long j) {
        return j == this.f15950c ? this : new C5096i0(this.f15948a, this.f15949b, j, this.f15951d, this.f15952e, this.f15953f, this.f15954g);
    }

    /* renamed from: b */
    public C5096i0 m20555b(long j) {
        return j == this.f15949b ? this : new C5096i0(this.f15948a, j, this.f15950c, this.f15951d, this.f15952e, this.f15953f, this.f15954g);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C5096i0.class != obj.getClass()) {
            return false;
        }
        C5096i0 c5096i0 = (C5096i0) obj;
        if (this.f15949b != c5096i0.f15949b || this.f15950c != c5096i0.f15950c || this.f15951d != c5096i0.f15951d || this.f15952e != c5096i0.f15952e || this.f15953f != c5096i0.f15953f || this.f15954g != c5096i0.f15954g || !C5515h0.m18843b(this.f15948a, c5096i0.f15948a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((((((527 + this.f15948a.hashCode()) * 31) + ((int) this.f15949b)) * 31) + ((int) this.f15950c)) * 31) + ((int) this.f15951d)) * 31) + ((int) this.f15952e)) * 31) + (this.f15953f ? 1 : 0)) * 31) + (this.f15954g ? 1 : 0);
    }
}
