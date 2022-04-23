package com.google.android.exoplayer2.extractor.i;

import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.w;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/d.class */
final class d implements v {

    /* renamed from: a  reason: collision with root package name */
    private final b f21303a;

    /* renamed from: b  reason: collision with root package name */
    private final int f21304b;

    /* renamed from: c  reason: collision with root package name */
    private final long f21305c;

    /* renamed from: d  reason: collision with root package name */
    private final long f21306d;
    private final long e;

    public d(b bVar, int i, long j, long j2) {
        this.f21303a = bVar;
        this.f21304b = i;
        this.f21305c = j;
        long j3 = (j2 - j) / bVar.e;
        this.f21306d = j3;
        this.e = b(j3);
    }

    private long b(long j) {
        return af.b(j * this.f21304b, 1000000L, this.f21303a.f21299c);
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final v.a a(long j) {
        long a2 = af.a((this.f21303a.f21299c * j) / (this.f21304b * 1000000), 0L, this.f21306d - 1);
        long j2 = this.f21305c;
        long j3 = this.f21303a.e;
        long b2 = b(a2);
        w wVar = new w(b2, j2 + (j3 * a2));
        if (b2 >= j || a2 == this.f21306d - 1) {
            return new v.a(wVar);
        }
        long j4 = a2 + 1;
        return new v.a(wVar, new w(b(j4), this.f21305c + (this.f21303a.e * j4)));
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final long b() {
        return this.e;
    }
}
