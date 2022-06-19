package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1886t;

import androidx.media2.exoplayer.external.metadata.Metadata;
import java.io.EOFException;
import java.io.IOException;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27182j;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27183k;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27184l;
import p1727n3.p1874y.p1876b.p1877a.p1892s0.p1894g.C27323a;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.t.c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/t/c.class */
public final class C27211c implements AbstractC27179g {

    /* renamed from: a */
    public final long f76244a;

    /* renamed from: f */
    public AbstractC27180h f76249f;

    /* renamed from: g */
    public AbstractC27190p f76250g;

    /* renamed from: h */
    public int f76251h;

    /* renamed from: i */
    public Metadata f76252i;

    /* renamed from: j */
    public AbstractC27212a f76253j;

    /* renamed from: l */
    public long f76255l;

    /* renamed from: m */
    public long f76256m;

    /* renamed from: n */
    public int f76257n;

    /* renamed from: b */
    public final C27434m f76245b = new C27434m(10);

    /* renamed from: c */
    public final C27184l f76246c = new C27184l();

    /* renamed from: d */
    public final C27182j f76247d = new C27182j();

    /* renamed from: k */
    public long f76254k = -9223372036854775807L;

    /* renamed from: e */
    public final C27183k f76248e = new C27183k();

    /* renamed from: n3.y.b.a.q0.t.c$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/t/c$a.class */
    public interface AbstractC27212a extends AbstractC27186n {
        /* renamed from: e */
        long m703e();

        /* renamed from: f */
        long m702f(long j);
    }

    public C27211c(int i, long j) {
        this.f76244a = j;
    }

    /* renamed from: c */
    public static boolean m706c(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    public void mo606a(long j, long j2) {
        this.f76251h = 0;
        this.f76254k = -9223372036854775807L;
        this.f76255l = 0L;
        this.f76257n = 0;
    }

    /* renamed from: b */
    public final AbstractC27212a m707b(C27176d c27176d) throws IOException, InterruptedException {
        c27176d.m757d(this.f76245b.f77200a, 0, 4, false);
        this.f76245b.m315z(0);
        C27184l.m743b(this.f76245b.m337d(), this.f76246c);
        return new a(c27176d.f76030c, c27176d.f76031d, this.f76246c);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public void mo605d(AbstractC27180h abstractC27180h) {
        this.f76249f = abstractC27180h;
        this.f76250g = abstractC27180h.m750i(0, 1);
        this.f76249f.m751g();
    }

    /* renamed from: e */
    public final boolean m705e(C27176d c27176d) throws IOException, InterruptedException {
        AbstractC27212a abstractC27212a = this.f76253j;
        if (abstractC27212a != null) {
            long m703e = abstractC27212a.m703e();
            if (m703e != -1 && c27176d.m758c() > m703e - 4) {
                return true;
            }
        }
        try {
            return !c27176d.m757d(this.f76245b.f77200a, 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    /* renamed from: f */
    public final boolean m704f(C27176d c27176d, boolean z) throws IOException, InterruptedException {
        int i;
        int m744a;
        int i2;
        int i3 = z ? 16384 : 131072;
        c27176d.f76033f = 0;
        if (c27176d.f76031d == 0) {
            C27183k c27183k = this.f76248e;
            Objects.requireNonNull(c27183k);
            int i4 = 0;
            Metadata metadata = null;
            while (true) {
                try {
                    c27176d.m757d(c27183k.f76040a.f77200a, 0, 10, false);
                    c27183k.f76040a.m315z(0);
                    if (c27183k.f76040a.m324q() != 4801587) {
                        break;
                    }
                    c27183k.f76040a.m341A(3);
                    int m327n = c27183k.f76040a.m327n();
                    int i5 = m327n + 10;
                    if (metadata == null) {
                        byte[] bArr = new byte[i5];
                        System.arraycopy(c27183k.f76040a.f77200a, 0, bArr, 0, 10);
                        c27176d.m757d(bArr, 10, m327n, false);
                        metadata = new C27323a(null).m565c(bArr, i5);
                    } else {
                        c27176d.m760a(m327n, false);
                    }
                    i4 += i5;
                } catch (EOFException e) {
                }
            }
            c27176d.f76033f = 0;
            c27176d.m760a(i4, false);
            this.f76252i = metadata;
            if (metadata != null) {
                this.f76247d.m745c(metadata);
            }
            int m758c = (int) c27176d.m758c();
            i = m758c;
            if (!z) {
                c27176d.m753h(m758c);
                i = m758c;
            }
        } else {
            i = 0;
        }
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            if (!m705e(c27176d)) {
                this.f76245b.m315z(0);
                int m337d = this.f76245b.m337d();
                if ((i6 == 0 || m706c(m337d, i6)) && (m744a = C27184l.m744a(m337d)) != -1) {
                    int i9 = i7 + 1;
                    if (i9 != 1) {
                        i2 = i6;
                        if (i9 == 4) {
                            break;
                        }
                    } else {
                        C27184l.m743b(m337d, this.f76246c);
                        i2 = m337d;
                    }
                    c27176d.m760a(m744a - 4, false);
                    i6 = i2;
                    i7 = i9;
                } else {
                    int i10 = i8 + 1;
                    if (i8 == i3) {
                        if (!z) {
                            throw new C27074c0("Searched too many bytes.");
                        }
                        return false;
                    }
                    if (z) {
                        c27176d.f76033f = 0;
                        c27176d.m760a(i + i10, false);
                    } else {
                        c27176d.m753h(1);
                    }
                    i7 = 0;
                    i8 = i10;
                    i6 = 0;
                }
            } else if (i7 <= 0) {
                throw new EOFException();
            }
        }
        if (z) {
            c27176d.m753h(i + i8);
        } else {
            c27176d.f76033f = 0;
        }
        this.f76251h = i6;
        return true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    public boolean mo604h(C27176d c27176d) throws IOException, InterruptedException {
        return m704f(c27176d, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0342  */
    /* JADX WARN: Type inference failed for: r0v154, types: [long] */
    /* JADX WARN: Type inference failed for: r0v156, types: [long] */
    /* JADX WARN: Type inference failed for: r0v231, types: [long] */
    /* JADX WARN: Type inference failed for: r0v270, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo603i(p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d r18, p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m r19) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1886t.C27211c.mo603i(n3.y.b.a.q0.d, n3.y.b.a.q0.m):int");
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public void release() {
    }
}
