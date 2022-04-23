package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.util.af;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/c.class */
public final class c implements v {

    /* renamed from: a  reason: collision with root package name */
    public final int f20936a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f20937b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f20938c;

    /* renamed from: d  reason: collision with root package name */
    public final long[] f20939d;
    public final long[] e;
    private final long f;

    public c(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f20937b = iArr;
        this.f20938c = jArr;
        this.f20939d = jArr2;
        this.e = jArr3;
        int length = iArr.length;
        this.f20936a = length;
        if (length > 0) {
            this.f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f = 0L;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final v.a a(long j) {
        int a2 = af.a(this.e, j, true);
        w wVar = new w(this.e[a2], this.f20938c[a2]);
        if (wVar.f21334b >= j || a2 == this.f20936a - 1) {
            return new v.a(wVar);
        }
        int i = a2 + 1;
        return new v.a(wVar, new w(this.e[i], this.f20938c[i]));
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final long b() {
        return this.f;
    }

    public final String toString() {
        return "ChunkIndex(length=" + this.f20936a + ", sizes=" + Arrays.toString(this.f20937b) + ", offsets=" + Arrays.toString(this.f20938c) + ", timeUs=" + Arrays.toString(this.e) + ", durationsUs=" + Arrays.toString(this.f20939d) + ")";
    }
}
