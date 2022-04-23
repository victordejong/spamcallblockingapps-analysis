package androidx.media2.exoplayer.external.extractor.d;

import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.p;
import androidx.media2.exoplayer.external.util.ac;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/a.class */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    final long f3080a;

    /* renamed from: b  reason: collision with root package name */
    final long f3081b;

    /* renamed from: c  reason: collision with root package name */
    final i f3082c;

    /* renamed from: d  reason: collision with root package name */
    long f3083d;
    private final f e = new f();
    private int f;
    private long g;
    private long h;
    private long i;
    private long j;
    private long k;
    private long l;

    /* renamed from: androidx.media2.exoplayer.external.extractor.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/a$a.class */
    final class C0079a implements o {
        private C0079a() {
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final o.a a(long j) {
            return new o.a(new p(j, ac.a((a.this.f3080a + ((a.this.f3082c.b(j) * (a.this.f3081b - a.this.f3080a)) / a.this.f3083d)) - 30000, a.this.f3080a, a.this.f3081b - 1)));
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final long b() {
            return a.this.f3082c.a(a.this.f3083d);
        }

        @Override // androidx.media2.exoplayer.external.extractor.o
        public final boolean j_() {
            return true;
        }
    }

    public a(i iVar, long j, long j2, long j3, long j4, boolean z) {
        androidx.media2.exoplayer.external.util.a.a(j >= 0 && j2 > j);
        this.f3082c = iVar;
        this.f3080a = j;
        this.f3081b = j2;
        if (j3 == j2 - j || z) {
            this.f3083d = j4;
            this.f = 4;
            return;
        }
        this.f = 0;
    }

    private boolean a(h hVar, long j) throws IOException, InterruptedException {
        int i;
        long min = Math.min(j + 3, this.f3081b);
        int i2 = 2048;
        byte[] bArr = new byte[2048];
        while (true) {
            int i3 = 0;
            if (hVar.c() + i2 > min) {
                int c2 = (int) (min - hVar.c());
                i2 = c2;
                if (c2 < 4) {
                    return false;
                }
            }
            hVar.b(bArr, 0, i2, false);
            while (true) {
                i = i2 - 3;
                if (i3 < i) {
                    if (bArr[i3] == 79 && bArr[i3 + 1] == 103 && bArr[i3 + 2] == 103 && bArr[i3 + 3] == 83) {
                        hVar.b(i3);
                        return true;
                    }
                    i3++;
                }
            }
            hVar.b(i);
        }
    }

    private void b(h hVar) throws IOException, InterruptedException {
        this.e.a(hVar, false);
        while (this.e.f3102c <= this.h) {
            hVar.b(this.e.h + this.e.i);
            this.i = hVar.c();
            this.k = this.e.f3102c;
            this.e.a(hVar, false);
        }
        hVar.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0153  */
    @Override // androidx.media2.exoplayer.external.extractor.d.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(androidx.media2.exoplayer.external.extractor.h r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.d.a.a(androidx.media2.exoplayer.external.extractor.h):long");
    }

    @Override // androidx.media2.exoplayer.external.extractor.d.g
    public final /* synthetic */ o a() {
        if (this.f3083d != 0) {
            return new C0079a();
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.extractor.d.g
    public final void a_(long j) {
        this.h = ac.a(j, 0L, this.f3083d - 1);
        this.f = 2;
        this.i = this.f3080a;
        this.j = this.f3081b;
        this.k = 0L;
        this.l = this.f3083d;
    }
}
