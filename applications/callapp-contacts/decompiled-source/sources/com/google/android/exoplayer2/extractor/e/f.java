package com.google.android.exoplayer2.extractor.e;

import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.w;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e/f.class */
final class f implements e {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f21002a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f21003b;

    /* renamed from: c  reason: collision with root package name */
    private final long f21004c;

    /* renamed from: d  reason: collision with root package name */
    private final long f21005d;

    private f(long[] jArr, long[] jArr2, long j, long j2) {
        this.f21002a = jArr;
        this.f21003b = jArr2;
        this.f21004c = j;
        this.f21005d = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.extractor.e.f a(long r9, long r11, com.google.android.exoplayer2.audio.o.a r13, com.google.android.exoplayer2.util.u r14) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.e.f.a(long, long, com.google.android.exoplayer2.audio.o$a, com.google.android.exoplayer2.util.u):com.google.android.exoplayer2.extractor.e.f");
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final v.a a(long j) {
        int a2 = af.a(this.f21002a, j, true);
        w wVar = new w(this.f21002a[a2], this.f21003b[a2]);
        if (wVar.f21334b < j) {
            long[] jArr = this.f21002a;
            if (a2 != jArr.length - 1) {
                int i = a2 + 1;
                return new v.a(wVar, new w(jArr[i], this.f21003b[i]));
            }
        }
        return new v.a(wVar);
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final long b() {
        return this.f21004c;
    }

    @Override // com.google.android.exoplayer2.extractor.e.e
    public final long c() {
        return this.f21005d;
    }

    @Override // com.google.android.exoplayer2.extractor.e.e
    public final long c(long j) {
        return this.f21002a[af.a(this.f21003b, j, true)];
    }
}
