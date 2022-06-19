package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import androidx.media2.exoplayer.external.Format;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27184l;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.w.p */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/p.class */
public final class C27283p implements AbstractC27272j {

    /* renamed from: a */
    public final C27434m f76720a;

    /* renamed from: c */
    public final String f76722c;

    /* renamed from: d */
    public String f76723d;

    /* renamed from: e */
    public AbstractC27190p f76724e;

    /* renamed from: g */
    public int f76726g;

    /* renamed from: h */
    public boolean f76727h;

    /* renamed from: i */
    public boolean f76728i;

    /* renamed from: j */
    public long f76729j;

    /* renamed from: k */
    public int f76730k;

    /* renamed from: l */
    public long f76731l;

    /* renamed from: f */
    public int f76725f = 0;

    /* renamed from: b */
    public final C27184l f76721b = new C27184l();

    public C27283p(String str) {
        C27434m c27434m = new C27434m(4);
        this.f76720a = c27434m;
        c27434m.f77200a[0] = (byte) (-1);
        this.f76722c = str;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: a */
    public void mo629a() {
        this.f76725f = 0;
        this.f76726g = 0;
        this.f76728i = false;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: b */
    public void mo628b() {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: c */
    public void mo627c(long j, int i) {
        this.f76731l = j;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: d */
    public void mo626d(C27434m c27434m) {
        while (c27434m.m340a() > 0) {
            int i = this.f76725f;
            if (i == 0) {
                byte[] bArr = c27434m.f77200a;
                int i2 = c27434m.f77201b;
                int i3 = c27434m.f77202c;
                while (true) {
                    if (i2 >= i3) {
                        c27434m.m315z(i3);
                        break;
                    }
                    boolean z = (bArr[i2] & 255) == 255;
                    boolean z2 = this.f76728i && (bArr[i2] & 224) == 224;
                    this.f76728i = z;
                    if (z2) {
                        c27434m.m315z(i2 + 1);
                        this.f76728i = false;
                        this.f76720a.f77200a[1] = bArr[i2];
                        this.f76726g = 2;
                        this.f76725f = 1;
                        break;
                    }
                    i2++;
                }
            } else if (i == 1) {
                int min = Math.min(c27434m.m340a(), 4 - this.f76726g);
                c27434m.m338c(this.f76720a.f77200a, this.f76726g, min);
                int i4 = this.f76726g + min;
                this.f76726g = i4;
                if (i4 >= 4) {
                    this.f76720a.m315z(0);
                    if (!C27184l.m743b(this.f76720a.m337d(), this.f76721b)) {
                        this.f76726g = 0;
                        this.f76725f = 1;
                    } else {
                        C27184l c27184l = this.f76721b;
                        this.f76730k = c27184l.f76050c;
                        if (!this.f76727h) {
                            long j = c27184l.f76054g;
                            int i5 = c27184l.f76051d;
                            this.f76729j = (j * 1000000) / i5;
                            this.f76724e.mo740c(Format.m42842k(this.f76723d, c27184l.f76049b, null, -1, 4096, c27184l.f76052e, i5, null, null, 0, this.f76722c));
                            this.f76727h = true;
                        }
                        this.f76720a.m315z(0);
                        this.f76724e.mo739d(this.f76720a, 4);
                        this.f76725f = 2;
                    }
                }
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                int min2 = Math.min(c27434m.m340a(), this.f76730k - this.f76726g);
                this.f76724e.mo739d(c27434m, min2);
                int i6 = this.f76726g + min2;
                this.f76726g = i6;
                int i7 = this.f76730k;
                if (i6 >= i7) {
                    this.f76724e.mo741b(this.f76731l, 1, i7, 0, null);
                    this.f76731l += this.f76729j;
                    this.f76726g = 0;
                    this.f76725f = 0;
                }
            }
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: e */
    public void mo625e(AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        c27264d.m647a();
        this.f76723d = c27264d.m646b();
        this.f76724e = abstractC27180h.m750i(c27264d.m645c(), 1);
    }
}
