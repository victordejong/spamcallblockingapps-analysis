package p012b.p076s.p078b.p079a.p086s0.p092w;

import androidx.media2.exoplayer.external.ParserException;
import java.io.EOFException;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
/* renamed from: b.s.b.a.s0.w.f */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/f.class */
public final class C1429f {

    /* renamed from: a */
    public int f5763a;

    /* renamed from: b */
    public int f5764b;

    /* renamed from: c */
    public long f5765c;

    /* renamed from: d */
    public int f5766d;

    /* renamed from: e */
    public int f5767e;

    /* renamed from: f */
    public int f5768f;

    /* renamed from: g */
    public final int[] f5769g = new int[255];

    /* renamed from: h */
    public final C1184p f5770h = new C1184p(255);

    /* renamed from: a */
    public void m33334a() {
        this.f5763a = 0;
        this.f5764b = 0;
        this.f5765c = 0L;
        this.f5766d = 0;
        this.f5767e = 0;
        this.f5768f = 0;
    }

    /* renamed from: a */
    public boolean m33333a(AbstractC1351h hVar, boolean z) throws IOException, InterruptedException {
        this.f5770h.m34336z();
        m33334a();
        if (!(hVar.mo33622a() == -1 || hVar.mo33622a() - hVar.mo33617b() >= 27) || !hVar.mo33615b(this.f5770h.f4738a, 0, 27, true)) {
            if (z) {
                return false;
            }
            throw new EOFException();
        } else if (this.f5770h.m34342t() == 1332176723) {
            int r = this.f5770h.m34344r();
            this.f5763a = r;
            if (r == 0) {
                this.f5764b = this.f5770h.m34344r();
                this.f5765c = this.f5770h.m34352j();
                this.f5770h.m34351k();
                this.f5770h.m34351k();
                this.f5770h.m34351k();
                int r2 = this.f5770h.m34344r();
                this.f5766d = r2;
                this.f5767e = r2 + 27;
                this.f5770h.m34336z();
                hVar.mo33619a(this.f5770h.f4738a, 0, this.f5766d);
                for (int i = 0; i < this.f5766d; i++) {
                    this.f5769g[i] = this.f5770h.m34344r();
                    this.f5768f += this.f5769g[i];
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
