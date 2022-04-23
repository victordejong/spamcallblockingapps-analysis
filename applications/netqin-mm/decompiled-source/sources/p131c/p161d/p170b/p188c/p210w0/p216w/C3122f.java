package p131c.p161d.p170b.p188c.p210w0.p216w;

import com.google.android.exoplayer2.ParserException;
import java.io.EOFException;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
/* renamed from: c.d.b.c.w0.w.f */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/f.class */
public final class C3122f {

    /* renamed from: a */
    public int f11403a;

    /* renamed from: b */
    public int f11404b;

    /* renamed from: c */
    public long f11405c;

    /* renamed from: d */
    public int f11406d;

    /* renamed from: e */
    public int f11407e;

    /* renamed from: f */
    public int f11408f;

    /* renamed from: g */
    public final int[] f11409g = new int[255];

    /* renamed from: h */
    public final C2904v f11410h = new C2904v(255);

    /* renamed from: a */
    public void m27765a() {
        this.f11403a = 0;
        this.f11404b = 0;
        this.f11405c = 0L;
        this.f11406d = 0;
        this.f11407e = 0;
        this.f11408f = 0;
    }

    /* renamed from: a */
    public boolean m27764a(AbstractC3043h hVar, boolean z) throws IOException, InterruptedException {
        this.f11410h.m28516z();
        m27765a();
        if (!(hVar.mo28058a() == -1 || hVar.mo28058a() - hVar.mo28053b() >= 27) || !hVar.mo28051b(this.f11410h.f10530a, 0, 27, true)) {
            if (z) {
                return false;
            }
            throw new EOFException();
        } else if (this.f11410h.m28522t() == 1332176723) {
            int r = this.f11410h.m28524r();
            this.f11403a = r;
            if (r == 0) {
                this.f11404b = this.f11410h.m28524r();
                this.f11405c = this.f11410h.m28532j();
                this.f11410h.m28531k();
                this.f11410h.m28531k();
                this.f11410h.m28531k();
                int r2 = this.f11410h.m28524r();
                this.f11406d = r2;
                this.f11407e = r2 + 27;
                this.f11410h.m28516z();
                hVar.mo28055a(this.f11410h.f10530a, 0, this.f11406d);
                for (int i = 0; i < this.f11406d; i++) {
                    this.f11409g[i] = this.f11410h.m28524r();
                    this.f11408f += this.f11409g[i];
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
