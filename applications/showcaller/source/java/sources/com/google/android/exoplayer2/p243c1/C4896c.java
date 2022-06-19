package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.c1.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c.class */
public final class C4896c implements AbstractC4992t {

    /* renamed from: a */
    public final int f15020a;

    /* renamed from: b */
    public final int[] f15021b;

    /* renamed from: c */
    public final long[] f15022c;

    /* renamed from: d */
    public final long[] f15023d;

    /* renamed from: e */
    public final long[] f15024e;

    /* renamed from: f */
    private final long f15025f;

    public C4896c(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f15021b = iArr;
        this.f15022c = jArr;
        this.f15023d = jArr2;
        this.f15024e = jArr3;
        int length = iArr.length;
        this.f15020a = length;
        if (length > 0) {
            this.f15025f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f15025f = 0L;
        }
    }

    /* renamed from: b */
    public int m21252b(long j) {
        return C5515h0.m18835f(this.f15024e, j, true, true);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: d */
    public boolean mo20622d() {
        return true;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: i */
    public AbstractC4992t.C4993a mo20621i(long j) {
        int m21252b = m21252b(j);
        C4995u c4995u = new C4995u(this.f15024e[m21252b], this.f15022c[m21252b]);
        if (c4995u.f15523b >= j || m21252b == this.f15020a - 1) {
            return new AbstractC4992t.C4993a(c4995u);
        }
        int i = m21252b + 1;
        return new AbstractC4992t.C4993a(c4995u, new C4995u(this.f15024e[i], this.f15022c[i]));
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4992t
    /* renamed from: j */
    public long mo20620j() {
        return this.f15025f;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f15020a + ", sizes=" + Arrays.toString(this.f15021b) + ", offsets=" + Arrays.toString(this.f15022c) + ", timeUs=" + Arrays.toString(this.f15024e) + ", durationsUs=" + Arrays.toString(this.f15023d) + ")";
    }
}
