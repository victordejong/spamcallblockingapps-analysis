package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1885s;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
/* renamed from: n3.y.b.a.q0.s.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/s/a.class */
public final class C27199a implements AbstractC27203c {

    /* renamed from: a */
    public final byte[] f76114a = new byte[8];

    /* renamed from: b */
    public final ArrayDeque<C27201b> f76115b = new ArrayDeque<>();

    /* renamed from: c */
    public final C27210f f76116c = new C27210f();

    /* renamed from: d */
    public AbstractC27202b f76117d;

    /* renamed from: e */
    public int f76118e;

    /* renamed from: f */
    public int f76119f;

    /* renamed from: g */
    public long f76120g;

    /* renamed from: n3.y.b.a.q0.s.a$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/s/a$b.class */
    public static final class C27201b {

        /* renamed from: a */
        public final int f76121a;

        /* renamed from: b */
        public final long f76122b;

        public C27201b(int i, long j, C27200a c27200a) {
            this.f76121a = i;
            this.f76122b = j;
        }
    }

    /* renamed from: a */
    public final long m728a(C27176d c27176d) throws IOException, InterruptedException {
        c27176d.f76033f = 0;
        while (true) {
            c27176d.m757d(this.f76114a, 0, 4, false);
            int m709b = C27210f.m709b(this.f76114a[0]);
            if (m709b != -1 && m709b <= 4) {
                int m710a = (int) C27210f.m710a(this.f76114a, m709b, false);
                Objects.requireNonNull(C27204d.this);
                if (m710a == 357149030 || m710a == 524531317 || m710a == 475249515 || m710a == 374648427) {
                    c27176d.m753h(m709b);
                    return m710a;
                }
            }
            c27176d.m753h(1);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0632, code lost:
        if (r0.equals("V_THEORA") == false) goto L235;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x0c6e, code lost:
        if (r0.m331j() == r0.getLeastSignificantBits()) goto L346;
     */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0c7f  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0ca7  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0d10  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0d16  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0d28  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0d55  */
    /* JADX WARN: Type inference failed for: r0v118, types: [double] */
    /* JADX WARN: Type inference failed for: r0v122, types: [double] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m727b(p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d r17) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 5930
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1885s.C27199a.m727b(n3.y.b.a.q0.d):boolean");
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: c */
    public final long m726c(C27176d c27176d, int i) throws IOException, InterruptedException {
        c27176d.m754g(this.f76114a, 0, i, false);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.f76114a[i2] & 255);
        }
        return c;
    }
}
