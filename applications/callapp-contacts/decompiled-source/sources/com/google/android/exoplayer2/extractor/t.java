package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/t.class */
public final class t implements v {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f21324a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f21325b;

    /* renamed from: c  reason: collision with root package name */
    private final long f21326c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f21327d;

    public t(long[] jArr, long[] jArr2, long j) {
        a.a(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z = length > 0;
        this.f21327d = z;
        if (!z || jArr2[0] <= 0) {
            this.f21324a = jArr;
            this.f21325b = jArr2;
        } else {
            int i = length + 1;
            long[] jArr3 = new long[i];
            this.f21324a = jArr3;
            long[] jArr4 = new long[i];
            this.f21325b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        }
        this.f21326c = j;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final v.a a(long j) {
        if (!this.f21327d) {
            return new v.a(w.f21333a);
        }
        int a2 = af.a(this.f21325b, j, true);
        w wVar = new w(this.f21325b[a2], this.f21324a[a2]);
        if (wVar.f21334b != j) {
            long[] jArr = this.f21325b;
            if (a2 != jArr.length - 1) {
                int i = a2 + 1;
                return new v.a(wVar, new w(jArr[i], this.f21324a[i]));
            }
        }
        return new v.a(wVar);
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final boolean a() {
        return this.f21327d;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final long b() {
        return this.f21326c;
    }
}
