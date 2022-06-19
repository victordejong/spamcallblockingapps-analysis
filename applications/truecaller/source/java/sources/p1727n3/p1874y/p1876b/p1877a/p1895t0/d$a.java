package p1727n3.p1874y.p1876b.p1877a.p1895t0;

import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.C27414x;
import p1727n3.p1874y.p1876b.p1877a.p1880o0.C27155c;
/* renamed from: n3.y.b.a.t0.d$a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/d$a.class */
public final class d$a implements AbstractC27342j0 {

    /* renamed from: a */
    public final AbstractC27342j0 f76891a;

    /* renamed from: b */
    public boolean f76892b;

    /* renamed from: c */
    public final /* synthetic */ d f76893c;

    public d$a(d dVar, AbstractC27342j0 abstractC27342j0) {
        this.f76893c = dVar;
        this.f76891a = abstractC27342j0;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27342j0
    /* renamed from: a */
    public void mo491a() throws IOException {
        this.f76891a.mo491a();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27342j0
    /* renamed from: b */
    public boolean mo490b() {
        return !this.f76893c.g() && this.f76891a.mo490b();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27342j0
    /* renamed from: c */
    public int mo489c(long j) {
        if (this.f76893c.g()) {
            return -3;
        }
        return this.f76891a.mo489c(j);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27342j0
    /* renamed from: d */
    public int mo488d(C27414x c27414x, C27155c c27155c, boolean z) {
        if (this.f76893c.g()) {
            return -3;
        }
        if (this.f76892b) {
            c27155c.f75983a = 4;
            return -4;
        }
        int mo488d = this.f76891a.mo488d(c27414x, c27155c, z);
        if (mo488d != -5) {
            d dVar = this.f76893c;
            long j = dVar.f;
            if (j == Long.MIN_VALUE || ((mo488d != -4 || c27155c.f75986d < j) && !(mo488d == -3 && dVar.b() == Long.MIN_VALUE))) {
                return mo488d;
            }
            c27155c.m785a();
            c27155c.f75983a = 4;
            this.f76892b = true;
            return -4;
        }
        Format format = c27414x.f77150c;
        Objects.requireNonNull(format);
        int i = format.f976y;
        if (i == 0 && format.f977z == 0) {
            return -5;
        }
        d dVar2 = this.f76893c;
        int i2 = 0;
        if (dVar2.e != 0) {
            i = 0;
        }
        if (dVar2.f == Long.MIN_VALUE) {
            i2 = format.f977z;
        }
        c27414x.f77150c = format.m42849c(i, i2);
        return -5;
    }
}
