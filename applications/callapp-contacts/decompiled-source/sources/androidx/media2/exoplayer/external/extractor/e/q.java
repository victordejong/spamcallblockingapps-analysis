package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/q.class */
public final class q implements m {

    /* renamed from: a  reason: collision with root package name */
    private final p f3246a = new p(10);

    /* renamed from: b  reason: collision with root package name */
    private androidx.media2.exoplayer.external.extractor.q f3247b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f3248c;

    /* renamed from: d  reason: collision with root package name */
    private long f3249d;
    private int e;
    private int f;

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a() {
        this.f3248c = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(long j, int i) {
        if ((i & 4) != 0) {
            this.f3248c = true;
            this.f3249d = j;
            this.e = 0;
            this.f = 0;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(i iVar, ah.d dVar) {
        dVar.a();
        androidx.media2.exoplayer.external.extractor.q a2 = iVar.a(dVar.b(), 4);
        this.f3247b = a2;
        a2.a(Format.createSampleFormat(dVar.c(), "application/id3", null, -1, null));
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(p pVar) {
        if (this.f3248c) {
            int b2 = pVar.b();
            int i = this.f;
            if (i < 10) {
                int min = Math.min(b2, 10 - i);
                System.arraycopy(pVar.f4166a, pVar.f4167b, this.f3246a.f4166a, this.f, min);
                if (this.f + min == 10) {
                    this.f3246a.c(0);
                    if (73 == this.f3246a.c() && 68 == this.f3246a.c() && 51 == this.f3246a.c()) {
                        this.f3246a.d(3);
                        this.e = this.f3246a.m() + 10;
                    } else {
                        j.a("Id3Reader", "Discarding invalid ID3 tag");
                        this.f3248c = false;
                        return;
                    }
                }
            }
            int min2 = Math.min(b2, this.e - this.f);
            this.f3247b.a(pVar, min2);
            this.f += min2;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void b() {
        int i;
        if (this.f3248c && (i = this.e) != 0 && this.f == i) {
            this.f3247b.a(this.f3249d, 1, i, 0, null);
            this.f3248c = false;
        }
    }
}
