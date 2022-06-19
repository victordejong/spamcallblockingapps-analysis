package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.extractor.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/c.class */
public final class C10990c implements AbstractC11146v {

    /* renamed from: a */
    public final int f35566a;

    /* renamed from: b */
    public final int[] f35567b;

    /* renamed from: c */
    public final long[] f35568c;

    /* renamed from: d */
    public final long[] f35569d;

    /* renamed from: e */
    public final long[] f35570e;

    /* renamed from: f */
    private final long f35571f;

    public C10990c(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f35567b = iArr;
        this.f35568c = jArr;
        this.f35569d = jArr2;
        this.f35570e = jArr3;
        int length = iArr.length;
        this.f35566a = length;
        if (length > 0) {
            this.f35571f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f35571f = 0L;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final AbstractC11146v.C11147a mo21388a(long j) {
        int m19956a = C11599af.m19956a(this.f35570e, j, true);
        C11149w c11149w = new C11149w(this.f35570e[m19956a], this.f35568c[m19956a]);
        if (c11149w.f36507b >= j || m19956a == this.f35566a - 1) {
            return new AbstractC11146v.C11147a(c11149w);
        }
        int i = m19956a + 1;
        return new AbstractC11146v.C11147a(c11149w, new C11149w(this.f35570e[i], this.f35568c[i]));
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final boolean mo21389a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: b */
    public final long mo21387b() {
        return this.f35571f;
    }

    public final String toString() {
        return "ChunkIndex(length=" + this.f35566a + ", sizes=" + Arrays.toString(this.f35567b) + ", offsets=" + Arrays.toString(this.f35568c) + ", timeUs=" + Arrays.toString(this.f35570e) + ", durationsUs=" + Arrays.toString(this.f35569d) + ")";
    }
}
