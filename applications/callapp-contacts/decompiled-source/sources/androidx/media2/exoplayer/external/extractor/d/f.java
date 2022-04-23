package androidx.media2.exoplayer.external.extractor.d;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.util.p;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/f.class */
final class f {

    /* renamed from: a  reason: collision with root package name */
    public int f3100a;

    /* renamed from: b  reason: collision with root package name */
    public int f3101b;

    /* renamed from: c  reason: collision with root package name */
    public long f3102c;

    /* renamed from: d  reason: collision with root package name */
    public long f3103d;
    public long e;
    public long f;
    public int g;
    public int h;
    public int i;
    public final int[] j = new int[255];
    private final p k = new p(255);

    public final void a() {
        this.f3100a = 0;
        this.f3101b = 0;
        this.f3102c = 0L;
        this.f3103d = 0L;
        this.e = 0L;
        this.f = 0L;
        this.g = 0;
        this.h = 0;
        this.i = 0;
    }

    public final boolean a(h hVar, boolean z) throws IOException, InterruptedException {
        this.k.a();
        a();
        if (!(hVar.d() == -1 || hVar.d() - hVar.b() >= 27) || !hVar.b(this.k.f4166a, 0, 27, true)) {
            if (z) {
                return false;
            }
            throw new EOFException();
        } else if (this.k.g() == 1332176723) {
            int c2 = this.k.c();
            this.f3100a = c2;
            if (c2 == 0) {
                this.f3101b = this.k.c();
                this.f3102c = this.k.l();
                this.f3103d = this.k.h();
                this.e = this.k.h();
                this.f = this.k.h();
                int c3 = this.k.c();
                this.g = c3;
                this.h = c3 + 27;
                this.k.a();
                hVar.c(this.k.f4166a, 0, this.g);
                for (int i = 0; i < this.g; i++) {
                    this.j[i] = this.k.c();
                    this.i += this.j[i];
                }
                return true;
            } else if (z) {
                return false;
            } else {
                throw new ParserException("unsupported bit stream revision");
            }
        } else if (z) {
            return false;
        } else {
            throw new ParserException("expected OggS capture pattern at begin of page");
        }
    }
}
