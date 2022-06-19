package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.AbstractC5062c;
import com.google.android.exoplayer2.extractor.mp4.C5073f;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p243c1.C4988p;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5529r;
import com.google.android.exoplayer2.util.C5536v;
import com.google.android.exoplayer2.video.C5558h;
import com.google.android.exoplayer2.video.C5559i;
import com.google.android.exoplayer2.video.C5560j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.extractor.mp4.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/d.class */
public final class C5065d {

    /* renamed from: a */
    private static final byte[] f15768a = C5515h0.m18854R("OpusHead");

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.extractor.mp4.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/d$a.class */
    public static final class C5066a {

        /* renamed from: a */
        public final int f15769a;

        /* renamed from: b */
        public int f15770b;

        /* renamed from: c */
        public int f15771c;

        /* renamed from: d */
        public long f15772d;

        /* renamed from: e */
        private final boolean f15773e;

        /* renamed from: f */
        private final C5536v f15774f;

        /* renamed from: g */
        private final C5536v f15775g;

        /* renamed from: h */
        private int f15776h;

        /* renamed from: i */
        private int f15777i;

        public C5066a(C5536v c5536v, C5536v c5536v2, boolean z) {
            this.f15775g = c5536v;
            this.f15774f = c5536v2;
            this.f15773e = z;
            c5536v2.m18680M(12);
            this.f15769a = c5536v2.m18689D();
            c5536v.m18680M(12);
            this.f15777i = c5536v.m18689D();
            C5508e.m18909g(c5536v.m18668k() != 1 ? false : true, "first_chunk must be 1");
            this.f15770b = -1;
        }

        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        /* renamed from: a */
        public boolean m20688a() {
            int i = this.f15770b + 1;
            this.f15770b = i;
            if (i == this.f15769a) {
                return false;
            }
            this.f15772d = this.f15773e ? this.f15774f.m18688E() : this.f15774f.m18691B();
            if (this.f15770b != this.f15776h) {
                return true;
            }
            this.f15771c = this.f15775g.m18689D();
            this.f15775g.m18679N(4);
            int i2 = this.f15777i - 1;
            this.f15777i = i2;
            this.f15776h = i2 > 0 ? this.f15775g.m18689D() - 1 : -1;
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.extractor.mp4.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/d$b.class */
    public interface AbstractC5067b {
        /* renamed from: a */
        boolean mo20687a();

        /* renamed from: b */
        int mo20686b();

        /* renamed from: c */
        int mo20685c();
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.d$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/d$c.class */
    public static final class C5068c {

        /* renamed from: a */
        public final C5086m[] f15778a;

        /* renamed from: b */
        public Format f15779b;

        /* renamed from: c */
        public int f15780c;

        /* renamed from: d */
        public int f15781d = 0;

        public C5068c(int i) {
            this.f15778a = new C5086m[i];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.mp4.d$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/d$d.class */
    public static final class C5069d implements AbstractC5067b {

        /* renamed from: a */
        private final int f15782a;

        /* renamed from: b */
        private final int f15783b;

        /* renamed from: c */
        private final C5536v f15784c;

        public C5069d(AbstractC5062c.C5064b c5064b) {
            C5536v c5536v = c5064b.f15767b;
            this.f15784c = c5536v;
            c5536v.m18680M(12);
            this.f15782a = c5536v.m18689D();
            this.f15783b = c5536v.m18689D();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C5065d.AbstractC5067b
        /* renamed from: a */
        public boolean mo20687a() {
            return this.f15782a != 0;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C5065d.AbstractC5067b
        /* renamed from: b */
        public int mo20686b() {
            return this.f15783b;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C5065d.AbstractC5067b
        /* renamed from: c */
        public int mo20685c() {
            int i = this.f15782a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f15784c.m18689D();
            }
            return i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.mp4.d$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/d$e.class */
    public static final class C5070e implements AbstractC5067b {

        /* renamed from: a */
        private final C5536v f15785a;

        /* renamed from: b */
        private final int f15786b;

        /* renamed from: c */
        private final int f15787c;

        /* renamed from: d */
        private int f15788d;

        /* renamed from: e */
        private int f15789e;

        public C5070e(AbstractC5062c.C5064b c5064b) {
            C5536v c5536v = c5064b.f15767b;
            this.f15785a = c5536v;
            c5536v.m18680M(12);
            this.f15787c = c5536v.m18689D() & 255;
            this.f15786b = c5536v.m18689D();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C5065d.AbstractC5067b
        /* renamed from: a */
        public boolean mo20687a() {
            return false;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C5065d.AbstractC5067b
        /* renamed from: b */
        public int mo20686b() {
            return this.f15786b;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.C5065d.AbstractC5067b
        /* renamed from: c */
        public int mo20685c() {
            int i = this.f15787c;
            if (i == 8) {
                return this.f15785a.m18653z();
            }
            if (i == 16) {
                return this.f15785a.m18687F();
            }
            int i2 = this.f15788d;
            this.f15788d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.f15789e & 15;
            }
            int m18653z = this.f15785a.m18653z();
            this.f15789e = m18653z;
            return (m18653z & 240) >> 4;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.d$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/d$f.class */
    public static final class C5071f {

        /* renamed from: a */
        private final int f15790a;

        /* renamed from: b */
        private final long f15791b;

        /* renamed from: c */
        private final int f15792c;

        public C5071f(int i, long j, int i2) {
            this.f15790a = i;
            this.f15791b = j;
            this.f15792c = i2;
        }
    }

    /* renamed from: a */
    private static boolean m20713a(long[] jArr, long j, long j2, long j3) {
        boolean z = true;
        int length = jArr.length - 1;
        int m18819n = C5515h0.m18819n(4, 0, length);
        int m18819n2 = C5515h0.m18819n(jArr.length - 4, 0, length);
        if (jArr[0] > j2 || j2 >= jArr[m18819n] || jArr[m18819n2] >= j3 || j3 > j) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private static int m20712b(C5536v c5536v, int i, int i2) {
        int m18676c = c5536v.m18676c();
        while (true) {
            int i3 = m18676c;
            if (i3 - i < i2) {
                c5536v.m18680M(i3);
                int m18668k = c5536v.m18668k();
                C5508e.m18914b(m18668k > 0, "childAtomSize should be positive");
                if (c5536v.m18668k() == 1702061171) {
                    return i3;
                }
                m18676c = i3 + m18668k;
            } else {
                return -1;
            }
        }
    }

    /* renamed from: c */
    private static int m20711c(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 4 : -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x0202  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m20710d(com.google.android.exoplayer2.util.C5536v r14, int r15, int r16, int r17, int r18, java.lang.String r19, boolean r20, com.google.android.exoplayer2.drm.DrmInitData r21, com.google.android.exoplayer2.extractor.mp4.C5065d.C5068c r22, int r23) {
        /*
            Method dump skipped, instructions count: 1147
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.C5065d.m20710d(com.google.android.exoplayer2.util.v, int, int, int, int, java.lang.String, boolean, com.google.android.exoplayer2.drm.DrmInitData, com.google.android.exoplayer2.extractor.mp4.d$c, int):void");
    }

    /* renamed from: e */
    static Pair<Integer, C5086m> m20709e(C5536v c5536v, int i, int i2) {
        String str;
        Integer num;
        int i3 = i + 8;
        String str2 = null;
        Integer num2 = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            c5536v.m18680M(i3);
            int m18668k = c5536v.m18668k();
            int m18668k2 = c5536v.m18668k();
            if (m18668k2 == 1718775137) {
                num = Integer.valueOf(c5536v.m18668k());
                str = str2;
            } else if (m18668k2 == 1935894637) {
                c5536v.m18679N(4);
                str = c5536v.m18656w(4);
                num = num2;
            } else {
                str = str2;
                num = num2;
                if (m18668k2 == 1935894633) {
                    i4 = i3;
                    i5 = m18668k;
                    num = num2;
                    str = str2;
                }
            }
            i3 += m18668k;
            str2 = str;
            num2 = num;
        }
        if ("cenc".equals(str2) || "cbc1".equals(str2) || "cens".equals(str2) || "cbcs".equals(str2)) {
            C5508e.m18914b(num2 != null, "frma atom is mandatory");
            C5508e.m18914b(i4 != -1, "schi atom is mandatory");
            C5086m m20697q = m20697q(c5536v, i4, i5, str2);
            boolean z = false;
            if (m20697q != null) {
                z = true;
            }
            C5508e.m18914b(z, "tenc atom is mandatory");
            return Pair.create(num2, m20697q);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* renamed from: f */
    private static Pair<long[], long[]> m20708f(AbstractC5062c.C5063a c5063a) {
        AbstractC5062c.C5064b m20714g;
        if (c5063a == null || (m20714g = c5063a.m20714g(1701606260)) == null) {
            return Pair.create(null, null);
        }
        C5536v c5536v = m20714g.f15767b;
        c5536v.m18680M(8);
        int m20718c = AbstractC5062c.m20718c(c5536v.m18668k());
        int m18689D = c5536v.m18689D();
        long[] jArr = new long[m18689D];
        long[] jArr2 = new long[m18689D];
        for (int i = 0; i < m18689D; i++) {
            jArr[i] = (m20718c == 1 ? c5536v.m18688E() : c5536v.m18691B()) == true ? 1 : 0;
            jArr2[i] = (m20718c == 1 ? c5536v.m18660s() : (long) c5536v.m18668k()) == true ? 1 : 0;
            if (c5536v.m18657v() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            c5536v.m18679N(2);
        }
        return Pair.create(jArr, jArr2);
    }

    /* renamed from: g */
    private static Pair<String, byte[]> m20707g(C5536v c5536v, int i) {
        c5536v.m18680M(i + 8 + 4);
        c5536v.m18679N(1);
        m20706h(c5536v);
        c5536v.m18679N(2);
        int m18653z = c5536v.m18653z();
        if ((m18653z & 128) != 0) {
            c5536v.m18679N(2);
        }
        if ((m18653z & 64) != 0) {
            c5536v.m18679N(c5536v.m18687F());
        }
        if ((m18653z & 32) != 0) {
            c5536v.m18679N(2);
        }
        c5536v.m18679N(1);
        m20706h(c5536v);
        String m18731f = C5529r.m18731f(c5536v.m18653z());
        if ("audio/mpeg".equals(m18731f) || "audio/vnd.dts".equals(m18731f) || "audio/vnd.dts.hd".equals(m18731f)) {
            return Pair.create(m18731f, null);
        }
        c5536v.m18679N(12);
        c5536v.m18679N(1);
        int m20706h = m20706h(c5536v);
        byte[] bArr = new byte[m20706h];
        c5536v.m18671h(bArr, 0, m20706h);
        return Pair.create(m18731f, bArr);
    }

    /* renamed from: h */
    private static int m20706h(C5536v c5536v) {
        int m18653z = c5536v.m18653z();
        int i = m18653z & 127;
        while (true) {
            int i2 = i;
            if ((m18653z & 128) == 128) {
                m18653z = c5536v.m18653z();
                i = (i2 << 7) | (m18653z & 127);
            } else {
                return i2;
            }
        }
    }

    /* renamed from: i */
    private static int m20705i(C5536v c5536v) {
        c5536v.m18680M(16);
        return c5536v.m18668k();
    }

    /* renamed from: j */
    private static Metadata m20704j(C5536v c5536v, int i) {
        c5536v.m18679N(8);
        ArrayList arrayList = new ArrayList();
        while (c5536v.m18676c() < i) {
            Metadata.Entry m20631d = C5079h.m20631d(c5536v);
            if (m20631d != null) {
                arrayList.add(m20631d);
            }
        }
        return arrayList.isEmpty() ? null : new Metadata(arrayList);
    }

    /* renamed from: k */
    private static Pair<Long, String> m20703k(C5536v c5536v) {
        c5536v.m18680M(8);
        int m20718c = AbstractC5062c.m20718c(c5536v.m18668k());
        c5536v.m18679N(m20718c == 0 ? 8 : 16);
        long m18691B = c5536v.m18691B();
        int i = 8;
        if (m20718c == 0) {
            i = 4;
        }
        c5536v.m18679N(i);
        int m18687F = c5536v.m18687F();
        return Pair.create(Long.valueOf(m18691B), "" + ((char) (((m18687F >> 10) & 31) + 96)) + ((char) (((m18687F >> 5) & 31) + 96)) + ((char) ((m18687F & 31) + 96)));
    }

    /* renamed from: l */
    public static Metadata m20702l(AbstractC5062c.C5063a c5063a) {
        AbstractC5062c.C5064b m20714g = c5063a.m20714g(1751411826);
        AbstractC5062c.C5064b m20714g2 = c5063a.m20714g(1801812339);
        AbstractC5062c.C5064b m20714g3 = c5063a.m20714g(1768715124);
        Metadata metadata = null;
        if (m20714g != null) {
            metadata = null;
            if (m20714g2 != null) {
                metadata = null;
                if (m20714g3 != null) {
                    if (m20705i(m20714g.f15767b) != 1835299937) {
                        metadata = null;
                    } else {
                        C5536v c5536v = m20714g2.f15767b;
                        c5536v.m18680M(12);
                        int m18668k = c5536v.m18668k();
                        String[] strArr = new String[m18668k];
                        for (int i = 0; i < m18668k; i++) {
                            int m18668k2 = c5536v.m18668k();
                            c5536v.m18679N(4);
                            strArr[i] = c5536v.m18656w(m18668k2 - 8);
                        }
                        C5536v c5536v2 = m20714g3.f15767b;
                        c5536v2.m18680M(8);
                        ArrayList arrayList = new ArrayList();
                        while (c5536v2.m18678a() > 8) {
                            int m18676c = c5536v2.m18676c();
                            int m18668k3 = c5536v2.m18668k();
                            int m18668k4 = c5536v2.m18668k() - 1;
                            if (m18668k4 < 0 || m18668k4 >= m18668k) {
                                C5526o.m18742f("AtomParsers", "Skipped metadata with unknown key index: " + m18668k4);
                            } else {
                                MdtaMetadataEntry m20628g = C5079h.m20628g(c5536v2, m18676c + m18668k3, strArr[m18668k4]);
                                if (m20628g != null) {
                                    arrayList.add(m20628g);
                                }
                            }
                            c5536v2.m18680M(m18676c + m18668k3);
                        }
                        metadata = arrayList.isEmpty() ? null : new Metadata(arrayList);
                    }
                }
            }
        }
        return metadata;
    }

    /* renamed from: m */
    private static long m20701m(C5536v c5536v) {
        int i = 8;
        c5536v.m18680M(8);
        if (AbstractC5062c.m20718c(c5536v.m18668k()) != 0) {
            i = 16;
        }
        c5536v.m18679N(i);
        return c5536v.m18691B();
    }

    /* renamed from: n */
    private static float m20700n(C5536v c5536v, int i) {
        c5536v.m18680M(i + 8);
        return c5536v.m18689D() / c5536v.m18689D();
    }

    /* renamed from: o */
    private static byte[] m20699o(C5536v c5536v, int i, int i2) {
        int i3 = i;
        int i4 = 8;
        while (true) {
            int i5 = i3 + i4;
            if (i5 - i < i2) {
                c5536v.m18680M(i5);
                int m18668k = c5536v.m18668k();
                if (c5536v.m18668k() == 1886547818) {
                    return Arrays.copyOfRange(c5536v.f17941a, i5, m18668k + i5);
                }
                i3 = i5;
                i4 = m18668k;
            } else {
                return null;
            }
        }
    }

    /* renamed from: p */
    private static Pair<Integer, C5086m> m20698p(C5536v c5536v, int i, int i2) {
        Pair<Integer, C5086m> m20709e;
        int m18676c = c5536v.m18676c();
        while (true) {
            int i3 = m18676c;
            if (i3 - i < i2) {
                c5536v.m18680M(i3);
                int m18668k = c5536v.m18668k();
                C5508e.m18914b(m18668k > 0, "childAtomSize should be positive");
                if (c5536v.m18668k() == 1936289382 && (m20709e = m20709e(c5536v, i3, m18668k)) != null) {
                    return m20709e;
                }
                m18676c = i3 + m18668k;
            } else {
                return null;
            }
        }
    }

    /* renamed from: q */
    private static C5086m m20697q(C5536v c5536v, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = 8;
        while (true) {
            int i7 = i5 + i6;
            if (i7 - i < i2) {
                c5536v.m18680M(i7);
                int m18668k = c5536v.m18668k();
                if (c5536v.m18668k() == 1952804451) {
                    int m20718c = AbstractC5062c.m20718c(c5536v.m18668k());
                    c5536v.m18679N(1);
                    if (m20718c == 0) {
                        c5536v.m18679N(1);
                        i3 = 0;
                        i4 = 0;
                    } else {
                        int m18653z = c5536v.m18653z();
                        i4 = m18653z & 15;
                        i3 = (m18653z & 240) >> 4;
                    }
                    boolean z = c5536v.m18653z() == 1;
                    int m18653z2 = c5536v.m18653z();
                    byte[] bArr = new byte[16];
                    c5536v.m18671h(bArr, 0, 16);
                    byte[] bArr2 = null;
                    if (z) {
                        bArr2 = null;
                        if (m18653z2 == 0) {
                            int m18653z3 = c5536v.m18653z();
                            bArr2 = new byte[m18653z3];
                            c5536v.m18671h(bArr2, 0, m18653z3);
                        }
                    }
                    return new C5086m(z, str, m18653z2, bArr, i3, i4, bArr2);
                }
                i5 = i7;
                i6 = m18668k;
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v231, types: [long] */
    /* JADX WARN: Type inference failed for: r0v268, types: [long] */
    /* JADX WARN: Type inference failed for: r0v353, types: [long] */
    /* JADX WARN: Type inference failed for: r0v363, types: [long] */
    /* JADX WARN: Type inference failed for: r0v409, types: [long] */
    /* renamed from: r */
    public static C5088o m20696r(C5085l c5085l, AbstractC5062c.C5063a c5063a, C4988p c4988p) {
        C5069d c5069d;
        boolean z;
        int i;
        int i2;
        C5536v c5536v;
        char c;
        int i3;
        int i4;
        int[] iArr;
        int[] iArr2;
        long[] jArr;
        long[] jArr2;
        int i5;
        int i6;
        int i7;
        int[] iArr3;
        int[] iArr4;
        long[] jArr3;
        boolean z2;
        boolean z3;
        int i8;
        AbstractC5062c.C5064b m20714g = c5063a.m20714g(1937011578);
        if (m20714g != null) {
            c5069d = new C5069d(m20714g);
        } else {
            AbstractC5062c.C5064b m20714g2 = c5063a.m20714g(1937013298);
            if (m20714g2 == null) {
                throw new ParserException("Track has no sample table size information");
            }
            c5069d = new C5070e(m20714g2);
        }
        int mo20686b = c5069d.mo20686b();
        if (mo20686b == 0) {
            return new C5088o(c5085l, new long[0], new int[0], 0, new long[0], new int[0], -9223372036854775807L);
        }
        AbstractC5062c.C5064b m20714g3 = c5063a.m20714g(1937007471);
        if (m20714g3 == null) {
            m20714g3 = c5063a.m20714g(1668232756);
            z = true;
        } else {
            z = false;
        }
        C5536v c5536v2 = m20714g3.f15767b;
        C5536v c5536v3 = c5063a.m20714g(1937011555).f15767b;
        C5536v c5536v4 = c5063a.m20714g(1937011827).f15767b;
        AbstractC5062c.C5064b m20714g4 = c5063a.m20714g(1937011571);
        C5536v c5536v5 = m20714g4 != null ? m20714g4.f15767b : null;
        AbstractC5062c.C5064b m20714g5 = c5063a.m20714g(1668576371);
        C5536v c5536v6 = m20714g5 != null ? m20714g5.f15767b : null;
        C5066a c5066a = new C5066a(c5536v3, c5536v2, z);
        c5536v4.m18680M(12);
        int m18689D = c5536v4.m18689D() - 1;
        int m18689D2 = c5536v4.m18689D();
        int m18689D3 = c5536v4.m18689D();
        if (c5536v6 != null) {
            c5536v6.m18680M(12);
            i = c5536v6.m18689D();
        } else {
            i = 0;
        }
        int i9 = -1;
        if (c5536v5 != null) {
            c5536v5.m18680M(12);
            int m18689D4 = c5536v5.m18689D();
            i2 = m18689D4;
            c5536v = null;
            if (m18689D4 > 0) {
                i9 = c5536v5.m18689D() - 1;
                c5536v = c5536v5;
                i2 = m18689D4;
            }
        } else {
            c5536v = c5536v5;
            i2 = 0;
        }
        if (!(c5069d.mo20687a() && "audio/raw".equals(c5085l.f15889f.f14461l) && m18689D == 0 && i == 0 && i2 == 0)) {
            long[] jArr4 = new long[mo20686b];
            int[] iArr5 = new int[mo20686b];
            jArr = new long[mo20686b];
            int[] iArr6 = new int[mo20686b];
            int i10 = i9;
            char c2 = 0;
            char c3 = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = i;
            int i14 = m18689D2;
            int i15 = i2;
            int i16 = 0;
            int i17 = 0;
            int i18 = i13;
            int i19 = mo20686b;
            int i20 = 0;
            while (true) {
                if (i20 >= i19) {
                    i6 = i14;
                    i7 = i16;
                    iArr3 = iArr5;
                    iArr4 = iArr6;
                    jArr3 = jArr4;
                    break;
                }
                boolean z4 = true;
                char c4 = c3;
                while (true) {
                    z3 = z4;
                    if (i16 != 0) {
                        break;
                    }
                    z4 = c5066a.m20688a();
                    z3 = z4;
                    if (!z4) {
                        break;
                    }
                    c4 = c5066a.f15772d;
                    i16 = c5066a.f15771c;
                }
                i6 = i14;
                if (!z3) {
                    C5526o.m18742f("AtomParsers", "Unexpected end of chunk data");
                    long[] copyOf = Arrays.copyOf(jArr4, i20);
                    iArr3 = Arrays.copyOf(iArr5, i20);
                    jArr = Arrays.copyOf(jArr, i20);
                    i19 = i20;
                    i7 = i16;
                    jArr3 = copyOf;
                    iArr4 = Arrays.copyOf(iArr6, i20);
                    break;
                }
                int i21 = i18;
                int i22 = i17;
                int i23 = i12;
                if (c5536v6 != null) {
                    while (i12 == 0 && i18 > 0) {
                        i12 = c5536v6.m18689D();
                        i17 = c5536v6.m18668k();
                        i18--;
                    }
                    i23 = i12 - 1;
                    i22 = i17;
                    i21 = i18;
                }
                jArr4[i20] = c4 == 1 ? 1 : 0;
                iArr5[i20] = c5069d.mo20685c();
                int i24 = i11;
                if (iArr5[i20] > i11) {
                    i24 = iArr5[i20];
                }
                jArr[i20] = c2 + i22;
                iArr6[i20] = c5536v == null ? 1 : 0;
                int i25 = i10;
                int i26 = i15;
                if (i20 == i10) {
                    iArr6[i20] = 1;
                    int i27 = i15 - 1;
                    i25 = i10;
                    i26 = i27;
                    if (i27 > 0) {
                        i25 = c5536v.m18689D() - 1;
                        i26 = i27;
                    }
                }
                c2 += m18689D3;
                int i28 = i6 - 1;
                if (i28 != 0 || m18689D <= 0) {
                    i8 = m18689D3;
                } else {
                    i28 = c5536v4.m18689D();
                    i8 = c5536v4.m18668k();
                    m18689D--;
                }
                long j = iArr5[i20];
                i20++;
                c3 = c4 + j;
                m18689D3 = i8;
                int i29 = i22;
                i10 = i25;
                i15 = i26;
                i11 = i24;
                i14 = i28;
                i18 = i21;
                i17 = i29;
                i16--;
                i12 = i23;
            }
            c = c2 + i17;
            while (true) {
                if (i18 <= 0) {
                    z2 = true;
                    break;
                } else if (c5536v6.m18689D() != 0) {
                    z2 = false;
                    break;
                } else {
                    c5536v6.m18668k();
                    i18--;
                }
            }
            if (i15 != 0 || i6 != 0 || i7 != 0 || m18689D != 0 || i12 != 0 || !z2) {
                StringBuilder sb = new StringBuilder();
                sb.append("Inconsistent stbl box for track ");
                sb.append(c5085l.f15884a);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i15);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(i6);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i7);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(m18689D);
                sb.append(", remainingSamplesAtTimestampOffset ");
                sb.append(i12);
                sb.append(!z2 ? ", ctts invalid" : "");
                C5526o.m18742f("AtomParsers", sb.toString());
            }
            i4 = i19;
            long[] jArr5 = jArr3;
            iArr = iArr4;
            i3 = i11;
            iArr2 = iArr3;
            jArr2 = jArr5;
        } else {
            int i30 = c5066a.f15769a;
            long[] jArr6 = new long[i30];
            int[] iArr7 = new int[i30];
            while (c5066a.m20688a()) {
                int i31 = c5066a.f15770b;
                jArr6[i31] = c5066a.f15772d;
                iArr7[i31] = c5066a.f15771c;
            }
            Format format = c5085l.f15889f;
            C5073f.C5075b m20681a = C5073f.m20681a(C5515h0.m18863I(format.f14446A, format.f14474y), jArr6, iArr7, m18689D3);
            jArr2 = m20681a.f15797a;
            iArr2 = m20681a.f15798b;
            i3 = m20681a.f15799c;
            jArr = m20681a.f15800d;
            iArr = m20681a.f15801e;
            c = m20681a.f15802f;
            i4 = mo20686b;
        }
        long m18822l0 = C5515h0.m18822l0(c, 1000000L, c5085l.f15886c);
        long[] jArr7 = c5085l.f15891h;
        if (jArr7 == null) {
            C5515h0.m18820m0(jArr, 1000000L, c5085l.f15886c);
            return new C5088o(c5085l, jArr2, iArr2, i3, jArr, iArr, m18822l0);
        }
        if (jArr7.length == 1 && c5085l.f15885b == 1 && jArr.length >= 2) {
            long j2 = c5085l.f15892i[0];
            long m18822l02 = j2 + C5515h0.m18822l0(jArr7[0], c5085l.f15886c, c5085l.f15887d);
            if (m20713a(jArr, c, j2, m18822l02)) {
                long m18822l03 = C5515h0.m18822l0(j2 - jArr[0], c5085l.f15889f.f14475z, c5085l.f15886c);
                long m18822l04 = C5515h0.m18822l0(c - m18822l02, c5085l.f15889f.f14475z, c5085l.f15886c);
                if ((m18822l03 != 0 || m18822l04 != 0) && m18822l03 <= 2147483647L && m18822l04 <= 2147483647L) {
                    c4988p.f15500b = (int) m18822l03;
                    c4988p.f15501c = (int) m18822l04;
                    C5515h0.m18820m0(jArr, 1000000L, c5085l.f15886c);
                    return new C5088o(c5085l, jArr2, iArr2, i3, jArr, iArr, C5515h0.m18822l0(c5085l.f15891h[0], 1000000L, c5085l.f15887d));
                }
            }
        }
        int[] iArr8 = iArr;
        long[] jArr8 = c5085l.f15891h;
        if (jArr8.length == 1 && jArr8[0] == 0) {
            long j3 = c5085l.f15892i[0];
            for (int i32 = 0; i32 < jArr.length; i32++) {
                jArr[i32] = C5515h0.m18822l0(jArr[i32] - j3, 1000000L, c5085l.f15886c);
            }
            return new C5088o(c5085l, jArr2, iArr2, i3, jArr, iArr8, C5515h0.m18822l0(c - j3, 1000000L, c5085l.f15886c));
        }
        boolean z5 = c5085l.f15885b == 1;
        int[] iArr9 = new int[jArr8.length];
        int[] iArr10 = new int[jArr8.length];
        boolean z6 = false;
        int i33 = 0;
        int i34 = 0;
        int i35 = 0;
        while (true) {
            long[] jArr9 = c5085l.f15891h;
            if (i33 >= jArr9.length) {
                break;
            }
            long j4 = c5085l.f15892i[i33];
            if (j4 != -1) {
                long m18822l05 = C5515h0.m18822l0(jArr9[i33], c5085l.f15886c, c5085l.f15887d);
                iArr9[i33] = C5515h0.m18839d(jArr, j4, true, true);
                iArr10[i33] = C5515h0.m18839d(jArr, j4 + m18822l05, z5, false);
                while (iArr9[i33] < iArr10[i33] && (iArr8[iArr9[i33]] & 1) == 0) {
                    iArr9[i33] = iArr9[i33] + 1;
                }
                int i36 = i34 + (iArr10[i33] - iArr9[i33]);
                boolean z7 = i35 != iArr9[i33];
                i35 = iArr10[i33];
                z6 = z7 | z6;
                i34 = i36;
            }
            i33++;
            z6 = z6;
        }
        boolean z8 = z6 | (i34 != i4);
        long[] jArr10 = z8 ? new long[i34] : jArr2;
        int[] iArr11 = z8 ? new int[i34] : iArr2;
        int i37 = i3;
        if (z8) {
            i37 = 0;
        }
        int[] iArr12 = z8 ? new int[i34] : iArr8;
        long[] jArr11 = new long[i34];
        int i38 = 0;
        char c5 = 0;
        long[] jArr12 = jArr;
        int i39 = 0;
        long[] jArr13 = jArr2;
        while (i39 < c5085l.f15891h.length) {
            long j5 = c5085l.f15892i[i39];
            int i40 = iArr9[i39];
            int i41 = iArr10[i39];
            if (z8) {
                int i42 = i41 - i40;
                System.arraycopy(jArr13, i40, jArr10, i38, i42);
                System.arraycopy(iArr2, i40, iArr11, i38, i42);
                System.arraycopy(iArr8, i40, iArr12, i38, i42);
            }
            int[] iArr13 = iArr8;
            int i43 = i37;
            long[] jArr14 = jArr12;
            int i44 = i38;
            int i45 = i39;
            while (true) {
                i5 = i43;
                if (i40 < i41) {
                    jArr11[i44] = C5515h0.m18822l0(c5, 1000000L, c5085l.f15887d) + C5515h0.m18822l0(jArr14[i40] - j5, 1000000L, c5085l.f15886c);
                    i43 = i5;
                    if (z8) {
                        i43 = i5;
                        if (iArr11[i44] > i5) {
                            i43 = iArr2[i40];
                        }
                    }
                    i44++;
                    i40++;
                }
            }
            c5 += c5085l.f15891h[i45];
            i39 = i45 + 1;
            i38 = i44;
            jArr12 = jArr14;
            i37 = i5;
            iArr8 = iArr13;
        }
        return new C5088o(c5085l, jArr10, iArr11, i37, jArr11, iArr12, C5515h0.m18822l0(c5, 1000000L, c5085l.f15887d));
    }

    /* renamed from: s */
    private static C5068c m20695s(C5536v c5536v, int i, int i2, String str, DrmInitData drmInitData, boolean z) {
        c5536v.m18680M(12);
        int m18668k = c5536v.m18668k();
        C5068c c5068c = new C5068c(m18668k);
        for (int i3 = 0; i3 < m18668k; i3++) {
            int m18676c = c5536v.m18676c();
            int m18668k2 = c5536v.m18668k();
            C5508e.m18914b(m18668k2 > 0, "childAtomSize should be positive");
            int m18668k3 = c5536v.m18668k();
            if (m18668k3 == 1635148593 || m18668k3 == 1635148595 || m18668k3 == 1701733238 || m18668k3 == 1836070006 || m18668k3 == 1752589105 || m18668k3 == 1751479857 || m18668k3 == 1932670515 || m18668k3 == 1987063864 || m18668k3 == 1987063865 || m18668k3 == 1635135537 || m18668k3 == 1685479798 || m18668k3 == 1685479729 || m18668k3 == 1685481573 || m18668k3 == 1685481521) {
                m20689y(c5536v, m18668k3, m18676c, m18668k2, i, i2, drmInitData, c5068c, i3);
            } else if (m18668k3 == 1836069985 || m18668k3 == 1701733217 || m18668k3 == 1633889587 || m18668k3 == 1700998451 || m18668k3 == 1633889588 || m18668k3 == 1685353315 || m18668k3 == 1685353317 || m18668k3 == 1685353320 || m18668k3 == 1685353324 || m18668k3 == 1935764850 || m18668k3 == 1935767394 || m18668k3 == 1819304813 || m18668k3 == 1936684916 || m18668k3 == 1953984371 || m18668k3 == 778924083 || m18668k3 == 1634492771 || m18668k3 == 1634492791 || m18668k3 == 1970037111 || m18668k3 == 1332770163 || m18668k3 == 1716281667) {
                m20710d(c5536v, m18668k3, m18676c, m18668k2, i, str, z, drmInitData, c5068c, i3);
            } else if (m18668k3 == 1414810956 || m18668k3 == 1954034535 || m18668k3 == 2004251764 || m18668k3 == 1937010800 || m18668k3 == 1664495672) {
                m20694t(c5536v, m18668k3, m18676c, m18668k2, i, str, c5068c);
            } else if (m18668k3 == 1667329389) {
                c5068c.f15779b = Format.m21736u(Integer.toString(i), "application/x-camera-motion", null, -1, null);
            }
            c5536v.m18680M(m18676c + m18668k2);
        }
        return c5068c;
    }

    /* renamed from: t */
    private static void m20694t(C5536v c5536v, int i, int i2, int i3, int i4, String str, C5068c c5068c) {
        String str2;
        c5536v.m18680M(i2 + 8 + 8);
        List list = null;
        char c = 65535;
        if (i == 1414810956) {
            str2 = "application/ttml+xml";
        } else if (i == 1954034535) {
            int i5 = (i3 - 8) - 8;
            byte[] bArr = new byte[i5];
            c5536v.m18671h(bArr, 0, i5);
            list = Collections.singletonList(bArr);
            str2 = "application/x-quicktime-tx3g";
        } else if (i == 2004251764) {
            str2 = "application/x-mp4-vtt";
        } else if (i == 1937010800) {
            c = 0;
            str2 = "application/ttml+xml";
        } else if (i != 1664495672) {
            throw new IllegalStateException();
        } else {
            c5068c.f15781d = 1;
            str2 = "application/x-mp4-cea-608";
        }
        c5068c.f15779b = Format.m21761A(Integer.toString(i4), str2, null, -1, 0, str, -1, null, c, list);
    }

    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* renamed from: u */
    private static C5071f m20693u(C5536v c5536v) {
        boolean z;
        char c;
        int i;
        c5536v.m18680M(8);
        int m20718c = AbstractC5062c.m20718c(c5536v.m18668k());
        c5536v.m18679N(m20718c == 0 ? 8 : 16);
        int m18668k = c5536v.m18668k();
        c5536v.m18679N(4);
        int m18676c = c5536v.m18676c();
        int i2 = 8;
        if (m20718c == 0) {
            i2 = 4;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                z = true;
                break;
            } else if (c5536v.f17941a[m18676c + i3] != -1) {
                z = false;
                break;
            } else {
                i3++;
            }
        }
        if (z) {
            c5536v.m18679N(i2);
            c = 1;
        } else {
            c = m20718c == 0 ? c5536v.m18691B() : c5536v.m18688E();
            if (c == 0) {
                c = 1;
            }
        }
        c5536v.m18679N(16);
        int m18668k2 = c5536v.m18668k();
        int m18668k3 = c5536v.m18668k();
        c5536v.m18679N(4);
        int m18668k4 = c5536v.m18668k();
        int m18668k5 = c5536v.m18668k();
        if (m18668k2 == 0 && m18668k3 == 65536 && m18668k4 == -65536 && m18668k5 == 0) {
            i = 90;
        } else if (m18668k2 == 0 && m18668k3 == -65536 && m18668k4 == 65536 && m18668k5 == 0) {
            i = 270;
        } else {
            i = 0;
            if (m18668k2 == -65536) {
                i = 0;
                if (m18668k3 == 0) {
                    i = 0;
                    if (m18668k4 == 0) {
                        i = 0;
                        if (m18668k5 == -65536) {
                            i = 180;
                        }
                    }
                }
            }
        }
        return new C5071f(m18668k, c, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* renamed from: v */
    public static C5085l m20692v(AbstractC5062c.C5063a c5063a, AbstractC5062c.C5064b c5064b, long j, DrmInitData drmInitData, boolean z, boolean z2) {
        long[] jArr;
        long[] jArr2;
        AbstractC5062c.C5063a m20715f = c5063a.m20715f(1835297121);
        int m20711c = m20711c(m20705i(m20715f.m20714g(1751411826).f15767b));
        if (m20711c == -1) {
            return null;
        }
        C5071f m20693u = m20693u(c5063a.m20714g(1953196132).f15767b);
        int i = (j > (-9223372036854775807L) ? 1 : (j == (-9223372036854775807L) ? 0 : -1));
        ?? r19 = j;
        if (i == 0) {
            r19 = m20693u.f15791b;
        }
        long m20701m = m20701m(c5064b.f15767b);
        char m18822l0 = r19 == -9223372036854775807L ? (char) 1 : C5515h0.m18822l0(r19, 1000000L, m20701m);
        AbstractC5062c.C5063a m20715f2 = m20715f.m20715f(1835626086).m20715f(1937007212);
        Pair<Long, String> m20703k = m20703k(m20715f.m20714g(1835296868).f15767b);
        C5068c m20695s = m20695s(m20715f2.m20714g(1937011556).f15767b, m20693u.f15790a, m20693u.f15792c, (String) m20703k.second, drmInitData, z2);
        if (!z) {
            Pair<long[], long[]> m20708f = m20708f(c5063a.m20715f(1701082227));
            jArr2 = (long[]) m20708f.first;
            jArr = (long[]) m20708f.second;
        } else {
            jArr2 = null;
            jArr = null;
        }
        return m20695s.f15779b == null ? null : new C5085l(m20693u.f15790a, m20711c, ((Long) m20703k.first).longValue(), m20701m, m18822l0, m20695s.f15779b, m20695s.f15781d, m20695s.f15778a, m20695s.f15780c, jArr2, jArr);
    }

    /* renamed from: w */
    public static Metadata m20691w(AbstractC5062c.C5064b c5064b, boolean z) {
        if (z) {
            return null;
        }
        C5536v c5536v = c5064b.f15767b;
        c5536v.m18680M(8);
        while (c5536v.m18678a() >= 8) {
            int m18676c = c5536v.m18676c();
            int m18668k = c5536v.m18668k();
            if (c5536v.m18668k() == 1835365473) {
                c5536v.m18680M(m18676c);
                return m20690x(c5536v, m18676c + m18668k);
            }
            c5536v.m18680M(m18676c + m18668k);
        }
        return null;
    }

    /* renamed from: x */
    private static Metadata m20690x(C5536v c5536v, int i) {
        c5536v.m18679N(12);
        while (c5536v.m18676c() < i) {
            int m18676c = c5536v.m18676c();
            int m18668k = c5536v.m18668k();
            if (c5536v.m18668k() == 1768715124) {
                c5536v.m18680M(m18676c);
                return m20704j(c5536v, m18676c + m18668k);
            }
            c5536v.m18680M(m18676c + m18668k);
        }
        return null;
    }

    /* renamed from: y */
    private static void m20689y(C5536v c5536v, int i, int i2, int i3, int i4, int i5, DrmInitData drmInitData, C5068c c5068c, int i6) {
        byte[] bArr;
        String str;
        float f;
        List<byte[]> list;
        boolean z;
        String str2;
        int i7;
        c5536v.m18680M(i2 + 8 + 8);
        c5536v.m18679N(16);
        int m18687F = c5536v.m18687F();
        int m18687F2 = c5536v.m18687F();
        c5536v.m18679N(50);
        int m18676c = c5536v.m18676c();
        DrmInitData drmInitData2 = drmInitData;
        int i8 = i;
        if (i == 1701733238) {
            Pair<Integer, C5086m> m20698p = m20698p(c5536v, i2, i3);
            DrmInitData drmInitData3 = drmInitData;
            if (m20698p != null) {
                i = ((Integer) m20698p.first).intValue();
                drmInitData3 = drmInitData == null ? null : drmInitData.m20798c(((C5086m) m20698p.second).f15896b);
                c5068c.f15778a[i6] = (C5086m) m20698p.second;
            }
            c5536v.m18680M(m18676c);
            i8 = i;
            drmInitData2 = drmInitData3;
        }
        String str3 = null;
        byte[] bArr2 = null;
        boolean z2 = false;
        float f2 = 1.0f;
        int i9 = -1;
        List<byte[]> list2 = null;
        String str4 = null;
        int i10 = m18676c;
        while (i10 - i2 < i3) {
            c5536v.m18680M(i10);
            int m18676c2 = c5536v.m18676c();
            int m18668k = c5536v.m18668k();
            if (m18668k == 0 && c5536v.m18676c() - i2 == i3) {
                break;
            }
            C5508e.m18914b(m18668k > 0, "childAtomSize should be positive");
            int m18668k2 = c5536v.m18668k();
            if (m18668k2 == 1635148611) {
                C5508e.m18910f(str3 == null);
                c5536v.m18680M(m18676c2 + 8);
                C5558h m18557b = C5558h.m18557b(c5536v);
                list = m18557b.f18049a;
                c5068c.f15780c = m18557b.f18050b;
                f = f2;
                if (!z2) {
                    f = m18557b.f18053e;
                }
                str2 = "video/avc";
                z = z2;
                str = str4;
                bArr = bArr2;
                i7 = i9;
            } else if (m18668k2 == 1752589123) {
                C5508e.m18910f(str3 == null);
                c5536v.m18680M(m18676c2 + 8);
                C5560j m18555a = C5560j.m18555a(c5536v);
                list = m18555a.f18057a;
                c5068c.f15780c = m18555a.f18058b;
                str2 = "video/hevc";
                z = z2;
                str = str4;
                f = f2;
                bArr = bArr2;
                i7 = i9;
            } else if (m18668k2 == 1685480259 || m18668k2 == 1685485123) {
                C5559i m18556a = C5559i.m18556a(c5536v);
                str2 = str3;
                z = z2;
                str = str4;
                list = list2;
                f = f2;
                bArr = bArr2;
                i7 = i9;
                if (m18556a != null) {
                    str = m18556a.f18056c;
                    str2 = "video/dolby-vision";
                    i7 = i9;
                    bArr = bArr2;
                    f = f2;
                    list = list2;
                    z = z2;
                }
            } else if (m18668k2 == 1987076931) {
                C5508e.m18910f(str3 == null);
                str2 = i8 == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                z = z2;
                str = str4;
                list = list2;
                f = f2;
                bArr = bArr2;
                i7 = i9;
            } else if (m18668k2 == 1635135811) {
                C5508e.m18910f(str3 == null);
                str2 = "video/av01";
                z = z2;
                str = str4;
                list = list2;
                f = f2;
                bArr = bArr2;
                i7 = i9;
            } else if (m18668k2 == 1681012275) {
                C5508e.m18910f(str3 == null);
                str2 = "video/3gpp";
                z = z2;
                str = str4;
                list = list2;
                f = f2;
                bArr = bArr2;
                i7 = i9;
            } else if (m18668k2 == 1702061171) {
                C5508e.m18910f(str3 == null);
                Pair<String, byte[]> m20707g = m20707g(c5536v, m18676c2);
                str2 = (String) m20707g.first;
                list = Collections.singletonList(m20707g.second);
                z = z2;
                str = str4;
                f = f2;
                bArr = bArr2;
                i7 = i9;
            } else if (m18668k2 == 1885434736) {
                f = m20700n(c5536v, m18676c2);
                z = true;
                str2 = str3;
                str = str4;
                list = list2;
                bArr = bArr2;
                i7 = i9;
            } else if (m18668k2 == 1937126244) {
                bArr = m20699o(c5536v, m18676c2, m18668k);
                str2 = str3;
                z = z2;
                str = str4;
                list = list2;
                f = f2;
                i7 = i9;
            } else {
                str2 = str3;
                z = z2;
                str = str4;
                list = list2;
                f = f2;
                bArr = bArr2;
                i7 = i9;
                if (m18668k2 == 1936995172) {
                    int m18653z = c5536v.m18653z();
                    c5536v.m18679N(3);
                    str2 = str3;
                    z = z2;
                    str = str4;
                    list = list2;
                    f = f2;
                    bArr = bArr2;
                    i7 = i9;
                    if (m18653z == 0) {
                        int m18653z2 = c5536v.m18653z();
                        if (m18653z2 == 0) {
                            i7 = 0;
                            str2 = str3;
                            z = z2;
                            str = str4;
                            list = list2;
                            f = f2;
                            bArr = bArr2;
                        } else if (m18653z2 == 1) {
                            i7 = 1;
                            str2 = str3;
                            z = z2;
                            str = str4;
                            list = list2;
                            f = f2;
                            bArr = bArr2;
                        } else if (m18653z2 == 2) {
                            i7 = 2;
                            str2 = str3;
                            z = z2;
                            str = str4;
                            list = list2;
                            f = f2;
                            bArr = bArr2;
                        } else if (m18653z2 != 3) {
                            str2 = str3;
                            z = z2;
                            str = str4;
                            list = list2;
                            f = f2;
                            bArr = bArr2;
                            i7 = i9;
                        } else {
                            i7 = 3;
                            str2 = str3;
                            z = z2;
                            str = str4;
                            list = list2;
                            f = f2;
                            bArr = bArr2;
                        }
                    }
                }
            }
            i10 += m18668k;
            str3 = str2;
            z2 = z;
            str4 = str;
            list2 = list;
            f2 = f;
            bArr2 = bArr;
            i9 = i7;
        }
        if (str3 == null) {
            return;
        }
        c5068c.f15779b = Format.m21757E(Integer.toString(i4), str3, str4, -1, -1, m18687F, m18687F2, -1.0f, list2, i5, f2, bArr2, i9, null, drmInitData2);
    }
}
