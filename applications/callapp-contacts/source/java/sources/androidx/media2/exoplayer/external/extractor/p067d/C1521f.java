package androidx.media2.exoplayer.external.extractor.p067d;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.d.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/f.class */
final class C1521f {

    /* renamed from: a */
    public int f5857a;

    /* renamed from: b */
    public int f5858b;

    /* renamed from: c */
    public long f5859c;

    /* renamed from: d */
    public long f5860d;

    /* renamed from: e */
    public long f5861e;

    /* renamed from: f */
    public long f5862f;

    /* renamed from: g */
    public int f5863g;

    /* renamed from: h */
    public int f5864h;

    /* renamed from: i */
    public int f5865i;

    /* renamed from: j */
    public final int[] f5866j = new int[255];

    /* renamed from: k */
    private final C2018p f5867k = new C2018p(255);

    /* renamed from: a */
    public final void m42758a() {
        this.f5857a = 0;
        this.f5858b = 0;
        this.f5859c = 0L;
        this.f5860d = 0L;
        this.f5861e = 0L;
        this.f5862f = 0L;
        this.f5863g = 0;
        this.f5864h = 0;
        this.f5865i = 0;
    }

    /* renamed from: a */
    public final boolean m42757a(AbstractC1600h abstractC1600h, boolean z) throws IOException, InterruptedException {
        this.f5867k.m41542a();
        m42758a();
        if (!(abstractC1600h.mo42600d() == -1 || abstractC1600h.mo42600d() - abstractC1600h.mo42607b() >= 27) || !abstractC1600h.mo42604b(this.f5867k.f8131a, 0, 27, true)) {
            if (!z) {
                throw new EOFException();
            }
            return false;
        } else if (this.f5867k.m41526g() != 1332176723) {
            if (!z) {
                throw new ParserException("expected OggS capture pattern at begin of page");
            }
            return false;
        } else {
            int m41534c = this.f5867k.m41534c();
            this.f5857a = m41534c;
            if (m41534c != 0) {
                if (!z) {
                    throw new ParserException("unsupported bit stream revision");
                }
                return false;
            }
            this.f5858b = this.f5867k.m41534c();
            this.f5859c = this.f5867k.m41521l();
            this.f5860d = this.f5867k.m41525h();
            this.f5861e = this.f5867k.m41525h();
            this.f5862f = this.f5867k.m41525h();
            int m41534c2 = this.f5867k.m41534c();
            this.f5863g = m41534c2;
            this.f5864h = m41534c2 + 27;
            this.f5867k.m41542a();
            abstractC1600h.mo42601c(this.f5867k.f8131a, 0, this.f5863g);
            for (int i = 0; i < this.f5863g; i++) {
                this.f5866j[i] = this.f5867k.m41534c();
                this.f5865i += this.f5866j[i];
            }
            return true;
        }
    }
}
