package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.extractor.t */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/t.class */
public final class C11144t implements AbstractC11146v {

    /* renamed from: a */
    private final long[] f36497a;

    /* renamed from: b */
    private final long[] f36498b;

    /* renamed from: c */
    private final long f36499c;

    /* renamed from: d */
    private final boolean f36500d;

    public C11144t(long[] jArr, long[] jArr2, long j) {
        C11593a.m20022a(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z = length > 0;
        this.f36500d = z;
        if (!z || jArr2[0] <= 0) {
            this.f36497a = jArr;
            this.f36498b = jArr2;
        } else {
            int i = length + 1;
            long[] jArr3 = new long[i];
            this.f36497a = jArr3;
            long[] jArr4 = new long[i];
            this.f36498b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        }
        this.f36499c = j;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final AbstractC11146v.C11147a mo21388a(long j) {
        if (!this.f36500d) {
            return new AbstractC11146v.C11147a(C11149w.f36506a);
        }
        int m19956a = C11599af.m19956a(this.f36498b, j, true);
        C11149w c11149w = new C11149w(this.f36498b[m19956a], this.f36497a[m19956a]);
        if (c11149w.f36507b != j) {
            long[] jArr = this.f36498b;
            if (m19956a != jArr.length - 1) {
                int i = m19956a + 1;
                return new AbstractC11146v.C11147a(c11149w, new C11149w(jArr[i], this.f36497a[i]));
            }
        }
        return new AbstractC11146v.C11147a(c11149w);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: a */
    public final boolean mo21389a() {
        return this.f36500d;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11146v
    /* renamed from: b */
    public final long mo21387b() {
        return this.f36499c;
    }
}
