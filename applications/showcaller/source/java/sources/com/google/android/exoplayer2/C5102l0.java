package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.l0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/l0.class */
public final class C5102l0 {

    /* renamed from: a */
    public static final C5102l0 f15984a = new C5102l0(1.0f);

    /* renamed from: b */
    public final float f15985b;

    /* renamed from: c */
    public final float f15986c;

    /* renamed from: d */
    public final boolean f15987d;

    /* renamed from: e */
    private final int f15988e;

    public C5102l0(float f) {
        this(f, 1.0f, false);
    }

    public C5102l0(float f, float f2) {
        this(f, f2, false);
    }

    public C5102l0(float f, float f2, boolean z) {
        C5508e.m18915a(f > 0.0f);
        C5508e.m18915a(f2 > 0.0f);
        this.f15985b = f;
        this.f15986c = f2;
        this.f15987d = z;
        this.f15988e = Math.round(f * 1000.0f);
    }

    /* renamed from: a */
    public long m20515a(long j) {
        return j * this.f15988e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C5102l0.class != obj.getClass()) {
            return false;
        }
        C5102l0 c5102l0 = (C5102l0) obj;
        if (this.f15985b != c5102l0.f15985b || this.f15986c != c5102l0.f15986c || this.f15987d != c5102l0.f15987d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((527 + Float.floatToRawIntBits(this.f15985b)) * 31) + Float.floatToRawIntBits(this.f15986c)) * 31) + (this.f15987d ? 1 : 0);
    }
}
