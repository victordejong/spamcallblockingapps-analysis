package com.google.android.exoplayer2.extractor.c;

import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.w;
import com.google.android.exoplayer2.extractor.x;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/c/d.class */
public final class d implements j {

    /* renamed from: b  reason: collision with root package name */
    private final long f20951b;

    /* renamed from: c  reason: collision with root package name */
    private final j f20952c;

    public d(long j, j jVar) {
        this.f20951b = j;
        this.f20952c = jVar;
    }

    @Override // com.google.android.exoplayer2.extractor.j
    public final x a(int i, int i2) {
        return this.f20952c.a(i, i2);
    }

    @Override // com.google.android.exoplayer2.extractor.j
    public final void a() {
        this.f20952c.a();
    }

    @Override // com.google.android.exoplayer2.extractor.j
    public final void a(final v vVar) {
        this.f20952c.a(new v() { // from class: com.google.android.exoplayer2.extractor.c.d.1
            @Override // com.google.android.exoplayer2.extractor.v
            public final v.a a(long j) {
                v.a a2 = vVar.a(j);
                return new v.a(new w(a2.f21329a.f21334b, a2.f21329a.f21335c + d.this.f20951b), new w(a2.f21330b.f21334b, a2.f21330b.f21335c + d.this.f20951b));
            }

            @Override // com.google.android.exoplayer2.extractor.v
            public final boolean a() {
                return vVar.a();
            }

            @Override // com.google.android.exoplayer2.extractor.v
            public final long b() {
                return vVar.b();
            }
        });
    }
}
