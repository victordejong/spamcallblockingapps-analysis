package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: n3.y.b.a.n0.g */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/g.class */
public interface AbstractC27121g {

    /* renamed from: a */
    public static final ByteBuffer f75837a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* renamed from: n3.y.b.a.n0.g$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/g$a.class */
    public static final class C27122a extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C27122a(int r7, int r8, int r9) {
            /*
                r6 = this;
                r0 = 78
                java.lang.String r1 = "Unhandled format: "
                r2 = r7
                java.lang.String r3 = " Hz, "
                r4 = r8
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8546z(r0, r1, r2, r3, r4)
                r10 = r0
                r0 = r10
                java.lang.String r1 = " channels in encoding "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r10
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                r1 = r10
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g.C27122a.<init>(int, int, int):void");
        }
    }

    /* renamed from: b */
    boolean mo837b();

    /* renamed from: c */
    boolean mo821c();

    /* renamed from: d */
    void mo836d(ByteBuffer byteBuffer);

    /* renamed from: e */
    void mo820e();

    /* renamed from: f */
    ByteBuffer mo819f();

    void flush();

    /* renamed from: g */
    int mo818g();

    /* renamed from: h */
    int mo817h();

    /* renamed from: i */
    int mo816i();

    /* renamed from: j */
    boolean mo835j(int i, int i2, int i3) throws C27122a;

    void reset();
}
