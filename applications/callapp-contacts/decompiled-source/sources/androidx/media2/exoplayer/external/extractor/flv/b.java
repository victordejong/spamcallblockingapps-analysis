package androidx.media2.exoplayer.external.extractor.flv;

import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.util.p;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/b.class */
public final class b implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f3296a = c.f3300a;
    private i g;
    private boolean i;
    private long j;
    private int k;
    private int l;
    private int m;
    private long n;
    private boolean o;
    private a p;
    private e q;

    /* renamed from: b  reason: collision with root package name */
    private final p f3297b = new p(4);

    /* renamed from: c  reason: collision with root package name */
    private final p f3298c = new p(9);

    /* renamed from: d  reason: collision with root package name */
    private final p f3299d = new p(11);
    private final p e = new p();
    private final d f = new d();
    private int h = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ g[] a() {
        return new g[]{new b()};
    }

    private p b(h hVar) throws IOException, InterruptedException {
        if (this.m > this.e.f4166a.length) {
            p pVar = this.e;
            pVar.a(new byte[Math.max(pVar.f4166a.length * 2, this.m)], 0);
        } else {
            this.e.c(0);
        }
        this.e.b(this.m);
        hVar.b(this.e.f4166a, 0, this.m);
        return this.e;
    }

    private void b() {
        if (!this.o) {
            this.g.a(new o.b(-9223372036854775807L));
            this.o = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x014c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0000 A[SYNTHETIC] */
    @Override // androidx.media2.exoplayer.external.extractor.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(androidx.media2.exoplayer.external.extractor.h r8, androidx.media2.exoplayer.external.extractor.n r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.flv.b.a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        this.h = 1;
        this.i = false;
        this.k = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.g = iVar;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final boolean a(h hVar) throws IOException, InterruptedException {
        hVar.c(this.f3297b.f4166a, 0, 3);
        this.f3297b.c(0);
        if (this.f3297b.f() != 4607062) {
            return false;
        }
        hVar.c(this.f3297b.f4166a, 0, 2);
        this.f3297b.c(0);
        if ((this.f3297b.d() & 250) != 0) {
            return false;
        }
        hVar.c(this.f3297b.f4166a, 0, 4);
        this.f3297b.c(0);
        int i = this.f3297b.i();
        hVar.a();
        hVar.c(i);
        hVar.c(this.f3297b.f4166a, 0, 4);
        this.f3297b.c(0);
        return this.f3297b.i() == 0;
    }
}
