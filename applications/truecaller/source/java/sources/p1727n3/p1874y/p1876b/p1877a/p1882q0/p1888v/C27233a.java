package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27189o;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.q0.v.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/a.class */
public final class C27233a implements AbstractC27241f {

    /* renamed from: a */
    public final C27240e f76393a = new C27240e();

    /* renamed from: b */
    public final long f76394b;

    /* renamed from: c */
    public final long f76395c;

    /* renamed from: d */
    public final AbstractC27243h f76396d;

    /* renamed from: e */
    public int f76397e;

    /* renamed from: f */
    public long f76398f;

    /* renamed from: g */
    public long f76399g;

    /* renamed from: h */
    public long f76400h;

    /* renamed from: i */
    public long f76401i;

    /* renamed from: j */
    public long f76402j;

    /* renamed from: k */
    public long f76403k;

    /* renamed from: l */
    public long f76404l;

    /* renamed from: n3.y.b.a.q0.v.a$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/a$b.class */
    public final class C27235b implements AbstractC27186n {
        public C27235b(C27234a c27234a) {
            C27233a.this = r4;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: b */
        public AbstractC27186n.C27187a mo602b(long j) {
            C27233a c27233a = C27233a.this;
            long j2 = (c27233a.f76396d.f76439i * j) / 1000000;
            long j3 = c27233a.f76394b;
            long j4 = c27233a.f76395c;
            return new AbstractC27186n.C27187a(new C27189o(j, C27445x.m279h(((((j4 - j3) * j2) / c27233a.f76398f) + j3) - 30000, j3, j4 - 1)));
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: c */
        public boolean mo601c() {
            return true;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: g */
        public long mo599g() {
            C27233a c27233a = C27233a.this;
            return c27233a.f76396d.m660a(c27233a.f76398f);
        }
    }

    public C27233a(AbstractC27243h abstractC27243h, long j, long j2, long j3, long j4, boolean z) {
        MediaSessionCompat.m43211p(j >= 0 && j2 > j);
        this.f76396d = abstractC27243h;
        this.f76394b = j;
        this.f76395c = j2;
        if (j3 != j2 - j && !z) {
            this.f76397e = 0;
            return;
        }
        this.f76398f = j4;
        this.f76397e = 4;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27241f
    /* renamed from: a */
    public AbstractC27186n mo658a() {
        C27235b c27235b = null;
        if (this.f76398f != 0) {
            c27235b = new C27235b(null);
        }
        return c27235b;
    }

    /* renamed from: b */
    public final boolean m667b(C27176d c27176d, long j) throws IOException, InterruptedException {
        int i;
        long min = Math.min(j + 3, this.f76395c);
        int i2 = 2048;
        byte[] bArr = new byte[2048];
        while (true) {
            long j2 = c27176d.f76031d;
            int i3 = 0;
            if (i2 + j2 > min) {
                int i4 = (int) (min - j2);
                i2 = i4;
                if (i4 < 4) {
                    return false;
                }
            }
            c27176d.m757d(bArr, 0, i2, false);
            while (true) {
                i = i2 - 3;
                if (i3 < i) {
                    if (bArr[i3] == 79 && bArr[i3 + 1] == 103 && bArr[i3 + 2] == 103 && bArr[i3 + 3] == 83) {
                        c27176d.m753h(i3);
                        return true;
                    }
                    i3++;
                }
            }
            c27176d.m753h(i);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27241f
    /* renamed from: d */
    public void mo657d(long j) {
        this.f76400h = C27445x.m279h(j, 0L, this.f76398f - 1);
        this.f76397e = 2;
        this.f76401i = this.f76394b;
        this.f76402j = this.f76395c;
        this.f76403k = 0L;
        this.f76404l = this.f76398f;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0147  */
    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27241f
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo656h(p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.C27233a.mo656h(n3.y.b.a.q0.d):long");
    }
}
