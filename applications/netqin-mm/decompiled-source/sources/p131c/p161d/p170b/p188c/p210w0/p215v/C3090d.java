package p131c.p161d.p170b.p188c.p210w0.p215v;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.video.ColorInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2884h;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2897r;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p204h1.C2918h;
import p131c.p161d.p170b.p188c.p204h1.C2919i;
import p131c.p161d.p170b.p188c.p204h1.C2920j;
import p131c.p161d.p170b.p188c.p206s0.C2976g;
import p131c.p161d.p170b.p188c.p206s0.C2979h;
import p131c.p161d.p170b.p188c.p210w0.p215v.AbstractC3087c;
/* renamed from: c.d.b.c.w0.v.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/d.class */
public final class C3090d {

    /* renamed from: a */
    public static final byte[] f11218a = C2885h0.m28668a("OpusHead");

    /* renamed from: c.d.b.c.w0.v.d$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/d$a.class */
    public static final class C3091a {

        /* renamed from: a */
        public final int f11219a;

        /* renamed from: b */
        public int f11220b;

        /* renamed from: c */
        public int f11221c;

        /* renamed from: d */
        public long f11222d;

        /* renamed from: e */
        public final boolean f11223e;

        /* renamed from: f */
        public final C2904v f11224f;

        /* renamed from: g */
        public final C2904v f11225g;

        /* renamed from: h */
        public int f11226h;

        /* renamed from: i */
        public int f11227i;

        public C3091a(C2904v vVar, C2904v vVar2, boolean z) {
            this.f11225g = vVar;
            this.f11224f = vVar2;
            this.f11223e = z;
            vVar2.m28538e(12);
            this.f11219a = vVar2.m28520v();
            vVar.m28538e(12);
            this.f11227i = vVar.m28520v();
            C2877e.m28730b(vVar.m28535g() != 1 ? false : true, "first_chunk must be 1");
            this.f11220b = -1;
        }

        /* renamed from: a */
        public boolean m27889a() {
            int i = this.f11220b + 1;
            this.f11220b = i;
            if (i == this.f11219a) {
                return false;
            }
            this.f11222d = this.f11223e ? this.f11224f.m28519w() : this.f11224f.m28522t();
            if (this.f11220b != this.f11226h) {
                return true;
            }
            this.f11221c = this.f11225g.m28520v();
            this.f11225g.m28536f(4);
            int i2 = this.f11227i - 1;
            this.f11227i = i2;
            this.f11226h = i2 > 0 ? this.f11225g.m28520v() - 1 : -1;
            return true;
        }
    }

    /* renamed from: c.d.b.c.w0.v.d$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/d$b.class */
    public interface AbstractC3092b {
        /* renamed from: a */
        boolean mo27888a();

        /* renamed from: b */
        int mo27887b();

        /* renamed from: c */
        int mo27886c();
    }

    /* renamed from: c.d.b.c.w0.v.d$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/d$c.class */
    public static final class C3093c {

        /* renamed from: a */
        public final C3111m[] f11228a;

        /* renamed from: b */
        public Format f11229b;

        /* renamed from: c */
        public int f11230c;

        /* renamed from: d */
        public int f11231d = 0;

        public C3093c(int i) {
            this.f11228a = new C3111m[i];
        }
    }

    /* renamed from: c.d.b.c.w0.v.d$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/d$d.class */
    public static final class C3094d implements AbstractC3092b {

        /* renamed from: a */
        public final int f11232a;

        /* renamed from: b */
        public final int f11233b;

        /* renamed from: c */
        public final C2904v f11234c;

        public C3094d(AbstractC3087c.C3089b bVar) {
            C2904v vVar = bVar.f11217b;
            this.f11234c = vVar;
            vVar.m28538e(12);
            this.f11232a = this.f11234c.m28520v();
            this.f11233b = this.f11234c.m28520v();
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p215v.C3090d.AbstractC3092b
        /* renamed from: a */
        public boolean mo27888a() {
            return this.f11232a != 0;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p215v.C3090d.AbstractC3092b
        /* renamed from: b */
        public int mo27887b() {
            return this.f11233b;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p215v.C3090d.AbstractC3092b
        /* renamed from: c */
        public int mo27886c() {
            int i = this.f11232a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f11234c.m28520v();
            }
            return i2;
        }
    }

    /* renamed from: c.d.b.c.w0.v.d$e */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/d$e.class */
    public static final class C3095e implements AbstractC3092b {

        /* renamed from: a */
        public final C2904v f11235a;

        /* renamed from: b */
        public final int f11236b;

        /* renamed from: c */
        public final int f11237c;

        /* renamed from: d */
        public int f11238d;

        /* renamed from: e */
        public int f11239e;

        public C3095e(AbstractC3087c.C3089b bVar) {
            C2904v vVar = bVar.f11217b;
            this.f11235a = vVar;
            vVar.m28538e(12);
            this.f11237c = this.f11235a.m28520v() & 255;
            this.f11236b = this.f11235a.m28520v();
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p215v.C3090d.AbstractC3092b
        /* renamed from: a */
        public boolean mo27888a() {
            return false;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p215v.C3090d.AbstractC3092b
        /* renamed from: b */
        public int mo27887b() {
            return this.f11236b;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p215v.C3090d.AbstractC3092b
        /* renamed from: c */
        public int mo27886c() {
            int i = this.f11237c;
            if (i == 8) {
                return this.f11235a.m28524r();
            }
            if (i == 16) {
                return this.f11235a.m28518x();
            }
            int i2 = this.f11238d;
            this.f11238d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.f11239e & 15;
            }
            int r = this.f11235a.m28524r();
            this.f11239e = r;
            return (r & 240) >> 4;
        }
    }

    /* renamed from: c.d.b.c.w0.v.d$f */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/d$f.class */
    public static final class C3096f {

        /* renamed from: a */
        public final int f11240a;

        /* renamed from: b */
        public final long f11241b;

        /* renamed from: c */
        public final int f11242c;

        public C3096f(int i, long j, int i2) {
            this.f11240a = i;
            this.f11241b = j;
            this.f11242c = i2;
        }
    }

    /* renamed from: a */
    public static int m27914a(int i) {
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
    public static int m27913a(C2904v vVar) {
        int r = vVar.m28524r();
        int i = r & 127;
        while ((r & 128) == 128) {
            r = vVar.m28524r();
            i = (i << 7) | (r & 127);
        }
        return i;
    }

    /* renamed from: a */
    public static int m27911a(C2904v vVar, int i, int i2) {
        int c = vVar.m28543c();
        while (c - i < i2) {
            vVar.m28538e(c);
            int g = vVar.m28535g();
            C2877e.m28733a(g > 0, "childAtomSize should be positive");
            if (vVar.m28535g() == 1702061171) {
                return c;
            }
            c += g;
        }
        return -1;
    }

    /* renamed from: a */
    public static Pair<String, byte[]> m27912a(C2904v vVar, int i) {
        vVar.m28538e(i + 8 + 4);
        vVar.m28536f(1);
        m27913a(vVar);
        vVar.m28536f(2);
        int r = vVar.m28524r();
        if ((r & 128) != 0) {
            vVar.m28536f(2);
        }
        if ((r & 64) != 0) {
            vVar.m28536f(vVar.m28518x());
        }
        if ((r & 32) != 0) {
            vVar.m28536f(2);
        }
        vVar.m28536f(1);
        m27913a(vVar);
        String a = C2897r.m28590a(vVar.m28524r());
        if ("audio/mpeg".equals(a) || "audio/vnd.dts".equals(a) || "audio/vnd.dts.hd".equals(a)) {
            return Pair.create(a, null);
        }
        vVar.m28536f(12);
        vVar.m28536f(1);
        int a2 = m27913a(vVar);
        byte[] bArr = new byte[a2];
        vVar.m28546a(bArr, 0, a2);
        return Pair.create(a, bArr);
    }

    /* renamed from: a */
    public static Pair<long[], long[]> m27905a(AbstractC3087c.C3088a aVar) {
        AbstractC3087c.C3089b e;
        if (aVar == null || (e = aVar.m27915e(1701606260)) == null) {
            return Pair.create(null, null);
        }
        C2904v vVar = e.f11217b;
        vVar.m28538e(8);
        int c = AbstractC3087c.m27919c(vVar.m28535g());
        int v = vVar.m28520v();
        long[] jArr = new long[v];
        long[] jArr2 = new long[v];
        for (int i = 0; i < v; i++) {
            jArr[i] = c == 1 ? vVar.m28519w() : vVar.m28522t();
            jArr2[i] = c == 1 ? vVar.m28528n() : vVar.m28535g();
            if (vVar.m28526p() == 1) {
                vVar.m28536f(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    /* renamed from: a */
    public static C3093c m27906a(C2904v vVar, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        vVar.m28538e(12);
        int g = vVar.m28535g();
        C3093c cVar = new C3093c(g);
        for (int i3 = 0; i3 < g; i3++) {
            int c = vVar.m28543c();
            int g2 = vVar.m28535g();
            C2877e.m28733a(g2 > 0, "childAtomSize should be positive");
            int g3 = vVar.m28535g();
            if (g3 == 1635148593 || g3 == 1635148595 || g3 == 1701733238 || g3 == 1836070006 || g3 == 1752589105 || g3 == 1751479857 || g3 == 1932670515 || g3 == 1987063864 || g3 == 1987063865 || g3 == 1635135537 || g3 == 1685479798 || g3 == 1685479729 || g3 == 1685481573 || g3 == 1685481521) {
                m27910a(vVar, g3, c, g2, i, i2, drmInitData, cVar, i3);
            } else if (g3 == 1836069985 || g3 == 1701733217 || g3 == 1633889587 || g3 == 1700998451 || g3 == 1633889588 || g3 == 1685353315 || g3 == 1685353317 || g3 == 1685353320 || g3 == 1685353324 || g3 == 1935764850 || g3 == 1935767394 || g3 == 1819304813 || g3 == 1936684916 || g3 == 778924083 || g3 == 1634492771 || g3 == 1634492791 || g3 == 1970037111 || g3 == 1332770163 || g3 == 1716281667) {
                m27908a(vVar, g3, c, g2, i, str, z, drmInitData, cVar, i3);
            } else if (g3 == 1414810956 || g3 == 1954034535 || g3 == 2004251764 || g3 == 1937010800 || g3 == 1664495672) {
                m27909a(vVar, g3, c, g2, i, str, cVar);
            } else if (g3 == 1667329389) {
                cVar.f11229b = Format.m18695a(Integer.toString(i), "application/x-camera-motion", (String) null, -1, (DrmInitData) null);
            }
            vVar.m28538e(c + g2);
        }
        return cVar;
    }

    /* renamed from: a */
    public static C3110l m27904a(AbstractC3087c.C3088a aVar, AbstractC3087c.C3089b bVar, long j, DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        long[] jArr;
        long[] jArr2;
        AbstractC3087c.C3088a d = aVar.m27916d(1835297121);
        int a = m27914a(m27900b(d.m27915e(1751411826).f11217b));
        C3110l lVar = null;
        if (a == -1) {
            return null;
        }
        C3096f e = m27890e(aVar.m27915e(1953196132).f11217b);
        long j2 = -9223372036854775807L;
        if (j == -9223372036854775807L) {
            j = e.f11241b;
        }
        long d2 = m27893d(bVar.f11217b);
        if (j != -9223372036854775807L) {
            j2 = C2885h0.m28639c(j, 1000000L, d2);
        }
        AbstractC3087c.C3088a d3 = d.m27916d(1835626086).m27916d(1937007212);
        Pair<Long, String> c = m27896c(d.m27915e(1835296868).f11217b);
        C3093c a2 = m27906a(d3.m27915e(1937011556).f11217b, e.f11240a, e.f11242c, (String) c.second, drmInitData, z2);
        if (!z) {
            Pair<long[], long[]> a3 = m27905a(aVar.m27916d(1701082227));
            jArr2 = (long[]) a3.first;
            jArr = (long[]) a3.second;
        } else {
            jArr2 = null;
            jArr = null;
        }
        if (a2.f11229b != null) {
            lVar = new C3110l(e.f11240a, a, ((Long) c.first).longValue(), d2, j2, a2.f11229b, a2.f11231d, a2.f11228a, a2.f11230c, jArr2, jArr);
        }
        return lVar;
    }

    /* renamed from: a */
    public static C3111m m27907a(C2904v vVar, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i;
        int i6 = 8;
        while (true) {
            int i7 = i5 + i6;
            if (i7 - i >= i2) {
                return null;
            }
            vVar.m28538e(i7);
            i6 = vVar.m28535g();
            if (vVar.m28535g() == 1952804451) {
                int c = AbstractC3087c.m27919c(vVar.m28535g());
                vVar.m28536f(1);
                if (c == 0) {
                    vVar.m28536f(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int r = vVar.m28524r();
                    i3 = r & 15;
                    i4 = (r & 240) >> 4;
                }
                boolean z = vVar.m28524r() == 1;
                int r2 = vVar.m28524r();
                byte[] bArr = new byte[16];
                vVar.m28546a(bArr, 0, 16);
                byte[] bArr2 = null;
                if (z) {
                    bArr2 = null;
                    if (r2 == 0) {
                        int r3 = vVar.m28524r();
                        bArr2 = new byte[r3];
                        vVar.m28546a(bArr2, 0, r3);
                    }
                }
                return new C3111m(z, str, r2, bArr, i4, i3, bArr2);
            }
            i5 = i7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r40v12 */
    /* JADX WARN: Type inference failed for: r40v6 */
    /* JADX WARN: Type inference failed for: r40v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p131c.p161d.p170b.p188c.p210w0.p215v.C3113o m27902a(p131c.p161d.p170b.p188c.p210w0.p215v.C3110l r15, p131c.p161d.p170b.p188c.p210w0.p215v.AbstractC3087c.C3088a r16, p131c.p161d.p170b.p188c.p210w0.C3046k r17) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 2290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p215v.C3090d.m27902a(c.d.b.c.w0.v.l, c.d.b.c.w0.v.c$a, c.d.b.c.w0.k):c.d.b.c.w0.v.o");
    }

    /* renamed from: a */
    public static Metadata m27903a(AbstractC3087c.C3089b bVar, boolean z) {
        if (z) {
            return null;
        }
        C2904v vVar = bVar.f11217b;
        vVar.m28538e(8);
        while (vVar.m28552a() >= 8) {
            int c = vVar.m28543c();
            int g = vVar.m28535g();
            if (vVar.m28535g() == 1835365473) {
                vVar.m28538e(c);
                return m27892d(vVar, c + g);
            }
            vVar.m28538e(c + g);
        }
        return null;
    }

    /* renamed from: a */
    public static void m27910a(C2904v vVar, int i, int i2, int i3, int i4, int i5, DrmInitData drmInitData, C3093c cVar, int i6) throws ParserException {
        vVar.m28538e(i2 + 8 + 8);
        vVar.m28536f(16);
        int x = vVar.m28518x();
        int x2 = vVar.m28518x();
        vVar.m28536f(50);
        int c = vVar.m28543c();
        DrmInitData drmInitData2 = drmInitData;
        i = i;
        if (i == 1701733238) {
            Pair<Integer, C3111m> d = m27891d(vVar, i2, i3);
            drmInitData2 = drmInitData;
            if (d != null) {
                i = ((Integer) d.first).intValue();
                drmInitData2 = drmInitData == null ? null : drmInitData.m18618a(((C3111m) d.second).f11343b);
                cVar.f11228a[i6] = (C3111m) d.second;
            }
            vVar.m28538e(c);
        }
        String str = null;
        byte[] bArr = null;
        boolean z = false;
        float f = 1.0f;
        int i7 = -1;
        List<byte[]> list = null;
        String str2 = null;
        while (c - i2 < i3) {
            vVar.m28538e(c);
            int c2 = vVar.m28543c();
            int g = vVar.m28535g();
            if (g == 0 && vVar.m28543c() - i2 == i3) {
                break;
            }
            C2877e.m28733a(g > 0, "childAtomSize should be positive");
            int g2 = vVar.m28535g();
            if (g2 == 1635148611) {
                C2877e.m28731b(str == null);
                vVar.m28538e(c2 + 8);
                C2918h b = C2918h.m28497b(vVar);
                list = b.f10564a;
                cVar.f11230c = b.f10565b;
                f = f;
                if (!z) {
                    f = b.f10568e;
                }
                str = "video/avc";
                z = z;
                str2 = str2;
                bArr = bArr;
                i7 = i7;
            } else if (g2 == 1752589123) {
                C2877e.m28731b(str == null);
                vVar.m28538e(c2 + 8);
                C2920j a = C2920j.m28495a(vVar);
                list = a.f10570a;
                cVar.f11230c = a.f10571b;
                str = "video/hevc";
                z = z;
                str2 = str2;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (g2 == 1685480259 || g2 == 1685485123) {
                C2919i a2 = C2919i.m28496a(vVar);
                str = str;
                z = z;
                str2 = str2;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
                if (a2 != null) {
                    str2 = a2.f10569a;
                    str = "video/dolby-vision";
                    i7 = i7;
                    bArr = bArr;
                    f = f;
                    list = list;
                    z = z;
                }
            } else if (g2 == 1987076931) {
                C2877e.m28731b(str == null);
                str = i == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                z = z;
                str2 = str2;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (g2 == 1635135811) {
                C2877e.m28731b(str == null);
                str = "video/av01";
                z = z;
                str2 = str2;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (g2 == 1681012275) {
                C2877e.m28731b(str == null);
                str = "video/3gpp";
                z = z;
                str2 = str2;
                list = list;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (g2 == 1702061171) {
                C2877e.m28731b(str == null);
                Pair<String, byte[]> a3 = m27912a(vVar, c2);
                str = (String) a3.first;
                list = Collections.singletonList(a3.second);
                z = z;
                str2 = str2;
                f = f;
                bArr = bArr;
                i7 = i7;
            } else if (g2 == 1885434736) {
                f = m27895c(vVar, c2);
                z = true;
                str = str;
                str2 = str2;
                list = list;
                bArr = bArr;
                i7 = i7;
            } else if (g2 == 1937126244) {
                bArr = m27894c(vVar, c2, g);
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
                if (g2 == 1936995172) {
                    int r = vVar.m28524r();
                    vVar.m28536f(3);
                    str = str;
                    z = z;
                    str2 = str2;
                    list = list;
                    f = f;
                    bArr = bArr;
                    i7 = i7;
                    if (r == 0) {
                        int r2 = vVar.m28524r();
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
            c += g;
        }
        if (str != null) {
            cVar.f11229b = Format.m18701a(Integer.toString(i4), str, str2, -1, -1, x, x2, -1.0f, list, i5, f, bArr, i7, (ColorInfo) null, drmInitData2);
        }
    }

    /* renamed from: a */
    public static void m27909a(C2904v vVar, int i, int i2, int i3, int i4, String str, C3093c cVar) throws ParserException {
        String str2;
        vVar.m28538e(i2 + 8 + 8);
        List list = null;
        long j = Long.MAX_VALUE;
        if (i == 1414810956) {
            str2 = "application/ttml+xml";
        } else if (i == 1954034535) {
            int i5 = (i3 - 8) - 8;
            byte[] bArr = new byte[i5];
            vVar.m28546a(bArr, 0, i5);
            list = Collections.singletonList(bArr);
            str2 = "application/x-quicktime-tx3g";
        } else if (i == 2004251764) {
            str2 = "application/x-mp4-vtt";
        } else if (i == 1937010800) {
            j = 0;
            str2 = "application/ttml+xml";
        } else if (i == 1664495672) {
            cVar.f11231d = 1;
            str2 = "application/x-mp4-cea-608";
        } else {
            throw new IllegalStateException();
        }
        cVar.f11229b = Format.m18697a(Integer.toString(i4), str2, null, -1, 0, str, -1, null, j, list);
    }

    /* renamed from: a */
    public static void m27908a(C2904v vVar, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, C3093c cVar, int i5) throws ParserException {
        int i6;
        int i7;
        int i8;
        vVar.m28538e(i2 + 8 + 8);
        if (z) {
            i6 = vVar.m28518x();
            vVar.m28536f(6);
        } else {
            vVar.m28536f(8);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            i8 = vVar.m28518x();
            vVar.m28536f(6);
            i7 = vVar.m28523s();
            if (i6 == 1) {
                vVar.m28536f(16);
            }
        } else if (i6 == 2) {
            vVar.m28536f(16);
            i7 = (int) Math.round(vVar.m28539e());
            i8 = vVar.m28520v();
            vVar.m28536f(20);
        } else {
            return;
        }
        int c = vVar.m28543c();
        List list = null;
        DrmInitData drmInitData2 = drmInitData;
        i = i;
        if (i == 1701733217) {
            Pair<Integer, C3111m> d = m27891d(vVar, i2, i3);
            drmInitData2 = drmInitData;
            if (d != null) {
                i = ((Integer) d.first).intValue();
                drmInitData2 = drmInitData == null ? null : drmInitData.m18618a(((C3111m) d.second).f11343b);
                cVar.f11228a[i5] = (C3111m) d.second;
            }
            vVar.m28538e(c);
        }
        String str2 = i == 1633889587 ? "audio/ac3" : i == 1700998451 ? "audio/eac3" : i == 1633889588 ? "audio/ac4" : i == 1685353315 ? "audio/vnd.dts" : (i == 1685353320 || i == 1685353324) ? "audio/vnd.dts.hd" : i == 1685353317 ? "audio/vnd.dts.hd;profile=lbr" : i == 1935764850 ? "audio/3gpp" : i == 1935767394 ? "audio/amr-wb" : (i == 1819304813 || i == 1936684916) ? "audio/raw" : i == 778924083 ? "audio/mpeg" : i == 1634492771 ? "audio/alac" : i == 1634492791 ? "audio/g711-alaw" : i == 1970037111 ? "audio/g711-mlaw" : i == 1332770163 ? "audio/opus" : i == 1716281667 ? "audio/flac" : null;
        byte[] bArr = null;
        int i9 = c;
        while (i9 - i2 < i3) {
            vVar.m28538e(i9);
            int g = vVar.m28535g();
            C2877e.m28733a(g > 0, "childAtomSize should be positive");
            int g2 = vVar.m28535g();
            if (g2 == 1702061171 || (z && g2 == 2002876005)) {
                int a = g2 == 1702061171 ? i9 : m27911a(vVar, i9, g);
                i8 = i8;
                i7 = i7;
                if (a != -1) {
                    Pair<String, byte[]> a2 = m27912a(vVar, a);
                    String str3 = (String) a2.first;
                    byte[] bArr2 = (byte[]) a2.second;
                    str2 = str3;
                    bArr = bArr2;
                    if ("audio/mp4a-latm".equals(str3)) {
                        Pair<Integer, Integer> a3 = C2884h.m28694a(bArr2);
                        i7 = ((Integer) a3.first).intValue();
                        i8 = ((Integer) a3.second).intValue();
                        bArr = bArr2;
                        str2 = str3;
                    }
                    i9 += g;
                }
                i9 += g;
            } else {
                if (g2 == 1684103987) {
                    vVar.m28538e(i9 + 8);
                    cVar.f11229b = C2976g.m28313a(vVar, Integer.toString(i4), str, drmInitData2);
                } else if (g2 == 1684366131) {
                    vVar.m28538e(i9 + 8);
                    cVar.f11229b = C2976g.m28309b(vVar, Integer.toString(i4), str, drmInitData2);
                } else if (g2 == 1684103988) {
                    vVar.m28538e(i9 + 8);
                    cVar.f11229b = C2979h.m28303a(vVar, Integer.toString(i4), str, drmInitData2);
                } else if (g2 == 1684305011) {
                    cVar.f11229b = Format.m18698a(Integer.toString(i4), str2, null, -1, -1, i8, i7, null, drmInitData2, 0, str);
                } else {
                    if (g2 == 1682927731) {
                        int i10 = g - 8;
                        byte[] bArr3 = f11218a;
                        bArr = new byte[bArr3.length + i10];
                        System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
                        vVar.m28538e(i9 + 8);
                        vVar.m28546a(bArr, f11218a.length, i10);
                    } else if (g2 == 1684425825) {
                        int i11 = g - 12;
                        bArr = new byte[i11 + 4];
                        bArr[0] = (byte) 102;
                        bArr[1] = (byte) 76;
                        bArr[2] = (byte) 97;
                        bArr[3] = (byte) 67;
                        vVar.m28538e(i9 + 12);
                        vVar.m28546a(bArr, 4, i11);
                    } else {
                        i8 = i8;
                        i7 = i7;
                        if (g2 == 1634492771) {
                            int i12 = g - 12;
                            bArr = new byte[i12];
                            vVar.m28538e(i9 + 12);
                            vVar.m28546a(bArr, 0, i12);
                            Pair<Integer, Integer> b = C2884h.m28690b(bArr);
                            i7 = ((Integer) b.first).intValue();
                            i8 = ((Integer) b.second).intValue();
                        }
                    }
                    i9 += g;
                }
                i8 = i8;
                i7 = i7;
                i9 += g;
            }
        }
        if (cVar.f11229b == null && str2 != null) {
            int i13 = "audio/raw".equals(str2) ? 2 : -1;
            String num = Integer.toString(i4);
            if (bArr != null) {
                list = Collections.singletonList(bArr);
            }
            cVar.f11229b = Format.m18699a(num, str2, (String) null, -1, -1, i8, i7, i13, list, drmInitData2, 0, str);
        }
    }

    /* renamed from: a */
    public static boolean m27901a(long[] jArr, long j, long j2, long j3) {
        boolean z = true;
        int length = jArr.length - 1;
        int a = C2885h0.m28685a(4, 0, length);
        int a2 = C2885h0.m28685a(jArr.length - 4, 0, length);
        if (jArr[0] > j2 || j2 >= jArr[a] || jArr[a2] >= j3 || j3 > j) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static int m27900b(C2904v vVar) {
        vVar.m28538e(16);
        return vVar.m28535g();
    }

    /* renamed from: b */
    public static Pair<Integer, C3111m> m27898b(C2904v vVar, int i, int i2) {
        int i3 = i + 8;
        boolean z = false;
        String str = null;
        Integer num = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            vVar.m28538e(i3);
            int g = vVar.m28535g();
            int g2 = vVar.m28535g();
            if (g2 == 1718775137) {
                num = Integer.valueOf(vVar.m28535g());
                str = str;
            } else if (g2 == 1935894637) {
                vVar.m28536f(4);
                str = vVar.m28544b(4);
                num = num;
            } else {
                str = str;
                num = num;
                if (g2 == 1935894633) {
                    i4 = i3;
                    i5 = g;
                    num = num;
                    str = str;
                }
            }
            i3 += g;
        }
        if (!"cenc".equals(str) && !"cbc1".equals(str) && !"cens".equals(str) && !"cbcs".equals(str)) {
            return null;
        }
        C2877e.m28733a(num != null, "frma atom is mandatory");
        C2877e.m28733a(i4 != -1, "schi atom is mandatory");
        C3111m a = m27907a(vVar, i4, i5, str);
        if (a != null) {
            z = true;
        }
        C2877e.m28733a(z, "tenc atom is mandatory");
        return Pair.create(num, a);
    }

    /* renamed from: b */
    public static Metadata m27899b(C2904v vVar, int i) {
        vVar.m28536f(8);
        ArrayList arrayList = new ArrayList();
        while (vVar.m28543c() < i) {
            Metadata.Entry b = C3104h.m27827b(vVar);
            if (b != null) {
                arrayList.add(b);
            }
        }
        return arrayList.isEmpty() ? null : new Metadata(arrayList);
    }

    /* renamed from: b */
    public static Metadata m27897b(AbstractC3087c.C3088a aVar) {
        AbstractC3087c.C3089b e = aVar.m27915e(1751411826);
        AbstractC3087c.C3089b e2 = aVar.m27915e(1801812339);
        AbstractC3087c.C3089b e3 = aVar.m27915e(1768715124);
        Metadata metadata = null;
        if (e != null) {
            metadata = null;
            if (e2 != null) {
                metadata = null;
                if (e3 != null) {
                    if (m27900b(e.f11217b) != 1835299937) {
                        metadata = null;
                    } else {
                        C2904v vVar = e2.f11217b;
                        vVar.m28538e(12);
                        int g = vVar.m28535g();
                        String[] strArr = new String[g];
                        for (int i = 0; i < g; i++) {
                            int g2 = vVar.m28535g();
                            vVar.m28536f(4);
                            strArr[i] = vVar.m28544b(g2 - 8);
                        }
                        C2904v vVar2 = e3.f11217b;
                        vVar2.m28538e(8);
                        ArrayList arrayList = new ArrayList();
                        while (vVar2.m28552a() > 8) {
                            int c = vVar2.m28543c();
                            int g3 = vVar2.m28535g();
                            int g4 = vVar2.m28535g() - 1;
                            if (g4 < 0 || g4 >= g) {
                                C2894o.m28594d("AtomParsers", "Skipped metadata with unknown key index: " + g4);
                            } else {
                                MdtaMetadataEntry a = C3104h.m27829a(vVar2, c + g3, strArr[g4]);
                                if (a != null) {
                                    arrayList.add(a);
                                }
                            }
                            vVar2.m28538e(c + g3);
                        }
                        metadata = arrayList.isEmpty() ? null : new Metadata(arrayList);
                    }
                }
            }
        }
        return metadata;
    }

    /* renamed from: c */
    public static float m27895c(C2904v vVar, int i) {
        vVar.m28538e(i + 8);
        return vVar.m28520v() / vVar.m28520v();
    }

    /* renamed from: c */
    public static Pair<Long, String> m27896c(C2904v vVar) {
        int i = 8;
        vVar.m28538e(8);
        int c = AbstractC3087c.m27919c(vVar.m28535g());
        vVar.m28536f(c == 0 ? 8 : 16);
        long t = vVar.m28522t();
        if (c == 0) {
            i = 4;
        }
        vVar.m28536f(i);
        int x = vVar.m28518x();
        return Pair.create(Long.valueOf(t), "" + ((char) (((x >> 10) & 31) + 96)) + ((char) (((x >> 5) & 31) + 96)) + ((char) ((x & 31) + 96)));
    }

    /* renamed from: c */
    public static byte[] m27894c(C2904v vVar, int i, int i2) {
        int i3 = i;
        int i4 = 8;
        while (true) {
            int i5 = i3 + i4;
            if (i5 - i >= i2) {
                return null;
            }
            vVar.m28538e(i5);
            int g = vVar.m28535g();
            if (vVar.m28535g() == 1886547818) {
                return Arrays.copyOfRange(vVar.f10530a, i5, g + i5);
            }
            i3 = i5;
            i4 = g;
        }
    }

    /* renamed from: d */
    public static long m27893d(C2904v vVar) {
        int i = 8;
        vVar.m28538e(8);
        if (AbstractC3087c.m27919c(vVar.m28535g()) != 0) {
            i = 16;
        }
        vVar.m28536f(i);
        return vVar.m28522t();
    }

    /* renamed from: d */
    public static Pair<Integer, C3111m> m27891d(C2904v vVar, int i, int i2) {
        Pair<Integer, C3111m> b;
        int c = vVar.m28543c();
        while (c - i < i2) {
            vVar.m28538e(c);
            int g = vVar.m28535g();
            C2877e.m28733a(g > 0, "childAtomSize should be positive");
            if (vVar.m28535g() == 1936289382 && (b = m27898b(vVar, c, g)) != null) {
                return b;
            }
            c += g;
        }
        return null;
    }

    /* renamed from: d */
    public static Metadata m27892d(C2904v vVar, int i) {
        vVar.m28536f(12);
        while (vVar.m28543c() < i) {
            int c = vVar.m28543c();
            int g = vVar.m28535g();
            if (vVar.m28535g() == 1768715124) {
                vVar.m28538e(c);
                return m27899b(vVar, c + g);
            }
            vVar.m28538e(c + g);
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
    public static p131c.p161d.p170b.p188c.p210w0.p215v.C3090d.C3096f m27890e(p131c.p161d.p170b.p188c.p203g1.C2904v r7) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p215v.C3090d.m27890e(c.d.b.c.g1.v):c.d.b.c.w0.v.d$f");
    }
}
