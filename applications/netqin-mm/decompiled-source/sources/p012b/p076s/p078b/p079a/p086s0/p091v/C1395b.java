package p012b.p076s.p078b.p079a.p086s0.p091v;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.mp4.MdtaMetadataEntry;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.video.ColorInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1164c;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p081b1.C1199a;
import p012b.p076s.p078b.p079a.p081b1.C1200b;
import p012b.p076s.p078b.p079a.p081b1.C1201c;
import p012b.p076s.p078b.p079a.p083p0.C1264a;
import p012b.p076s.p078b.p079a.p083p0.C1268b;
import p012b.p076s.p078b.p079a.p086s0.p091v.AbstractC1392a;
/* renamed from: b.s.b.a.s0.v.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/b.class */
public final class C1395b {

    /* renamed from: a */
    public static final byte[] f5577a = C1167d0.m34441d("OpusHead");

    /* renamed from: b.s.b.a.s0.v.b$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/b$a.class */
    public static final class C1396a {

        /* renamed from: a */
        public final int f5578a;

        /* renamed from: b */
        public int f5579b;

        /* renamed from: c */
        public int f5580c;

        /* renamed from: d */
        public long f5581d;

        /* renamed from: e */
        public final boolean f5582e;

        /* renamed from: f */
        public final C1184p f5583f;

        /* renamed from: g */
        public final C1184p f5584g;

        /* renamed from: h */
        public int f5585h;

        /* renamed from: i */
        public int f5586i;

        public C1396a(C1184p pVar, C1184p pVar2, boolean z) {
            this.f5584g = pVar;
            this.f5583f = pVar2;
            this.f5582e = z;
            pVar2.m34358e(12);
            this.f5578a = pVar2.m34340v();
            pVar.m34358e(12);
            this.f5586i = pVar.m34340v();
            C1160a.m34517b(pVar.m34357f() != 1 ? false : true, "first_chunk must be 1");
            this.f5579b = -1;
        }

        /* renamed from: a */
        public boolean m33462a() {
            int i = this.f5579b + 1;
            this.f5579b = i;
            if (i == this.f5578a) {
                return false;
            }
            this.f5581d = this.f5582e ? this.f5583f.m34339w() : this.f5583f.m34342t();
            if (this.f5579b != this.f5585h) {
                return true;
            }
            this.f5580c = this.f5584g.m34340v();
            this.f5584g.m34356f(4);
            int i2 = this.f5586i - 1;
            this.f5586i = i2;
            this.f5585h = i2 > 0 ? this.f5584g.m34340v() - 1 : -1;
            return true;
        }
    }

    /* renamed from: b.s.b.a.s0.v.b$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/b$b.class */
    public interface AbstractC1397b {
        /* renamed from: a */
        boolean mo33461a();

        /* renamed from: b */
        int mo33460b();

        /* renamed from: c */
        int mo33459c();
    }

    /* renamed from: b.s.b.a.s0.v.b$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/b$c.class */
    public static final class C1398c {

        /* renamed from: a */
        public final C1418m[] f5587a;

        /* renamed from: b */
        public Format f5588b;

        /* renamed from: c */
        public int f5589c;

        /* renamed from: d */
        public int f5590d = 0;

        public C1398c(int i) {
            this.f5587a = new C1418m[i];
        }
    }

    /* renamed from: b.s.b.a.s0.v.b$d */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/b$d.class */
    public static final class C1399d implements AbstractC1397b {

        /* renamed from: a */
        public final int f5591a;

        /* renamed from: b */
        public final int f5592b;

        /* renamed from: c */
        public final C1184p f5593c;

        public C1399d(AbstractC1392a.C1394b bVar) {
            C1184p pVar = bVar.f5576b;
            this.f5593c = pVar;
            pVar.m34358e(12);
            this.f5591a = this.f5593c.m34340v();
            this.f5592b = this.f5593c.m34340v();
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p091v.C1395b.AbstractC1397b
        /* renamed from: a */
        public boolean mo33461a() {
            return this.f5591a != 0;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p091v.C1395b.AbstractC1397b
        /* renamed from: b */
        public int mo33460b() {
            return this.f5592b;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p091v.C1395b.AbstractC1397b
        /* renamed from: c */
        public int mo33459c() {
            int i = this.f5591a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f5593c.m34340v();
            }
            return i2;
        }
    }

    /* renamed from: b.s.b.a.s0.v.b$e */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/b$e.class */
    public static final class C1400e implements AbstractC1397b {

        /* renamed from: a */
        public final C1184p f5594a;

        /* renamed from: b */
        public final int f5595b;

        /* renamed from: c */
        public final int f5596c;

        /* renamed from: d */
        public int f5597d;

        /* renamed from: e */
        public int f5598e;

        public C1400e(AbstractC1392a.C1394b bVar) {
            C1184p pVar = bVar.f5576b;
            this.f5594a = pVar;
            pVar.m34358e(12);
            this.f5596c = this.f5594a.m34340v() & 255;
            this.f5595b = this.f5594a.m34340v();
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p091v.C1395b.AbstractC1397b
        /* renamed from: a */
        public boolean mo33461a() {
            return false;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p091v.C1395b.AbstractC1397b
        /* renamed from: b */
        public int mo33460b() {
            return this.f5595b;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p091v.C1395b.AbstractC1397b
        /* renamed from: c */
        public int mo33459c() {
            int i = this.f5596c;
            if (i == 8) {
                return this.f5594a.m34344r();
            }
            if (i == 16) {
                return this.f5594a.m34338x();
            }
            int i2 = this.f5597d;
            this.f5597d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.f5598e & 15;
            }
            int r = this.f5594a.m34344r();
            this.f5598e = r;
            return (r & 240) >> 4;
        }
    }

    /* renamed from: b.s.b.a.s0.v.b$f */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/b$f.class */
    public static final class C1401f {

        /* renamed from: a */
        public final int f5599a;

        /* renamed from: b */
        public final long f5600b;

        /* renamed from: c */
        public final int f5601c;

        public C1401f(int i, long j, int i2) {
            this.f5599a = i;
            this.f5600b = j;
            this.f5601c = i2;
        }
    }

    /* renamed from: a */
    public static int m33487a(int i) {
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

    /* renamed from: a */
    public static int m33486a(C1184p pVar) {
        int r = pVar.m34344r();
        int i = r & 127;
        while ((r & 128) == 128) {
            r = pVar.m34344r();
            i = (i << 7) | (r & 127);
        }
        return i;
    }

    /* renamed from: a */
    public static int m33484a(C1184p pVar, int i, int i2) {
        int c = pVar.m34363c();
        while (c - i < i2) {
            pVar.m34358e(c);
            int f = pVar.m34357f();
            C1160a.m34519a(f > 0, "childAtomSize should be positive");
            if (pVar.m34357f() == 1702061171) {
                return c;
            }
            c += f;
        }
        return -1;
    }

    /* renamed from: a */
    public static Pair<String, byte[]> m33485a(C1184p pVar, int i) {
        pVar.m34358e(i + 8 + 4);
        pVar.m34356f(1);
        m33486a(pVar);
        pVar.m34356f(2);
        int r = pVar.m34344r();
        if ((r & 128) != 0) {
            pVar.m34356f(2);
        }
        if ((r & 64) != 0) {
            pVar.m34356f(pVar.m34338x());
        }
        if ((r & 32) != 0) {
            pVar.m34356f(2);
        }
        pVar.m34356f(1);
        m33486a(pVar);
        String a = C1178m.m34410a(pVar.m34344r());
        if ("audio/mpeg".equals(a) || "audio/vnd.dts".equals(a) || "audio/vnd.dts.hd".equals(a)) {
            return Pair.create(a, null);
        }
        pVar.m34356f(12);
        pVar.m34356f(1);
        int a2 = m33486a(pVar);
        byte[] bArr = new byte[a2];
        pVar.m34366a(bArr, 0, a2);
        return Pair.create(a, bArr);
    }

    /* renamed from: a */
    public static Pair<long[], long[]> m33478a(AbstractC1392a.C1393a aVar) {
        AbstractC1392a.C1394b e;
        if (aVar == null || (e = aVar.m33488e(1701606260)) == null) {
            return Pair.create(null, null);
        }
        C1184p pVar = e.f5576b;
        pVar.m34358e(8);
        int c = AbstractC1392a.m33492c(pVar.m34357f());
        int v = pVar.m34340v();
        long[] jArr = new long[v];
        long[] jArr2 = new long[v];
        for (int i = 0; i < v; i++) {
            jArr[i] = c == 1 ? pVar.m34339w() : pVar.m34342t();
            jArr2[i] = c == 1 ? pVar.m34348n() : pVar.m34357f();
            if (pVar.m34346p() == 1) {
                pVar.m34356f(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    /* renamed from: a */
    public static Metadata m33476a(AbstractC1392a.C1394b bVar, boolean z) {
        if (z) {
            return null;
        }
        C1184p pVar = bVar.f5576b;
        pVar.m34358e(8);
        while (pVar.m34372a() >= 8) {
            int c = pVar.m34363c();
            int f = pVar.m34357f();
            if (pVar.m34357f() == 1835365473) {
                pVar.m34358e(c);
                return m33465d(pVar, c + f);
            }
            pVar.m34358e(c + f);
        }
        return null;
    }

    /* renamed from: a */
    public static C1398c m33479a(C1184p pVar, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        pVar.m34358e(12);
        int f = pVar.m34357f();
        C1398c cVar = new C1398c(f);
        for (int i3 = 0; i3 < f; i3++) {
            int c = pVar.m34363c();
            int f2 = pVar.m34357f();
            C1160a.m34519a(f2 > 0, "childAtomSize should be positive");
            int f3 = pVar.m34357f();
            if (f3 == 1635148593 || f3 == 1635148595 || f3 == 1701733238 || f3 == 1836070006 || f3 == 1752589105 || f3 == 1751479857 || f3 == 1932670515 || f3 == 1987063864 || f3 == 1987063865 || f3 == 1635135537 || f3 == 1685479798 || f3 == 1685479729 || f3 == 1685481573 || f3 == 1685481521) {
                m33483a(pVar, f3, c, f2, i, i2, drmInitData, cVar, i3);
            } else if (f3 == 1836069985 || f3 == 1701733217 || f3 == 1633889587 || f3 == 1700998451 || f3 == 1633889588 || f3 == 1685353315 || f3 == 1685353317 || f3 == 1685353320 || f3 == 1685353324 || f3 == 1935764850 || f3 == 1935767394 || f3 == 1819304813 || f3 == 1936684916 || f3 == 778924083 || f3 == 1634492771 || f3 == 1634492791 || f3 == 1970037111 || f3 == 1332770163 || f3 == 1716281667) {
                m33481a(pVar, f3, c, f2, i, str, z, drmInitData, cVar, i3);
            } else if (f3 == 1414810956 || f3 == 1954034535 || f3 == 2004251764 || f3 == 1937010800 || f3 == 1664495672) {
                m33482a(pVar, f3, c, f2, i, str, cVar);
            } else if (f3 == 1667329389) {
                cVar.f5588b = Format.m38176a(Integer.toString(i), "application/x-camera-motion", (String) null, -1, (DrmInitData) null);
            }
            pVar.m34358e(c + f2);
        }
        return cVar;
    }

    /* renamed from: a */
    public static C1417l m33477a(AbstractC1392a.C1393a aVar, AbstractC1392a.C1394b bVar, long j, DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        long[] jArr;
        long[] jArr2;
        AbstractC1392a.C1393a d = aVar.m33489d(1835297121);
        int a = m33487a(m33473b(d.m33488e(1751411826).f5576b));
        C1417l lVar = null;
        if (a == -1) {
            return null;
        }
        C1401f e = m33463e(aVar.m33488e(1953196132).f5576b);
        long j2 = -9223372036854775807L;
        if (j == -9223372036854775807L) {
            j = e.f5600b;
        }
        long d2 = m33466d(bVar.f5576b);
        if (j != -9223372036854775807L) {
            j2 = C1167d0.m34445c(j, 1000000L, d2);
        }
        AbstractC1392a.C1393a d3 = d.m33489d(1835626086).m33489d(1937007212);
        Pair<Long, String> c = m33469c(d.m33488e(1835296868).f5576b);
        C1398c a2 = m33479a(d3.m33488e(1937011556).f5576b, e.f5599a, e.f5601c, (String) c.second, drmInitData, z2);
        if (!z) {
            Pair<long[], long[]> a3 = m33478a(aVar.m33489d(1701082227));
            jArr2 = (long[]) a3.first;
            jArr = (long[]) a3.second;
        } else {
            jArr2 = null;
            jArr = null;
        }
        if (a2.f5588b != null) {
            lVar = new C1417l(e.f5599a, a, ((Long) c.first).longValue(), d2, j2, a2.f5588b, a2.f5590d, a2.f5587a, a2.f5589c, jArr2, jArr);
        }
        return lVar;
    }

    /* renamed from: a */
    public static C1418m m33480a(C1184p pVar, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = 8;
        while (true) {
            int i7 = i5 + i6;
            if (i7 - i >= i2) {
                return null;
            }
            pVar.m34358e(i7);
            i6 = pVar.m34357f();
            if (pVar.m34357f() == 1952804451) {
                int c = AbstractC1392a.m33492c(pVar.m34357f());
                pVar.m34356f(1);
                if (c == 0) {
                    pVar.m34356f(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int r = pVar.m34344r();
                    i3 = r & 15;
                    i4 = (r & 240) >> 4;
                }
                boolean z = pVar.m34344r() == 1;
                int r2 = pVar.m34344r();
                byte[] bArr = new byte[16];
                pVar.m34366a(bArr, 0, 16);
                byte[] bArr2 = null;
                if (z) {
                    bArr2 = null;
                    if (r2 == 0) {
                        int r3 = pVar.m34344r();
                        bArr2 = new byte[r3];
                        pVar.m34366a(bArr2, 0, r3);
                    }
                }
                return new C1418m(z, str, r2, bArr, i4, i3, bArr2);
            }
            i5 = i7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r38v13 */
    /* JADX WARN: Type inference failed for: r38v6 */
    /* JADX WARN: Type inference failed for: r38v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p012b.p076s.p078b.p079a.p086s0.p091v.C1420o m33475a(p012b.p076s.p078b.p079a.p086s0.p091v.C1417l r15, p012b.p076s.p078b.p079a.p086s0.p091v.AbstractC1392a.C1393a r16, p012b.p076s.p078b.p079a.p086s0.C1354k r17) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 2262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1395b.m33475a(b.s.b.a.s0.v.l, b.s.b.a.s0.v.a$a, b.s.b.a.s0.k):b.s.b.a.s0.v.o");
    }

    /* renamed from: a */
    public static void m33483a(C1184p pVar, int i, int i2, int i3, int i4, int i5, DrmInitData drmInitData, C1398c cVar, int i6) throws ParserException {
        pVar.m34358e(i2 + 8 + 8);
        pVar.m34356f(16);
        int x = pVar.m34338x();
        int x2 = pVar.m34338x();
        pVar.m34356f(50);
        int c = pVar.m34363c();
        DrmInitData drmInitData2 = drmInitData;
        i = i;
        if (i == 1701733238) {
            Pair<Integer, C1418m> d = m33464d(pVar, i2, i3);
            drmInitData2 = drmInitData;
            if (d != null) {
                i = ((Integer) d.first).intValue();
                drmInitData2 = drmInitData == null ? null : drmInitData.m38097a(((C1418m) d.second).f5703b);
                cVar.f5587a[i6] = (C1418m) d.second;
            }
            pVar.m34358e(c);
        }
        String str = null;
        byte[] bArr = null;
        boolean z = false;
        float f = 1.0f;
        int i7 = -1;
        List<byte[]> list = null;
        String str2 = null;
        int i8 = c;
        while (i8 - i2 < i3) {
            pVar.m34358e(i8);
            int c2 = pVar.m34363c();
            int f2 = pVar.m34357f();
            if (f2 == 0 && pVar.m34363c() - i2 == i3) {
                break;
            }
            C1160a.m34519a(f2 > 0, "childAtomSize should be positive");
            int f3 = pVar.m34357f();
            if (f3 == 1635148611) {
                C1160a.m34518b(str == null);
                pVar.m34358e(c2 + 8);
                C1199a b = C1199a.m34269b(pVar);
                list = b.f4795a;
                cVar.f5589c = b.f4796b;
                f = f;
                if (!z) {
                    f = b.f4799e;
                }
                str = "video/avc";
                z = z;
                str2 = str2;
                bArr = bArr;
                i7 = i7;
            } else if (f3 == 1752589123) {
                C1160a.m34518b(str == null);
                pVar.m34358e(c2 + 8);
                C1201c a = C1201c.m34267a(pVar);
                list = a.f4801a;
                cVar.f5589c = a.f4802b;
                str = "video/hevc";
                z = z;
                str2 = str2;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (f3 == 1685480259 || f3 == 1685485123) {
                C1200b a2 = C1200b.m34268a(pVar);
                str = str;
                z = z;
                str2 = str2;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
                if (a2 != null) {
                    str2 = a2.f4800a;
                    str = "video/dolby-vision";
                    i7 = i7;
                    bArr = bArr;
                    f = f;
                    list = list;
                    z = z;
                }
            } else if (f3 == 1987076931) {
                C1160a.m34518b(str == null);
                str = i == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                z = z;
                str2 = str2;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (f3 == 1635135811) {
                C1160a.m34518b(str == null);
                str = "video/av01";
                z = z;
                str2 = str2;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (f3 == 1681012275) {
                C1160a.m34518b(str == null);
                str = "video/3gpp";
                z = z;
                str2 = str2;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (f3 == 1702061171) {
                C1160a.m34518b(str == null);
                Pair<String, byte[]> a3 = m33485a(pVar, c2);
                str = (String) a3.first;
                list = Collections.singletonList((byte[]) a3.second);
                z = z;
                str2 = str2;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (f3 == 1885434736) {
                f = m33468c(pVar, c2);
                z = true;
                str = str;
                str2 = str2;
                list = list;
                bArr = bArr;
                i7 = i7;
            } else if (f3 == 1937126244) {
                bArr = m33467c(pVar, c2, f2);
                str = str;
                z = z;
                str2 = str2;
                list = list;
                f = f;
                i7 = i7;
            } else {
                str = str;
                z = z;
                str2 = str2;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
                if (f3 == 1936995172) {
                    int r = pVar.m34344r();
                    pVar.m34356f(3);
                    str = str;
                    z = z;
                    str2 = str2;
                    list = list;
                    f = f;
                    bArr = bArr;
                    i7 = i7;
                    if (r == 0) {
                        int r2 = pVar.m34344r();
                        if (r2 == 0) {
                            i7 = 0;
                            str = str;
                            z = z;
                            str2 = str2;
                            list = list;
                            f = f;
                            bArr = bArr;
                        } else if (r2 == 1) {
                            i7 = 1;
                            str = str;
                            z = z;
                            str2 = str2;
                            list = list;
                            f = f;
                            bArr = bArr;
                        } else if (r2 == 2) {
                            i7 = 2;
                            str = str;
                            z = z;
                            str2 = str2;
                            list = list;
                            f = f;
                            bArr = bArr;
                        } else if (r2 != 3) {
                            str = str;
                            z = z;
                            str2 = str2;
                            list = list;
                            f = f;
                            bArr = bArr;
                            i7 = i7;
                        } else {
                            i7 = 3;
                            str = str;
                            z = z;
                            str2 = str2;
                            list = list;
                            f = f;
                            bArr = bArr;
                        }
                    }
                }
            }
            i8 += f2;
        }
        if (str != null) {
            cVar.f5588b = Format.m38183a(Integer.toString(i4), str, str2, -1, -1, x, x2, -1.0f, list, i5, f, bArr, i7, (ColorInfo) null, drmInitData2);
        }
    }

    /* renamed from: a */
    public static void m33482a(C1184p pVar, int i, int i2, int i3, int i4, String str, C1398c cVar) throws ParserException {
        String str2;
        pVar.m34358e(i2 + 8 + 8);
        List list = null;
        long j = Long.MAX_VALUE;
        if (i == 1414810956) {
            str2 = "application/ttml+xml";
        } else if (i == 1954034535) {
            int i5 = (i3 - 8) - 8;
            byte[] bArr = new byte[i5];
            pVar.m34366a(bArr, 0, i5);
            list = Collections.singletonList(bArr);
            str2 = "application/x-quicktime-tx3g";
        } else if (i == 2004251764) {
            str2 = "application/x-mp4-vtt";
        } else if (i == 1937010800) {
            j = 0;
            str2 = "application/ttml+xml";
        } else if (i == 1664495672) {
            cVar.f5590d = 1;
            str2 = "application/x-mp4-cea-608";
        } else {
            throw new IllegalStateException();
        }
        cVar.f5588b = Format.m38179a(Integer.toString(i4), str2, (String) null, -1, 0, str, -1, (DrmInitData) null, j, list);
    }

    /* renamed from: a */
    public static void m33481a(C1184p pVar, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, C1398c cVar, int i5) throws ParserException {
        int i6;
        int i7;
        int i8;
        pVar.m34358e(i2 + 8 + 8);
        if (z) {
            i6 = pVar.m34338x();
            pVar.m34356f(6);
        } else {
            pVar.m34356f(8);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            i8 = pVar.m34338x();
            pVar.m34356f(6);
            i7 = pVar.m34343s();
            if (i6 == 1) {
                pVar.m34356f(16);
            }
        } else if (i6 == 2) {
            pVar.m34356f(16);
            i7 = (int) Math.round(pVar.m34359e());
            i8 = pVar.m34340v();
            pVar.m34356f(20);
        } else {
            return;
        }
        int c = pVar.m34363c();
        List list = null;
        DrmInitData drmInitData2 = drmInitData;
        i = i;
        if (i == 1701733217) {
            Pair<Integer, C1418m> d = m33464d(pVar, i2, i3);
            drmInitData2 = drmInitData;
            if (d != null) {
                i = ((Integer) d.first).intValue();
                drmInitData2 = drmInitData == null ? null : drmInitData.m38097a(((C1418m) d.second).f5703b);
                cVar.f5587a[i5] = (C1418m) d.second;
            }
            pVar.m34358e(c);
        }
        String str2 = i == 1633889587 ? "audio/ac3" : i == 1700998451 ? "audio/eac3" : i == 1633889588 ? "audio/ac4" : i == 1685353315 ? "audio/vnd.dts" : (i == 1685353320 || i == 1685353324) ? "audio/vnd.dts.hd" : i == 1685353317 ? "audio/vnd.dts.hd;profile=lbr" : i == 1935764850 ? "audio/3gpp" : i == 1935767394 ? "audio/amr-wb" : (i == 1819304813 || i == 1936684916) ? "audio/raw" : i == 778924083 ? "audio/mpeg" : i == 1634492771 ? "audio/alac" : i == 1634492791 ? "audio/g711-alaw" : i == 1970037111 ? "audio/g711-mlaw" : i == 1332770163 ? "audio/opus" : i == 1716281667 ? "audio/flac" : null;
        byte[] bArr = null;
        int i9 = c;
        while (i9 - i2 < i3) {
            pVar.m34358e(i9);
            int f = pVar.m34357f();
            C1160a.m34519a(f > 0, "childAtomSize should be positive");
            int f2 = pVar.m34357f();
            if (f2 == 1702061171 || (z && f2 == 2002876005)) {
                int i10 = i9;
                if (f2 != 1702061171) {
                    i10 = m33484a(pVar, i10, f);
                }
                if (i10 != -1) {
                    Pair<String, byte[]> a = m33485a(pVar, i10);
                    String str3 = (String) a.first;
                    byte[] bArr2 = (byte[]) a.second;
                    str2 = str3;
                    bArr = bArr2;
                    if ("audio/mp4a-latm".equals(str3)) {
                        Pair<Integer, Integer> a2 = C1164c.m34504a(bArr2);
                        i7 = ((Integer) a2.first).intValue();
                        i8 = ((Integer) a2.second).intValue();
                        bArr = bArr2;
                        str2 = str3;
                    }
                }
            } else if (f2 == 1684103987) {
                pVar.m34358e(i9 + 8);
                cVar.f5588b = C1264a.m33949a(pVar, Integer.toString(i4), str, drmInitData2);
            } else if (f2 == 1684366131) {
                pVar.m34358e(i9 + 8);
                cVar.f5588b = C1264a.m33945b(pVar, Integer.toString(i4), str, drmInitData2);
            } else if (f2 == 1684103988) {
                pVar.m34358e(i9 + 8);
                cVar.f5588b = C1268b.m33938a(pVar, Integer.toString(i4), str, drmInitData2);
            } else if (f2 == 1684305011) {
                cVar.f5588b = Format.m38180a(Integer.toString(i4), str2, (String) null, -1, -1, i8, i7, (List<byte[]>) null, drmInitData2, 0, str);
            } else if (f2 == 1634492771) {
                bArr = new byte[f];
                pVar.m34358e(i9);
                pVar.m34366a(bArr, 0, f);
            } else if (f2 == 1682927731) {
                int i11 = f - 8;
                byte[] bArr3 = f5577a;
                bArr = new byte[bArr3.length + i11];
                System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
                pVar.m34358e(i9 + 8);
                pVar.m34366a(bArr, f5577a.length, i11);
            } else if (f == 1684425825) {
                int i12 = f - 12;
                bArr = new byte[i12];
                pVar.m34358e(i9 + 12);
                pVar.m34366a(bArr, 0, i12);
            }
            i9 = f + i9;
        }
        if (cVar.f5588b == null && str2 != null) {
            int i13 = "audio/raw".equals(str2) ? 2 : -1;
            String num = Integer.toString(i4);
            if (bArr != null) {
                list = Collections.singletonList(bArr);
            }
            cVar.f5588b = Format.m38181a(num, str2, (String) null, -1, -1, i8, i7, i13, list, drmInitData2, 0, str);
        }
    }

    /* renamed from: a */
    public static boolean m33474a(long[] jArr, long j, long j2, long j3) {
        boolean z = true;
        int length = jArr.length - 1;
        int a = C1167d0.m34493a(4, 0, length);
        int a2 = C1167d0.m34493a(jArr.length - 4, 0, length);
        if (jArr[0] > j2 || j2 >= jArr[a] || jArr[a2] >= j3 || j3 > j) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static int m33473b(C1184p pVar) {
        pVar.m34358e(16);
        return pVar.m34357f();
    }

    /* renamed from: b */
    public static Pair<Integer, C1418m> m33471b(C1184p pVar, int i, int i2) {
        int i3 = i + 8;
        boolean z = false;
        String str = null;
        Integer num = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            pVar.m34358e(i3);
            int f = pVar.m34357f();
            int f2 = pVar.m34357f();
            if (f2 == 1718775137) {
                num = Integer.valueOf(pVar.m34357f());
                str = str;
            } else if (f2 == 1935894637) {
                pVar.m34356f(4);
                str = pVar.m34364b(4);
                num = num;
            } else {
                str = str;
                num = num;
                if (f2 == 1935894633) {
                    i4 = i3;
                    i5 = f;
                    num = num;
                    str = str;
                }
            }
            i3 += f;
        }
        if (!"cenc".equals(str) && !"cbc1".equals(str) && !"cens".equals(str) && !"cbcs".equals(str)) {
            return null;
        }
        C1160a.m34519a(num != null, "frma atom is mandatory");
        C1160a.m34519a(i4 != -1, "schi atom is mandatory");
        C1418m a = m33480a(pVar, i4, i5, str);
        if (a != null) {
            z = true;
        }
        C1160a.m34519a(z, "tenc atom is mandatory");
        return Pair.create(num, a);
    }

    /* renamed from: b */
    public static Metadata m33472b(C1184p pVar, int i) {
        pVar.m34356f(8);
        ArrayList arrayList = new ArrayList();
        while (pVar.m34363c() < i) {
            Metadata.Entry b = C1410g.m33400b(pVar);
            if (b != null) {
                arrayList.add(b);
            }
        }
        return arrayList.isEmpty() ? null : new Metadata(arrayList);
    }

    /* renamed from: b */
    public static Metadata m33470b(AbstractC1392a.C1393a aVar) {
        AbstractC1392a.C1394b e = aVar.m33488e(1751411826);
        AbstractC1392a.C1394b e2 = aVar.m33488e(1801812339);
        AbstractC1392a.C1394b e3 = aVar.m33488e(1768715124);
        Metadata metadata = null;
        if (e != null) {
            metadata = null;
            if (e2 != null) {
                metadata = null;
                if (e3 != null) {
                    if (m33473b(e.f5576b) != 1835299937) {
                        metadata = null;
                    } else {
                        C1184p pVar = e2.f5576b;
                        pVar.m34358e(12);
                        int f = pVar.m34357f();
                        String[] strArr = new String[f];
                        for (int i = 0; i < f; i++) {
                            int f2 = pVar.m34357f();
                            pVar.m34356f(4);
                            strArr[i] = pVar.m34364b(f2 - 8);
                        }
                        C1184p pVar2 = e3.f5576b;
                        pVar2.m34358e(8);
                        ArrayList arrayList = new ArrayList();
                        while (pVar2.m34372a() > 8) {
                            int c = pVar2.m34363c();
                            int f3 = pVar2.m34357f();
                            int f4 = pVar2.m34357f() - 1;
                            if (f4 < 0 || f4 >= f) {
                                StringBuilder sb = new StringBuilder(52);
                                sb.append("Skipped metadata with unknown key index: ");
                                sb.append(f4);
                                C1175j.m34414d("AtomParsers", sb.toString());
                            } else {
                                MdtaMetadataEntry a = C1410g.m33402a(pVar2, c + f3, strArr[f4]);
                                if (a != null) {
                                    arrayList.add(a);
                                }
                            }
                            pVar2.m34358e(c + f3);
                        }
                        metadata = arrayList.isEmpty() ? null : new Metadata(arrayList);
                    }
                }
            }
        }
        return metadata;
    }

    /* renamed from: c */
    public static float m33468c(C1184p pVar, int i) {
        pVar.m34358e(i + 8);
        return pVar.m34340v() / pVar.m34340v();
    }

    /* renamed from: c */
    public static Pair<Long, String> m33469c(C1184p pVar) {
        int i = 8;
        pVar.m34358e(8);
        int c = AbstractC1392a.m33492c(pVar.m34357f());
        pVar.m34356f(c == 0 ? 8 : 16);
        long t = pVar.m34342t();
        if (c == 0) {
            i = 4;
        }
        pVar.m34356f(i);
        int x = pVar.m34338x();
        char c2 = (char) (((x >> 10) & 31) + 96);
        char c3 = (char) (((x >> 5) & 31) + 96);
        char c4 = (char) ((x & 31) + 96);
        StringBuilder sb = new StringBuilder(3);
        sb.append(c2);
        sb.append(c3);
        sb.append(c4);
        return Pair.create(Long.valueOf(t), sb.toString());
    }

    /* renamed from: c */
    public static byte[] m33467c(C1184p pVar, int i, int i2) {
        int i3 = i;
        int i4 = 8;
        while (true) {
            int i5 = i3 + i4;
            if (i5 - i >= i2) {
                return null;
            }
            pVar.m34358e(i5);
            int f = pVar.m34357f();
            if (pVar.m34357f() == 1886547818) {
                return Arrays.copyOfRange(pVar.f4738a, i5, f + i5);
            }
            i3 = i5;
            i4 = f;
        }
    }

    /* renamed from: d */
    public static long m33466d(C1184p pVar) {
        int i = 8;
        pVar.m34358e(8);
        if (AbstractC1392a.m33492c(pVar.m34357f()) != 0) {
            i = 16;
        }
        pVar.m34356f(i);
        return pVar.m34342t();
    }

    /* renamed from: d */
    public static Pair<Integer, C1418m> m33464d(C1184p pVar, int i, int i2) {
        Pair<Integer, C1418m> b;
        int c = pVar.m34363c();
        while (c - i < i2) {
            pVar.m34358e(c);
            int f = pVar.m34357f();
            C1160a.m34519a(f > 0, "childAtomSize should be positive");
            if (pVar.m34357f() == 1936289382 && (b = m33471b(pVar, c, f)) != null) {
                return b;
            }
            c += f;
        }
        return null;
    }

    /* renamed from: d */
    public static Metadata m33465d(C1184p pVar, int i) {
        pVar.m34356f(12);
        while (pVar.m34363c() < i) {
            int c = pVar.m34363c();
            int f = pVar.m34357f();
            if (pVar.m34357f() == 1768715124) {
                pVar.m34358e(c);
                return m33472b(pVar, c + f);
            }
            pVar.m34358e(c + f);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p012b.p076s.p078b.p079a.p086s0.p091v.C1395b.C1401f m33463e(p012b.p076s.p078b.p079a.p080a1.C1184p r7) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1395b.m33463e(b.s.b.a.a1.p):b.s.b.a.s0.v.b$f");
    }
}
