package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import android.util.SparseArray;
import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27433l;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27443v;
/* renamed from: n3.y.b.a.q0.w.u */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/u.class */
public final class C27290u implements AbstractC27179g {

    /* renamed from: e */
    public boolean f76763e;

    /* renamed from: f */
    public boolean f76764f;

    /* renamed from: g */
    public boolean f76765g;

    /* renamed from: h */
    public long f76766h;

    /* renamed from: i */
    public C27286s f76767i;

    /* renamed from: j */
    public AbstractC27180h f76768j;

    /* renamed from: k */
    public boolean f76769k;

    /* renamed from: a */
    public final C27443v f76759a = new C27443v(0);

    /* renamed from: c */
    public final C27434m f76761c = new C27434m(4096);

    /* renamed from: b */
    public final SparseArray<C27291a> f76760b = new SparseArray<>();

    /* renamed from: d */
    public final C27289t f76762d = new C27289t();

    /* renamed from: n3.y.b.a.q0.w.u$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/u$a.class */
    public static final class C27291a {

        /* renamed from: a */
        public final AbstractC27272j f76770a;

        /* renamed from: b */
        public final C27443v f76771b;

        /* renamed from: c */
        public final C27433l f76772c = new C27433l(new byte[64]);

        /* renamed from: d */
        public boolean f76773d;

        /* renamed from: e */
        public boolean f76774e;

        /* renamed from: f */
        public boolean f76775f;

        /* renamed from: g */
        public int f76776g;

        /* renamed from: h */
        public long f76777h;

        public C27291a(AbstractC27272j abstractC27272j, C27443v c27443v) {
            this.f76770a = abstractC27272j;
            this.f76771b = c27443v;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r0 != r8) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0062 A[LOOP:0: B:17:0x0056->B:19:0x0062, LOOP_END] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo606a(long r6, long r8) {
        /*
            r5 = this;
            r0 = r5
            n3.y.b.a.x0.v r0 = r0.f76759a
            long r0 = r0.m295c()
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L14
            r0 = 1
            r10 = r0
            goto L17
        L14:
            r0 = 0
            r10 = r0
        L17:
            r0 = r10
            if (r0 != 0) goto L30
            r0 = r5
            n3.y.b.a.x0.v r0 = r0.f76759a
            long r0 = r0.f77225a
            r6 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L42
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L42
        L30:
            r0 = r5
            n3.y.b.a.x0.v r0 = r0.f76759a
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f77227c = r1
            r0 = r5
            n3.y.b.a.x0.v r0 = r0.f76759a
            r1 = r8
            r0.m294d(r1)
        L42:
            r0 = r5
            n3.y.b.a.q0.w.s r0 = r0.f76767i
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L53
            r0 = r11
            r1 = r8
            r0.m766d(r1)
        L53:
            r0 = 0
            r10 = r0
        L56:
            r0 = r10
            r1 = r5
            android.util.SparseArray<n3.y.b.a.q0.w.u$a> r1 = r1.f76760b
            int r1 = r1.size()
            if (r0 >= r1) goto L86
            r0 = r5
            android.util.SparseArray<n3.y.b.a.q0.w.u$a> r0 = r0.f76760b
            r1 = r10
            java.lang.Object r0 = r0.valueAt(r1)
            n3.y.b.a.q0.w.u$a r0 = (p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27290u.C27291a) r0
            r11 = r0
            r0 = r11
            r1 = 0
            r0.f76775f = r1
            r0 = r11
            n3.y.b.a.q0.w.j r0 = r0.f76770a
            r0.mo629a()
            int r10 = r10 + 1
            goto L56
        L86:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27290u.mo606a(long, long):void");
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public void mo605d(AbstractC27180h abstractC27180h) {
        this.f76768j = abstractC27180h;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    public boolean mo604h(C27176d c27176d) throws IOException, InterruptedException {
        byte[] bArr = new byte[14];
        boolean z = false;
        c27176d.m757d(bArr, 0, 14, false);
        if (442 == (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            c27176d.m760a(bArr[13] & 7, false);
            c27176d.m757d(bArr, 0, 3, false);
            if (1 == (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[2] & 255))) {
                z = true;
            }
            return z;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x03f9  */
    /* JADX WARN: Type inference failed for: r0v157, types: [long] */
    /* JADX WARN: Type inference failed for: r0v202, types: [long] */
    /* JADX WARN: Type inference failed for: r0v278, types: [long] */
    /* JADX WARN: Type inference failed for: r0v314, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo603i(p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d r9, p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1615
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27290u.mo603i(n3.y.b.a.q0.d, n3.y.b.a.q0.m):int");
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public void release() {
    }
}
