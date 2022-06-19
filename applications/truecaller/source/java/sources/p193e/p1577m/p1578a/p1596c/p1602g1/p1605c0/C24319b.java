package p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0;

import android.util.Pair;
import io.agora.rtc.Constants;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.AbstractC24316a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24792q;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.c0.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/b.class */
public final class C24319b {

    /* renamed from: a */
    public static final byte[] f67529a = C24773d0.m4606r("OpusHead");

    /* renamed from: e.m.a.c.g1.c0.b$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/b$a.class */
    public interface AbstractC24320a {
        /* renamed from: a */
        int mo5259a();

        /* renamed from: b */
        int mo5258b();

        /* renamed from: c */
        boolean mo5257c();
    }

    /* renamed from: e.m.a.c.g1.c0.b$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/b$b.class */
    public static final class C24321b implements AbstractC24320a {

        /* renamed from: a */
        public final int f67530a;

        /* renamed from: b */
        public final int f67531b;

        /* renamed from: c */
        public final C24798t f67532c;

        public C24321b(AbstractC24316a.C24318b c24318b) {
            C24798t c24798t = c24318b.f67528b;
            this.f67532c = c24798t;
            c24798t.m4547C(12);
            this.f67530a = c24798t.m4526t();
            this.f67531b = c24798t.m4526t();
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24319b.AbstractC24320a
        /* renamed from: a */
        public int mo5259a() {
            int i = this.f67530a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f67532c.m4526t();
            }
            return i2;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24319b.AbstractC24320a
        /* renamed from: b */
        public int mo5258b() {
            return this.f67531b;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24319b.AbstractC24320a
        /* renamed from: c */
        public boolean mo5257c() {
            return this.f67530a != 0;
        }
    }

    /* renamed from: e.m.a.c.g1.c0.b$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/b$c.class */
    public static final class C24322c implements AbstractC24320a {

        /* renamed from: a */
        public final C24798t f67533a;

        /* renamed from: b */
        public final int f67534b;

        /* renamed from: c */
        public final int f67535c;

        /* renamed from: d */
        public int f67536d;

        /* renamed from: e */
        public int f67537e;

        public C24322c(AbstractC24316a.C24318b c24318b) {
            C24798t c24798t = c24318b.f67528b;
            this.f67533a = c24798t;
            c24798t.m4547C(12);
            this.f67535c = c24798t.m4526t() & 255;
            this.f67534b = c24798t.m4526t();
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24319b.AbstractC24320a
        /* renamed from: a */
        public int mo5259a() {
            int i = this.f67535c;
            if (i == 8) {
                return this.f67533a.m4529q();
            }
            if (i == 16) {
                return this.f67533a.m4524v();
            }
            int i2 = this.f67536d;
            this.f67536d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.f67537e & 15;
            }
            int m4529q = this.f67533a.m4529q();
            this.f67537e = m4529q;
            return (m4529q & 240) >> 4;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24319b.AbstractC24320a
        /* renamed from: b */
        public int mo5258b() {
            return this.f67534b;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24319b.AbstractC24320a
        /* renamed from: c */
        public boolean mo5257c() {
            return false;
        }
    }

    /* renamed from: a */
    public static Pair<String, byte[]> m5263a(C24798t c24798t, int i) {
        c24798t.m4547C(i + 8 + 4);
        c24798t.m4546D(1);
        m5262b(c24798t);
        c24798t.m4546D(2);
        int m4529q = c24798t.m4529q();
        if ((m4529q & 128) != 0) {
            c24798t.m4546D(2);
        }
        if ((m4529q & 64) != 0) {
            c24798t.m4546D(c24798t.m4524v());
        }
        if ((m4529q & 32) != 0) {
            c24798t.m4546D(2);
        }
        c24798t.m4546D(1);
        m5262b(c24798t);
        String m4571c = C24792q.m4571c(c24798t.m4529q());
        if ("audio/mpeg".equals(m4571c) || "audio/vnd.dts".equals(m4571c) || "audio/vnd.dts.hd".equals(m4571c)) {
            return Pair.create(m4571c, null);
        }
        c24798t.m4546D(12);
        c24798t.m4546D(1);
        int m5262b = m5262b(c24798t);
        byte[] bArr = new byte[m5262b];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, m5262b);
        c24798t.f69505b += m5262b;
        return Pair.create(m4571c, bArr);
    }

    /* renamed from: b */
    public static int m5262b(C24798t c24798t) {
        int m4529q = c24798t.m4529q();
        int i = m4529q & Constants.ERR_WATERMARKR_INFO;
        while (true) {
            int i2 = i;
            if ((m4529q & 128) == 128) {
                m4529q = c24798t.m4529q();
                i = (i2 << 7) | (m4529q & Constants.ERR_WATERMARKR_INFO);
            } else {
                return i2;
            }
        }
    }

    /* renamed from: c */
    public static Pair<Integer, C24333j> m5261c(C24798t c24798t, int i, int i2) {
        Integer num;
        Pair<Integer, C24333j> pair;
        C24333j c24333j;
        int i3;
        int i4;
        byte[] bArr;
        String str;
        Integer num2;
        int i5 = c24798t.f69505b;
        while (true) {
            int i6 = i5;
            if (i6 - i < i2) {
                c24798t.m4547C(i6);
                int m4541e = c24798t.m4541e();
                C26232y.m2306s(m4541e > 0, "childAtomSize should be positive");
                if (c24798t.m4541e() == 1936289382) {
                    int i7 = i6 + 8;
                    int i8 = 0;
                    int i9 = -1;
                    String str2 = null;
                    Integer num3 = null;
                    while (true) {
                        num = num3;
                        if (i7 - i6 >= m4541e) {
                            break;
                        }
                        c24798t.m4547C(i7);
                        int m4541e2 = c24798t.m4541e();
                        int m4541e3 = c24798t.m4541e();
                        if (m4541e3 == 1718775137) {
                            num2 = Integer.valueOf(c24798t.m4541e());
                            str = str2;
                        } else if (m4541e3 == 1935894637) {
                            c24798t.m4546D(4);
                            str = c24798t.m4532n(4);
                            num2 = num;
                        } else {
                            str = str2;
                            num2 = num;
                            if (m4541e3 == 1935894633) {
                                i9 = i7;
                                i8 = m4541e2;
                                num2 = num;
                                str = str2;
                            }
                        }
                        i7 += m4541e2;
                        str2 = str;
                        num3 = num2;
                    }
                    if ("cenc".equals(str2) || "cbc1".equals(str2) || "cens".equals(str2) || "cbcs".equals(str2)) {
                        C26232y.m2306s(num != null, "frma atom is mandatory");
                        C26232y.m2306s(i9 != -1, "schi atom is mandatory");
                        int i10 = i9;
                        int i11 = 8;
                        while (true) {
                            int i12 = i10 + i11;
                            if (i12 - i9 >= i8) {
                                c24333j = null;
                                break;
                            }
                            c24798t.m4547C(i12);
                            int m4541e4 = c24798t.m4541e();
                            if (c24798t.m4541e() == 1952804451) {
                                int m4541e5 = c24798t.m4541e();
                                c24798t.m4546D(1);
                                if (((m4541e5 >> 24) & 255) == 0) {
                                    c24798t.m4546D(1);
                                    i3 = 0;
                                    i4 = 0;
                                } else {
                                    int m4529q = c24798t.m4529q();
                                    i3 = m4529q & 15;
                                    i4 = (m4529q & 240) >> 4;
                                }
                                boolean z = c24798t.m4529q() == 1;
                                int m4529q2 = c24798t.m4529q();
                                byte[] bArr2 = new byte[16];
                                System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr2, 0, 16);
                                c24798t.f69505b += 16;
                                if (!z || m4529q2 != 0) {
                                    bArr = null;
                                } else {
                                    int m4529q3 = c24798t.m4529q();
                                    bArr = new byte[m4529q3];
                                    System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, m4529q3);
                                    c24798t.f69505b += m4529q3;
                                }
                                c24333j = new C24333j(z, str2, m4529q2, bArr2, i4, i3, bArr);
                            } else {
                                i10 = i12;
                                i11 = m4541e4;
                            }
                        }
                        boolean z2 = false;
                        if (c24333j != null) {
                            z2 = true;
                        }
                        C26232y.m2306s(z2, "tenc atom is mandatory");
                        pair = Pair.create(num, c24333j);
                    } else {
                        pair = null;
                    }
                    if (pair != null) {
                        return pair;
                    }
                }
                i5 = i6 + m4541e;
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0138, code lost:
        if (r36 == 0) goto L49;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:287:0x07c6  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0b5e  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0bd9  */
    /* JADX WARN: Removed duplicated region for block: B:497:0x1141  */
    /* JADX WARN: Removed duplicated region for block: B:546:0x0bac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:562:0x1164 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v171, types: [long] */
    /* JADX WARN: Type inference failed for: r0v173, types: [long] */
    /* JADX WARN: Type inference failed for: r0v175, types: [long] */
    /* JADX WARN: Type inference failed for: r0v177, types: [long] */
    /* JADX WARN: Type inference failed for: r0v915, types: [long] */
    /* JADX WARN: Type inference failed for: r0v938, types: [long] */
    /* JADX WARN: Type inference failed for: r0v941, types: [long] */
    /* JADX WARN: Type inference failed for: r0v943, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v16 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24332i m5260d(p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.AbstractC24316a.C24317a r17, p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.AbstractC24316a.C24318b r18, long r19, com.google.android.exoplayer2.drm.DrmInitData r21, boolean r22, boolean r23) throws p193e.p1577m.p1578a.p1596c.C24560m0 {
        /*
            Method dump skipped, instructions count: 4901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.C24319b.m5260d(e.m.a.c.g1.c0.a$a, e.m.a.c.g1.c0.a$b, long, com.google.android.exoplayer2.drm.DrmInitData, boolean, boolean):e.m.a.c.g1.c0.i");
    }
}
