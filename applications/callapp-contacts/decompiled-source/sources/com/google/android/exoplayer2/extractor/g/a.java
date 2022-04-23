package com.google.android.exoplayer2.extractor.g;

import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.w;
import com.google.android.exoplayer2.util.af;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/a.class */
final class a implements f {

    /* renamed from: a  reason: collision with root package name */
    final long f21106a;

    /* renamed from: b  reason: collision with root package name */
    final long f21107b;

    /* renamed from: c  reason: collision with root package name */
    final h f21108c;

    /* renamed from: d  reason: collision with root package name */
    long f21109d;
    private final e e;
    private int f;
    private long g;
    private long h;
    private long i;
    private long j;
    private long k;
    private long l;

    /* renamed from: com.google.android.exoplayer2.extractor.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/a$a.class */
    final class C0429a implements v {
        private C0429a() {
        }

        @Override // com.google.android.exoplayer2.extractor.v
        public final v.a a(long j) {
            return new v.a(new w(j, af.a((a.this.f21106a + ((a.this.f21108c.b(j) * (a.this.f21107b - a.this.f21106a)) / a.this.f21109d)) - 30000, a.this.f21106a, a.this.f21107b - 1)));
        }

        @Override // com.google.android.exoplayer2.extractor.v
        public final boolean a() {
            return true;
        }

        @Override // com.google.android.exoplayer2.extractor.v
        public final long b() {
            return a.this.f21108c.a(a.this.f21109d);
        }
    }

    public a(h hVar, long j, long j2, long j3, long j4, boolean z) {
        com.google.android.exoplayer2.util.a.a(j >= 0 && j2 > j);
        this.f21108c = hVar;
        this.f21106a = j;
        this.f21107b = j2;
        if (j3 == j2 - j || z) {
            this.f21109d = j4;
            this.f = 4;
        } else {
            this.f = 0;
        }
        this.e = new e();
    }

    private void b(i iVar) throws IOException {
        while (true) {
            this.e.a(iVar);
            this.e.a(iVar, false);
            if (this.e.f21125c <= this.h) {
                iVar.b(this.e.h + this.e.i);
                this.i = iVar.c();
                this.k = this.e.f21125c;
            } else {
                iVar.a();
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0156  */
    @Override // com.google.android.exoplayer2.extractor.g.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.exoplayer2.extractor.i r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.g.a.a(com.google.android.exoplayer2.extractor.i):long");
    }

    @Override // com.google.android.exoplayer2.extractor.g.f
    public final /* synthetic */ v a() {
        if (this.f21109d != 0) {
            return new C0429a();
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.extractor.g.f
    public final void a(long j) {
        this.h = af.a(j, 0L, this.f21109d - 1);
        this.f = 2;
        this.i = this.f21106a;
        this.j = this.f21107b;
        this.k = 0L;
        this.l = this.f21109d;
    }
}
