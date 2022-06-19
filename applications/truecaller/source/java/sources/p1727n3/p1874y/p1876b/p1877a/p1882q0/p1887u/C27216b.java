package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Pair;
import io.agora.rtc.Constants;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.AbstractC27213a;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27428j;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.q0.u.b */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/u/b.class */
public final class C27216b {

    /* renamed from: a */
    public static final byte[] f76263a = C27445x.m270q("OpusHead");

    /* renamed from: n3.y.b.a.q0.u.b$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/u/b$a.class */
    public interface AbstractC27217a {
        /* renamed from: a */
        int mo694a();

        /* renamed from: b */
        int mo693b();

        /* renamed from: c */
        boolean mo692c();
    }

    /* renamed from: n3.y.b.a.q0.u.b$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/u/b$b.class */
    public static final class C27218b implements AbstractC27217a {

        /* renamed from: a */
        public final int f76264a;

        /* renamed from: b */
        public final int f76265b;

        /* renamed from: c */
        public final C27434m f76266c;

        public C27218b(AbstractC27213a.C27215b c27215b) {
            C27434m c27434m = c27215b.f76262b;
            this.f76266c = c27434m;
            c27434m.m315z(12);
            this.f76264a = c27434m.m323r();
            this.f76265b = c27434m.m323r();
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27216b.AbstractC27217a
        /* renamed from: a */
        public int mo694a() {
            int i = this.f76264a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f76266c.m323r();
            }
            return i2;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27216b.AbstractC27217a
        /* renamed from: b */
        public int mo693b() {
            return this.f76265b;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27216b.AbstractC27217a
        /* renamed from: c */
        public boolean mo692c() {
            return this.f76264a != 0;
        }
    }

    /* renamed from: n3.y.b.a.q0.u.b$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/u/b$c.class */
    public static final class C27219c implements AbstractC27217a {

        /* renamed from: a */
        public final C27434m f76267a;

        /* renamed from: b */
        public final int f76268b;

        /* renamed from: c */
        public final int f76269c;

        /* renamed from: d */
        public int f76270d;

        /* renamed from: e */
        public int f76271e;

        public C27219c(AbstractC27213a.C27215b c27215b) {
            C27434m c27434m = c27215b.f76262b;
            this.f76267a = c27434m;
            c27434m.m315z(12);
            this.f76269c = c27434m.m323r() & 255;
            this.f76268b = c27434m.m323r();
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27216b.AbstractC27217a
        /* renamed from: a */
        public int mo694a() {
            int i = this.f76269c;
            if (i == 8) {
                return this.f76267a.m326o();
            }
            if (i == 16) {
                return this.f76267a.m321t();
            }
            int i2 = this.f76270d;
            this.f76270d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.f76271e & 15;
            }
            int m326o = this.f76267a.m326o();
            this.f76271e = m326o;
            return (m326o & 240) >> 4;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27216b.AbstractC27217a
        /* renamed from: b */
        public int mo693b() {
            return this.f76268b;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27216b.AbstractC27217a
        /* renamed from: c */
        public boolean mo692c() {
            return false;
        }
    }

    /* renamed from: a */
    public static Pair<String, byte[]> m698a(C27434m c27434m, int i) {
        c27434m.m315z(i + 8 + 4);
        c27434m.m341A(1);
        m697b(c27434m);
        c27434m.m341A(2);
        int m326o = c27434m.m326o();
        if ((m326o & 128) != 0) {
            c27434m.m341A(2);
        }
        if ((m326o & 64) != 0) {
            c27434m.m341A(c27434m.m321t());
        }
        if ((m326o & 32) != 0) {
            c27434m.m341A(2);
        }
        c27434m.m341A(1);
        m697b(c27434m);
        String m361c = C27428j.m361c(c27434m.m326o());
        if ("audio/mpeg".equals(m361c) || "audio/vnd.dts".equals(m361c) || "audio/vnd.dts.hd".equals(m361c)) {
            return Pair.create(m361c, null);
        }
        c27434m.m341A(12);
        c27434m.m341A(1);
        int m697b = m697b(c27434m);
        byte[] bArr = new byte[m697b];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, m697b);
        c27434m.f77201b += m697b;
        return Pair.create(m361c, bArr);
    }

    /* renamed from: b */
    public static int m697b(C27434m c27434m) {
        int m326o = c27434m.m326o();
        int i = m326o & Constants.ERR_WATERMARKR_INFO;
        while (true) {
            int i2 = i;
            if ((m326o & 128) == 128) {
                m326o = c27434m.m326o();
                i = (i2 << 7) | (m326o & Constants.ERR_WATERMARKR_INFO);
            } else {
                return i2;
            }
        }
    }

    /* renamed from: c */
    public static Pair<Integer, C27230j> m696c(C27434m c27434m, int i, int i2) {
        Integer num;
        Pair<Integer, C27230j> pair;
        C27230j c27230j;
        int i3;
        int i4;
        byte[] bArr;
        String str;
        Integer num2;
        int i5 = c27434m.f77201b;
        while (true) {
            int i6 = i5;
            if (i6 - i < i2) {
                c27434m.m315z(i6);
                int m337d = c27434m.m337d();
                MediaSessionCompat.m43208q(m337d > 0, "childAtomSize should be positive");
                if (c27434m.m337d() == 1936289382) {
                    int i7 = i6 + 8;
                    int i8 = 0;
                    int i9 = -1;
                    String str2 = null;
                    Integer num3 = null;
                    while (true) {
                        num = num3;
                        if (i7 - i6 >= m337d) {
                            break;
                        }
                        c27434m.m315z(i7);
                        int m337d2 = c27434m.m337d();
                        int m337d3 = c27434m.m337d();
                        if (m337d3 == 1718775137) {
                            num2 = Integer.valueOf(c27434m.m337d());
                            str = str2;
                        } else if (m337d3 == 1935894637) {
                            c27434m.m341A(4);
                            str = c27434m.m328m(4);
                            num2 = num;
                        } else {
                            str = str2;
                            num2 = num;
                            if (m337d3 == 1935894633) {
                                i9 = i7;
                                i8 = m337d2;
                                num2 = num;
                                str = str2;
                            }
                        }
                        i7 += m337d2;
                        str2 = str;
                        num3 = num2;
                    }
                    if ("cenc".equals(str2) || "cbc1".equals(str2) || "cens".equals(str2) || "cbcs".equals(str2)) {
                        MediaSessionCompat.m43208q(num != null, "frma atom is mandatory");
                        MediaSessionCompat.m43208q(i9 != -1, "schi atom is mandatory");
                        int i10 = i9;
                        int i11 = 8;
                        while (true) {
                            int i12 = i10 + i11;
                            if (i12 - i9 >= i8) {
                                c27230j = null;
                                break;
                            }
                            c27434m.m315z(i12);
                            int m337d4 = c27434m.m337d();
                            if (c27434m.m337d() == 1952804451) {
                                int m337d5 = c27434m.m337d();
                                c27434m.m341A(1);
                                if (((m337d5 >> 24) & 255) == 0) {
                                    c27434m.m341A(1);
                                    i4 = 0;
                                    i3 = 0;
                                } else {
                                    int m326o = c27434m.m326o();
                                    i4 = m326o & 15;
                                    i3 = (m326o & 240) >> 4;
                                }
                                boolean z = c27434m.m326o() == 1;
                                int m326o2 = c27434m.m326o();
                                byte[] bArr2 = new byte[16];
                                System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr2, 0, 16);
                                c27434m.f77201b += 16;
                                if (!z || m326o2 != 0) {
                                    bArr = null;
                                } else {
                                    int m326o3 = c27434m.m326o();
                                    bArr = new byte[m326o3];
                                    System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, m326o3);
                                    c27434m.f77201b += m326o3;
                                }
                                c27230j = new C27230j(z, str2, m326o2, bArr2, i3, i4, bArr);
                            } else {
                                i10 = i12;
                                i11 = m337d4;
                            }
                        }
                        boolean z2 = false;
                        if (c27230j != null) {
                            z2 = true;
                        }
                        MediaSessionCompat.m43208q(z2, "tenc atom is mandatory");
                        pair = Pair.create(num, c27230j);
                    } else {
                        pair = null;
                    }
                    if (pair != null) {
                        return pair;
                    }
                }
                i5 = i6 + m337d;
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:332:0x09f3, code lost:
        if (r0 == 1634492771) goto L334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x012d, code lost:
        if (r34 == 0) goto L49;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:492:0x10f5  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x111c A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v181, types: [long] */
    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187, types: [long] */
    /* JADX WARN: Type inference failed for: r0v909, types: [long] */
    /* JADX WARN: Type inference failed for: r0v932, types: [long] */
    /* JADX WARN: Type inference failed for: r0v935, types: [long] */
    /* JADX WARN: Type inference failed for: r0v937, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v15 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27229i m695d(p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.AbstractC27213a.C27214a r17, p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.AbstractC27213a.C27215b r18, long r19, androidx.media2.exoplayer.external.drm.DrmInitData r21, boolean r22, boolean r23) throws p1727n3.p1874y.p1876b.p1877a.C27074c0 {
        /*
            Method dump skipped, instructions count: 4816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u.C27216b.m695d(n3.y.b.a.q0.u.a$a, n3.y.b.a.q0.u.a$b, long, androidx.media2.exoplayer.external.drm.DrmInitData, boolean, boolean):n3.y.b.a.q0.u.i");
    }
}
