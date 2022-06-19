package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.C4822h;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.AbstractC5062c;
import com.google.android.exoplayer2.metadata.emsg.C5128b;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4896c;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.text.p252l.C5341g;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5531s;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.extractor.mp4.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/g.class */
public class C5076g implements AbstractC4978h {

    /* renamed from: a */
    public static final AbstractC4982l f15803a = C5060a.f15761a;

    /* renamed from: b */
    private static final byte[] f15804b = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: c */
    private static final Format f15805c = Format.m21737t(null, "application/x-emsg", Long.MAX_VALUE);

    /* renamed from: A */
    private long f15806A;

    /* renamed from: B */
    private long f15807B;

    /* renamed from: C */
    private C5078b f15808C;

    /* renamed from: D */
    private int f15809D;

    /* renamed from: E */
    private int f15810E;

    /* renamed from: F */
    private int f15811F;

    /* renamed from: G */
    private boolean f15812G;

    /* renamed from: H */
    private AbstractC4980j f15813H;

    /* renamed from: I */
    private AbstractC4996v[] f15814I;

    /* renamed from: J */
    private AbstractC4996v[] f15815J;

    /* renamed from: K */
    private boolean f15816K;

    /* renamed from: d */
    private final int f15817d;

    /* renamed from: e */
    private final C5085l f15818e;

    /* renamed from: f */
    private final List<Format> f15819f;

    /* renamed from: g */
    private final SparseArray<C5078b> f15820g;

    /* renamed from: h */
    private final C5536v f15821h;

    /* renamed from: i */
    private final C5536v f15822i;

    /* renamed from: j */
    private final C5536v f15823j;

    /* renamed from: k */
    private final byte[] f15824k;

    /* renamed from: l */
    private final C5536v f15825l;

    /* renamed from: m */
    private final C5509e0 f15826m;

    /* renamed from: n */
    private final C5128b f15827n;

    /* renamed from: o */
    private final C5536v f15828o;

    /* renamed from: p */
    private final ArrayDeque<AbstractC5062c.C5063a> f15829p;

    /* renamed from: q */
    private final ArrayDeque<C5077a> f15830q;

    /* renamed from: r */
    private final AbstractC4996v f15831r;

    /* renamed from: s */
    private int f15832s;

    /* renamed from: t */
    private int f15833t;

    /* renamed from: u */
    private long f15834u;

    /* renamed from: v */
    private int f15835v;

    /* renamed from: w */
    private C5536v f15836w;

    /* renamed from: x */
    private long f15837x;

    /* renamed from: y */
    private int f15838y;

    /* renamed from: z */
    private long f15839z;

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/g$a.class */
    public static final class C5077a {

        /* renamed from: a */
        public final long f15840a;

        /* renamed from: b */
        public final int f15841b;

        public C5077a(long j, int i) {
            this.f15840a = j;
            this.f15841b = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.g$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/g$b.class */
    public static final class C5078b {

        /* renamed from: a */
        public final AbstractC4996v f15842a;

        /* renamed from: d */
        public C5085l f15845d;

        /* renamed from: e */
        public C5072e f15846e;

        /* renamed from: f */
        public int f15847f;

        /* renamed from: g */
        public int f15848g;

        /* renamed from: h */
        public int f15849h;

        /* renamed from: i */
        public int f15850i;

        /* renamed from: b */
        public final C5087n f15843b = new C5087n();

        /* renamed from: c */
        public final C5536v f15844c = new C5536v();

        /* renamed from: j */
        private final C5536v f15851j = new C5536v(1);

        /* renamed from: k */
        private final C5536v f15852k = new C5536v();

        public C5078b(AbstractC4996v abstractC4996v) {
            this.f15842a = abstractC4996v;
        }

        /* renamed from: c */
        public C5086m m20642c() {
            C5087n c5087n = this.f15843b;
            int i = c5087n.f15900a.f15793a;
            C5086m c5086m = c5087n.f15914o;
            if (c5086m == null) {
                c5086m = this.f15845d.m20594a(i);
            }
            if (c5086m == null || !c5086m.f15895a) {
                c5086m = null;
            }
            return c5086m;
        }

        /* renamed from: i */
        public void m20636i() {
            C5086m m20642c = m20642c();
            if (m20642c == null) {
                return;
            }
            C5536v c5536v = this.f15843b.f15916q;
            int i = m20642c.f15898d;
            if (i != 0) {
                c5536v.m18679N(i);
            }
            if (!this.f15843b.m20586g(this.f15847f)) {
                return;
            }
            c5536v.m18679N(c5536v.m18687F() * 6);
        }

        /* renamed from: d */
        public void m20641d(C5085l c5085l, C5072e c5072e) {
            this.f15845d = (C5085l) C5508e.m18911e(c5085l);
            this.f15846e = (C5072e) C5508e.m18911e(c5072e);
            this.f15842a.mo19983d(c5085l.f15889f);
            m20638g();
        }

        /* renamed from: e */
        public boolean m20640e() {
            this.f15847f++;
            int i = this.f15848g + 1;
            this.f15848g = i;
            int[] iArr = this.f15843b.f15907h;
            int i2 = this.f15849h;
            if (i == iArr[i2]) {
                this.f15849h = i2 + 1;
                this.f15848g = 0;
                return false;
            }
            return true;
        }

        /* renamed from: f */
        public int m20639f(int i, int i2) {
            C5536v c5536v;
            C5086m m20642c = m20642c();
            if (m20642c == null) {
                return 0;
            }
            int i3 = m20642c.f15898d;
            if (i3 != 0) {
                c5536v = this.f15843b.f15916q;
            } else {
                byte[] bArr = m20642c.f15899e;
                this.f15852k.m18682K(bArr, bArr.length);
                c5536v = this.f15852k;
                i3 = bArr.length;
            }
            boolean m20586g = this.f15843b.m20586g(this.f15847f);
            boolean z = m20586g || i2 != 0;
            C5536v c5536v2 = this.f15851j;
            c5536v2.f17941a[0] = (byte) ((z ? 128 : 0) | i3);
            c5536v2.m18680M(0);
            this.f15842a.mo19985b(this.f15851j, 1);
            this.f15842a.mo19985b(c5536v, i3);
            if (!z) {
                return i3 + 1;
            }
            if (!m20586g) {
                this.f15844c.m18684I(8);
                C5536v c5536v3 = this.f15844c;
                byte[] bArr2 = c5536v3.f17941a;
                bArr2[0] = (byte) 0;
                bArr2[1] = (byte) 1;
                bArr2[2] = (byte) ((i2 >> 8) & 255);
                bArr2[3] = (byte) (i2 & 255);
                bArr2[4] = (byte) ((i >> 24) & 255);
                bArr2[5] = (byte) ((i >> 16) & 255);
                bArr2[6] = (byte) ((i >> 8) & 255);
                bArr2[7] = (byte) (i & 255);
                this.f15842a.mo19985b(c5536v3, 8);
                return i3 + 1 + 8;
            }
            C5536v c5536v4 = this.f15843b.f15916q;
            int m18687F = c5536v4.m18687F();
            c5536v4.m18679N(-2);
            int i4 = (m18687F * 6) + 2;
            C5536v c5536v5 = c5536v4;
            if (i2 != 0) {
                this.f15844c.m18684I(i4);
                this.f15844c.m18671h(c5536v4.f17941a, 0, i4);
                c5536v4.m18679N(i4);
                c5536v5 = this.f15844c;
                byte[] bArr3 = c5536v5.f17941a;
                int i5 = (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) + i2;
                bArr3[2] = (byte) ((i5 >> 8) & 255);
                bArr3[3] = (byte) (i5 & 255);
            }
            this.f15842a.mo19985b(c5536v5, i4);
            return i3 + 1 + i4;
        }

        /* renamed from: g */
        public void m20638g() {
            this.f15843b.m20587f();
            this.f15847f = 0;
            this.f15849h = 0;
            this.f15848g = 0;
            this.f15850i = 0;
        }

        /* renamed from: h */
        public void m20637h(long j) {
            long m18629b = C5543v.m18629b(j);
            int i = this.f15847f;
            while (true) {
                C5087n c5087n = this.f15843b;
                if (i >= c5087n.f15905f || c5087n.m20590c(i) >= m18629b) {
                    return;
                }
                if (this.f15843b.f15911l[i]) {
                    this.f15850i = i;
                }
                i++;
            }
        }

        /* renamed from: j */
        public void m20635j(DrmInitData drmInitData) {
            C5086m m20594a = this.f15845d.m20594a(this.f15843b.f15900a.f15793a);
            this.f15842a.mo19983d(this.f15845d.f15889f.m21751d(drmInitData.m20798c(m20594a != null ? m20594a.f15896b : null)));
        }
    }

    public C5076g() {
        this(0);
    }

    public C5076g(int i) {
        this(i, null);
    }

    public C5076g(int i, C5509e0 c5509e0) {
        this(i, c5509e0, null, Collections.emptyList());
    }

    public C5076g(int i, C5509e0 c5509e0, C5085l c5085l, List<Format> list) {
        this(i, c5509e0, c5085l, list, null);
    }

    public C5076g(int i, C5509e0 c5509e0, C5085l c5085l, List<Format> list, AbstractC4996v abstractC4996v) {
        this.f15817d = i | (c5085l != null ? 8 : 0);
        this.f15826m = c5509e0;
        this.f15818e = c5085l;
        this.f15819f = Collections.unmodifiableList(list);
        this.f15831r = abstractC4996v;
        this.f15827n = new C5128b();
        this.f15828o = new C5536v(16);
        this.f15821h = new C5536v(C5531s.f17917a);
        this.f15822i = new C5536v(5);
        this.f15823j = new C5536v();
        byte[] bArr = new byte[16];
        this.f15824k = bArr;
        this.f15825l = new C5536v(bArr);
        this.f15829p = new ArrayDeque<>();
        this.f15830q = new ArrayDeque<>();
        this.f15820g = new SparseArray<>();
        this.f15806A = -9223372036854775807L;
        this.f15839z = -9223372036854775807L;
        this.f15807B = -9223372036854775807L;
        m20665a();
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: A */
    private static Pair<Long, C4896c> m20680A(C5536v c5536v, long j) {
        char c;
        char c2;
        c5536v.m18680M(8);
        int m20718c = AbstractC5062c.m20718c(c5536v.m18668k());
        c5536v.m18679N(4);
        long m18691B = c5536v.m18691B();
        if (m20718c == 0) {
            c2 = c5536v.m18691B();
            c = c5536v.m18691B();
        } else {
            c2 = c5536v.m18688E();
            c = c5536v.m18688E();
        }
        char c3 = j + c;
        ?? m18822l0 = C5515h0.m18822l0(c2, 1000000L, m18691B);
        c5536v.m18679N(2);
        int m18687F = c5536v.m18687F();
        int[] iArr = new int[m18687F];
        long[] jArr = new long[m18687F];
        long[] jArr2 = new long[m18687F];
        long[] jArr3 = new long[m18687F];
        char c4 = c2;
        char c5 = m18822l0;
        int i = 0;
        while (i < m18687F) {
            int m18668k = c5536v.m18668k();
            if ((m18668k & Integer.MIN_VALUE) != 0) {
                throw new ParserException("Unhandled indirect reference");
            }
            long m18691B2 = c5536v.m18691B();
            iArr[i] = m18668k & Integer.MAX_VALUE;
            jArr[i] = c3 == 1 ? 1 : 0;
            jArr3[i] = c5 == 1 ? 1 : 0;
            char c6 = c4 + m18691B2;
            char m18822l02 = C5515h0.m18822l0(c6, 1000000L, m18691B);
            jArr2[i] = m18822l02 - jArr3[i];
            c5536v.m18679N(4);
            c3 += iArr[i];
            i++;
            c5 = m18822l02;
            c4 = c6;
        }
        return Pair.create(Long.valueOf((long) m18822l0), new C4896c(iArr, jArr, jArr2, jArr3));
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: B */
    private static long m20679B(C5536v c5536v) {
        c5536v.m18680M(8);
        return AbstractC5062c.m20718c(c5536v.m18668k()) == 1 ? c5536v.m18688E() : c5536v.m18691B();
    }

    /* renamed from: C */
    private static C5078b m20678C(C5536v c5536v, SparseArray<C5078b> sparseArray) {
        c5536v.m18680M(8);
        int m20719b = AbstractC5062c.m20719b(c5536v.m18668k());
        C5078b m20661j = m20661j(sparseArray, c5536v.m18668k());
        if (m20661j == null) {
            return null;
        }
        if ((m20719b & 1) != 0) {
            long m18688E = c5536v.m18688E();
            C5087n c5087n = m20661j.f15843b;
            c5087n.f15902c = m18688E;
            c5087n.f15903d = m18688E;
        }
        C5072e c5072e = m20661j.f15846e;
        m20661j.f15843b.f15900a = new C5072e((m20719b & 2) != 0 ? c5536v.m18689D() - 1 : c5072e.f15793a, (m20719b & 8) != 0 ? c5536v.m18689D() : c5072e.f15794b, (m20719b & 16) != 0 ? c5536v.m18689D() : c5072e.f15795c, (m20719b & 32) != 0 ? c5536v.m18689D() : c5072e.f15796d);
        return m20661j;
    }

    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: D */
    private static void m20677D(AbstractC5062c.C5063a c5063a, SparseArray<C5078b> sparseArray, int i, byte[] bArr) {
        C5078b m20678C = m20678C(c5063a.m20714g(1952868452).f15767b, sparseArray);
        if (m20678C == null) {
            return;
        }
        C5087n c5087n = m20678C.f15843b;
        ?? r0 = c5087n.f15918s;
        m20678C.m20638g();
        char c = r0;
        if (c5063a.m20714g(1952867444) != null) {
            c = r0;
            if ((i & 2) == 0) {
                c = m20679B(c5063a.m20714g(1952867444).f15767b);
            }
        }
        m20674G(c5063a, m20678C, c, i);
        C5086m m20594a = m20678C.f15845d.m20594a(c5087n.f15900a.f15793a);
        AbstractC5062c.C5064b m20714g = c5063a.m20714g(1935763834);
        if (m20714g != null) {
            m20648w(m20594a, m20714g.f15767b, c5087n);
        }
        AbstractC5062c.C5064b m20714g2 = c5063a.m20714g(1935763823);
        if (m20714g2 != null) {
            m20649v(m20714g2.f15767b, c5087n);
        }
        AbstractC5062c.C5064b m20714g3 = c5063a.m20714g(1936027235);
        if (m20714g3 != null) {
            m20646y(m20714g3.f15767b, c5087n);
        }
        AbstractC5062c.C5064b m20714g4 = c5063a.m20714g(1935828848);
        AbstractC5062c.C5064b m20714g5 = c5063a.m20714g(1936158820);
        if (m20714g4 != null && m20714g5 != null) {
            m20645z(m20714g4.f15767b, m20714g5.f15767b, m20594a != null ? m20594a.f15896b : null, c5087n);
        }
        int size = c5063a.f15765c.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC5062c.C5064b c5064b = c5063a.f15765c.get(i2);
            if (c5064b.f15763a == 1970628964) {
                m20673H(c5064b.f15767b, c5087n, bArr);
            }
        }
    }

    /* renamed from: E */
    private static Pair<Integer, C5072e> m20676E(C5536v c5536v) {
        c5536v.m18680M(12);
        return Pair.create(Integer.valueOf(c5536v.m18668k()), new C5072e(c5536v.m18689D() - 1, c5536v.m18689D(), c5536v.m18689D(), c5536v.m18668k()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* renamed from: F */
    private static int m20675F(C5078b c5078b, int i, long j, int i2, C5536v c5536v, int i3) {
        c5536v.m18680M(8);
        int m20719b = AbstractC5062c.m20719b(c5536v.m18668k());
        C5085l c5085l = c5078b.f15845d;
        C5087n c5087n = c5078b.f15843b;
        C5072e c5072e = c5087n.f15900a;
        c5087n.f15907h[i] = c5536v.m18689D();
        long[] jArr = c5087n.f15906g;
        jArr[i] = c5087n.f15902c;
        if ((m20719b & 1) != 0) {
            jArr[i] = jArr[i] + c5536v.m18668k();
        }
        boolean z = (m20719b & 4) != 0;
        int i4 = c5072e.f15796d;
        if (z) {
            i4 = c5536v.m18689D();
        }
        boolean z2 = (m20719b & 256) != 0;
        boolean z3 = (m20719b & 512) != 0;
        boolean z4 = (m20719b & 1024) != 0;
        boolean z5 = (m20719b & 2048) != 0;
        long[] jArr2 = c5085l.f15891h;
        boolean z6 = false;
        if (jArr2 != null) {
            z6 = false;
            if (jArr2.length == 1) {
                z6 = false;
                if (jArr2[0] == 0) {
                    z6 = C5515h0.m18822l0(c5085l.f15892i[0], 1000L, c5085l.f15886c);
                }
            }
        }
        int[] iArr = c5087n.f15908i;
        int[] iArr2 = c5087n.f15909j;
        long[] jArr3 = c5087n.f15910k;
        boolean[] zArr = c5087n.f15911l;
        boolean z7 = c5085l.f15885b == 2 && (i2 & 1) != 0;
        int i5 = i3 + c5087n.f15907h[i];
        long j2 = c5085l.f15886c;
        ?? r11 = j;
        if (i > 0) {
            r11 = c5087n.f15918s;
        }
        char c = r11;
        while (i3 < i5) {
            int m18689D = z2 ? c5536v.m18689D() : c5072e.f15794b;
            int m18689D2 = z3 ? c5536v.m18689D() : c5072e.f15795c;
            int m18668k = (i3 != 0 || !z) ? z4 ? c5536v.m18668k() : c5072e.f15796d : i4;
            if (z5) {
                iArr2[i3] = (int) ((c5536v.m18668k() * 1000) / j2);
            } else {
                iArr2[i3] = 0;
            }
            jArr3[i3] = C5515h0.m18822l0(c, 1000L, j2) - (z6 ? 1L : 0L);
            iArr[i3] = m18689D2;
            zArr[i3] = ((m18668k >> 16) & 1) == 0 && (!z7 || i3 == 0);
            i3++;
            c += m18689D;
        }
        c5087n.f15918s = c;
        return i5;
    }

    /* renamed from: G */
    private static void m20674G(AbstractC5062c.C5063a c5063a, C5078b c5078b, long j, int i) {
        int i2;
        List<AbstractC5062c.C5064b> list = c5063a.f15765c;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i2 = i5;
            if (i3 >= size) {
                break;
            }
            AbstractC5062c.C5064b c5064b = list.get(i3);
            int i6 = i4;
            int i7 = i2;
            if (c5064b.f15763a == 1953658222) {
                C5536v c5536v = c5064b.f15767b;
                c5536v.m18680M(12);
                int m18689D = c5536v.m18689D();
                i6 = i4;
                i7 = i2;
                if (m18689D > 0) {
                    i7 = i2 + m18689D;
                    i6 = i4 + 1;
                }
            }
            i3++;
            i4 = i6;
            i5 = i7;
        }
        c5078b.f15849h = 0;
        c5078b.f15848g = 0;
        c5078b.f15847f = 0;
        c5078b.f15843b.m20588e(i4, i2);
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i10 < size) {
            AbstractC5062c.C5064b c5064b2 = list.get(i10);
            int i11 = i8;
            int i12 = i9;
            if (c5064b2.f15763a == 1953658222) {
                i12 = m20675F(c5078b, i8, j, i, c5064b2.f15767b, i9);
                i11 = i8 + 1;
            }
            i10++;
            i8 = i11;
            i9 = i12;
        }
    }

    /* renamed from: H */
    private static void m20673H(C5536v c5536v, C5087n c5087n, byte[] bArr) {
        c5536v.m18680M(8);
        c5536v.m18671h(bArr, 0, 16);
        if (!Arrays.equals(bArr, f15804b)) {
            return;
        }
        m20647x(c5536v, 16, c5087n);
    }

    /* renamed from: I */
    private void m20672I(long j) {
        while (!this.f15829p.isEmpty() && this.f15829p.peek().f15764b == j) {
            m20657n(this.f15829p.pop());
        }
        m20665a();
    }

    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    /* renamed from: J */
    private boolean m20671J(AbstractC4979i abstractC4979i) {
        if (this.f15835v == 0) {
            if (!abstractC4979i.mo21009a(this.f15828o.f17941a, 0, 8, true)) {
                return false;
            }
            this.f15835v = 8;
            this.f15828o.m18680M(0);
            this.f15834u = this.f15828o.m18691B();
            this.f15833t = this.f15828o.m18668k();
        }
        long j = this.f15834u;
        if (j == 1) {
            abstractC4979i.readFully(this.f15828o.f17941a, 8, 8);
            this.f15835v += 8;
            this.f15834u = this.f15828o.m18688E();
        } else if (j == 0) {
            ?? length = abstractC4979i.getLength();
            char c = length;
            if (length == -1) {
                c = length;
                if (!this.f15829p.isEmpty()) {
                    c = this.f15829p.peek().f15764b;
                }
            }
            if (c != -1) {
                this.f15834u = (c - abstractC4979i.mo20999k()) + this.f15835v;
            }
        }
        if (this.f15834u >= this.f15835v) {
            long mo20999k = abstractC4979i.mo20999k() - this.f15835v;
            if (this.f15833t == 1836019558) {
                int size = this.f15820g.size();
                for (int i = 0; i < size; i++) {
                    C5087n c5087n = this.f15820g.valueAt(i).f15843b;
                    c5087n.f15901b = mo20999k;
                    c5087n.f15903d = mo20999k;
                    c5087n.f15902c = mo20999k;
                }
            }
            int i2 = this.f15833t;
            if (i2 == 1835295092) {
                this.f15808C = null;
                this.f15837x = this.f15834u + mo20999k;
                if (!this.f15816K) {
                    this.f15813H.mo19764c(new AbstractC4992t.C4994b(this.f15806A, mo20999k));
                    this.f15816K = true;
                }
                this.f15832s = 2;
                return true;
            } else if (m20667N(i2)) {
                long mo20999k2 = (abstractC4979i.mo20999k() + this.f15834u) - 8;
                this.f15829p.push(new AbstractC5062c.C5063a(this.f15833t, mo20999k2));
                if (this.f15834u == this.f15835v) {
                    m20672I(mo20999k2);
                    return true;
                }
                m20665a();
                return true;
            } else if (!m20666O(this.f15833t)) {
                if (this.f15834u > 2147483647L) {
                    throw new ParserException("Skipping atom with length > 2147483647 (unsupported).");
                }
                this.f15836w = null;
                this.f15832s = 1;
                return true;
            } else if (this.f15835v != 8) {
                throw new ParserException("Leaf atom defines extended atom size (unsupported).");
            } else {
                long j2 = this.f15834u;
                if (j2 > 2147483647L) {
                    throw new ParserException("Leaf atom with length > 2147483647 (unsupported).");
                }
                C5536v c5536v = new C5536v((int) j2);
                this.f15836w = c5536v;
                System.arraycopy(this.f15828o.f17941a, 0, c5536v.f17941a, 0, 8);
                this.f15832s = 1;
                return true;
            }
        }
        throw new ParserException("Atom size less than header length (unsupported).");
    }

    /* renamed from: K */
    private void m20670K(AbstractC4979i abstractC4979i) {
        int i = ((int) this.f15834u) - this.f15835v;
        C5536v c5536v = this.f15836w;
        if (c5536v != null) {
            abstractC4979i.readFully(c5536v.f17941a, 8, i);
            m20655p(new AbstractC5062c.C5064b(this.f15833t, this.f15836w), abstractC4979i.mo20999k());
        } else {
            abstractC4979i.mo21002h(i);
        }
        m20672I(abstractC4979i.mo20999k());
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* renamed from: L */
    private void m20669L(AbstractC4979i abstractC4979i) {
        int size = this.f15820g.size();
        C5078b c5078b = null;
        char c = 65535;
        int i = 0;
        while (i < size) {
            C5087n c5087n = this.f15820g.valueAt(i).f15843b;
            C5078b c5078b2 = c5078b;
            char c2 = c;
            if (c5087n.f15917r) {
                ?? r0 = c5087n.f15903d;
                c5078b2 = c5078b;
                c2 = c;
                if (r0 < c) {
                    c5078b2 = this.f15820g.valueAt(i);
                    c2 = r0;
                }
            }
            i++;
            c5078b = c5078b2;
            c = c2;
        }
        if (c5078b == null) {
            this.f15832s = 3;
            return;
        }
        int mo20999k = (int) (c - abstractC4979i.mo20999k());
        if (mo20999k < 0) {
            throw new ParserException("Offset to encryption data was negative.");
        }
        abstractC4979i.mo21002h(mo20999k);
        c5078b.f15843b.m20592a(abstractC4979i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [com.google.android.exoplayer2.util.e0] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.android.exoplayer2.c1.v] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [long] */
    /* JADX WARN: Type inference failed for: r1v5, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.google.android.exoplayer2.extractor.mp4.g] */
    /* renamed from: M */
    private boolean m20668M(AbstractC4979i abstractC4979i) {
        AbstractC4996v.C4997a c4997a;
        int i;
        if (this.f15832s == 3) {
            if (this.f15808C == null) {
                C5078b m20662i = m20662i(this.f15820g);
                if (m20662i == null) {
                    int mo20999k = (int) (this.f15837x - abstractC4979i.mo20999k());
                    if (mo20999k < 0) {
                        throw new ParserException("Offset to end of mdat was negative.");
                    }
                    abstractC4979i.mo21002h(mo20999k);
                    m20665a();
                    return false;
                }
                int mo20999k2 = (int) (m20662i.f15843b.f15906g[m20662i.f15849h] - abstractC4979i.mo20999k());
                int i2 = mo20999k2;
                if (mo20999k2 < 0) {
                    C5526o.m18742f("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                    i2 = 0;
                }
                abstractC4979i.mo21002h(i2);
                this.f15808C = m20662i;
            }
            C5078b c5078b = this.f15808C;
            int[] iArr = c5078b.f15843b.f15908i;
            int i3 = c5078b.f15847f;
            int i4 = iArr[i3];
            this.f15809D = i4;
            if (i3 < c5078b.f15850i) {
                abstractC4979i.mo21002h(i4);
                this.f15808C.m20636i();
                if (!this.f15808C.m20640e()) {
                    this.f15808C = null;
                }
                this.f15832s = 3;
                return true;
            }
            if (c5078b.f15845d.f15890g == 1) {
                this.f15809D = i4 - 8;
                abstractC4979i.mo21002h(8);
            }
            if ("audio/ac4".equals(this.f15808C.f15845d.f15889f.f14461l)) {
                this.f15810E = this.f15808C.m20639f(this.f15809D, 7);
                C4822h.m21587a(this.f15809D, this.f15825l);
                this.f15808C.f15842a.mo19985b(this.f15825l, 7);
                this.f15810E += 7;
            } else {
                this.f15810E = this.f15808C.m20639f(this.f15809D, 0);
            }
            this.f15809D += this.f15810E;
            this.f15832s = 4;
            this.f15811F = 0;
        }
        C5078b c5078b2 = this.f15808C;
        C5087n c5087n = c5078b2.f15843b;
        C5085l c5085l = c5078b2.f15845d;
        ?? r0 = c5078b2.f15842a;
        int i5 = c5078b2.f15847f;
        ?? m20590c = c5087n.m20590c(i5) * 1000;
        ?? r02 = this.f15826m;
        ?? r18 = m20590c;
        if (r02 != 0) {
            r18 = r02.m18906a(m20590c);
        }
        int i6 = c5085l.f15893j;
        if (i6 == 0) {
            while (true) {
                int i7 = this.f15810E;
                int i8 = this.f15809D;
                if (i7 >= i8) {
                    break;
                }
                this.f15810E += r0.mo19986a(abstractC4979i, i8 - i7, false);
            }
        } else {
            byte[] bArr = this.f15822i.f17941a;
            bArr[0] = (byte) 0;
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            int i9 = 4 - i6;
            while (this.f15810E < this.f15809D) {
                int i10 = this.f15811F;
                if (i10 == 0) {
                    abstractC4979i.readFully(bArr, i9, i6 + 1);
                    this.f15822i.m18680M(0);
                    int m18668k = this.f15822i.m18668k();
                    if (m18668k < 1) {
                        throw new ParserException("Invalid NAL length");
                    }
                    this.f15811F = m18668k - 1;
                    this.f15821h.m18680M(0);
                    r0.mo19985b(this.f15821h, 4);
                    r0.mo19985b(this.f15822i, 1);
                    this.f15812G = this.f15815J.length > 0 && C5531s.m18716g(c5085l.f15889f.f14461l, bArr[4]);
                    this.f15810E += 5;
                    this.f15809D += i9;
                } else {
                    if (this.f15812G) {
                        this.f15823j.m18684I(i10);
                        abstractC4979i.readFully(this.f15823j.f17941a, 0, this.f15811F);
                        r0.mo19985b(this.f15823j, this.f15811F);
                        i = this.f15811F;
                        C5536v c5536v = this.f15823j;
                        int m18712k = C5531s.m18712k(c5536v.f17941a, c5536v.m18675d());
                        this.f15823j.m18680M("video/hevc".equals(c5085l.f15889f.f14461l) ? 1 : 0);
                        this.f15823j.m18681L(m18712k);
                        C5341g.m19575a(r18, this.f15823j, this.f15815J);
                    } else {
                        i = r0.mo19986a(abstractC4979i, i10, false);
                    }
                    this.f15810E += i;
                    this.f15811F -= i;
                }
            }
        }
        boolean z = c5087n.f15911l[i5];
        C5086m m20642c = this.f15808C.m20642c();
        if (m20642c != null) {
            c4997a = m20642c.f15897c;
            z |= true;
        } else {
            c4997a = null;
        }
        r0.mo19984c(r18, z ? 1 : 0, this.f15809D, 0, c4997a);
        m20652s(r18);
        if (!this.f15808C.m20640e()) {
            this.f15808C = null;
        }
        this.f15832s = 3;
        return true;
    }

    /* renamed from: N */
    private static boolean m20667N(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    /* renamed from: O */
    private static boolean m20666O(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    /* renamed from: a */
    private void m20665a() {
        this.f15832s = 0;
        this.f15835v = 0;
    }

    /* renamed from: d */
    private C5072e m20664d(SparseArray<C5072e> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : (C5072e) C5508e.m18911e(sparseArray.get(i));
    }

    /* renamed from: e */
    private static DrmInitData m20663e(List<AbstractC5062c.C5064b> list) {
        ArrayList arrayList;
        int size = list.size();
        int i = 0;
        ArrayList arrayList2 = null;
        while (true) {
            arrayList = arrayList2;
            if (i >= size) {
                break;
            }
            AbstractC5062c.C5064b c5064b = list.get(i);
            ArrayList arrayList3 = arrayList;
            if (c5064b.f15763a == 1886614376) {
                arrayList3 = arrayList;
                if (arrayList == null) {
                    arrayList3 = new ArrayList();
                }
                byte[] bArr = c5064b.f15767b.f17941a;
                UUID m20600d = C5082j.m20600d(bArr);
                if (m20600d == null) {
                    C5526o.m18742f("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList3.add(new DrmInitData.SchemeData(m20600d, "video/mp4", bArr));
                }
            }
            i++;
            arrayList2 = arrayList3;
        }
        return arrayList == null ? null : new DrmInitData(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* renamed from: i */
    private static C5078b m20662i(SparseArray<C5078b> sparseArray) {
        char c;
        int size = sparseArray.size();
        C5078b c5078b = null;
        char c2 = 65535;
        int i = 0;
        while (i < size) {
            C5078b valueAt = sparseArray.valueAt(i);
            int i2 = valueAt.f15849h;
            C5087n c5087n = valueAt.f15843b;
            if (i2 == c5087n.f15904e) {
                c = c2;
            } else {
                ?? r0 = c5087n.f15906g[i2];
                c = c2;
                if (r0 < c2) {
                    c5078b = valueAt;
                    c = r0;
                }
            }
            i++;
            c2 = c;
        }
        return c5078b;
    }

    /* renamed from: j */
    private static C5078b m20661j(SparseArray<C5078b> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : sparseArray.get(i);
    }

    /* renamed from: k */
    public static /* synthetic */ AbstractC4978h[] m20660k() {
        return new AbstractC4978h[]{new C5076g()};
    }

    /* renamed from: l */
    private void m20659l() {
        int i;
        if (this.f15814I == null) {
            AbstractC4996v[] abstractC4996vArr = new AbstractC4996v[2];
            this.f15814I = abstractC4996vArr;
            AbstractC4996v abstractC4996v = this.f15831r;
            if (abstractC4996v != null) {
                abstractC4996vArr[0] = abstractC4996v;
                i = 1;
            } else {
                i = 0;
            }
            int i2 = i;
            if ((this.f15817d & 4) != 0) {
                abstractC4996vArr[i] = this.f15813H.mo19748t(this.f15820g.size(), 4);
                i2 = i + 1;
            }
            AbstractC4996v[] abstractC4996vArr2 = (AbstractC4996v[]) Arrays.copyOf(this.f15814I, i2);
            this.f15814I = abstractC4996vArr2;
            for (AbstractC4996v abstractC4996v2 : abstractC4996vArr2) {
                abstractC4996v2.mo19983d(f15805c);
            }
        }
        if (this.f15815J == null) {
            this.f15815J = new AbstractC4996v[this.f15819f.size()];
            for (int i3 = 0; i3 < this.f15815J.length; i3++) {
                AbstractC4996v mo19748t = this.f15813H.mo19748t(this.f15820g.size() + 1 + i3, 3);
                mo19748t.mo19983d(this.f15819f.get(i3));
                this.f15815J[i3] = mo19748t;
            }
        }
    }

    /* renamed from: n */
    private void m20657n(AbstractC5062c.C5063a c5063a) {
        int i = c5063a.f15763a;
        if (i == 1836019574) {
            m20653r(c5063a);
        } else if (i == 1836019558) {
            m20654q(c5063a);
        } else if (this.f15829p.isEmpty()) {
        } else {
            this.f15829p.peek().m20717d(c5063a);
        }
    }

    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* renamed from: o */
    private void m20656o(C5536v c5536v) {
        char c;
        String str;
        char c2;
        char c3;
        char c4;
        String str2;
        AbstractC4996v[] abstractC4996vArr;
        AbstractC4996v[] abstractC4996vArr2 = this.f15814I;
        if (abstractC4996vArr2 == null || abstractC4996vArr2.length == 0) {
            return;
        }
        c5536v.m18680M(8);
        int m20718c = AbstractC5062c.m20718c(c5536v.m18668k());
        if (m20718c == 0) {
            str2 = (String) C5508e.m18911e(c5536v.m18659t());
            str = (String) C5508e.m18911e(c5536v.m18659t());
            long m18691B = c5536v.m18691B();
            c = C5515h0.m18822l0(c5536v.m18691B(), 1000000L, m18691B);
            long j = this.f15807B;
            c3 = j != -9223372036854775807L ? j + c : (char) 1;
            c4 = C5515h0.m18822l0(c5536v.m18691B(), 1000L, m18691B);
            c2 = c5536v.m18691B();
        } else if (m20718c != 1) {
            C5526o.m18742f("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + m20718c);
            return;
        } else {
            long m18691B2 = c5536v.m18691B();
            c3 = C5515h0.m18822l0(c5536v.m18688E(), 1000000L, m18691B2);
            c4 = C5515h0.m18822l0(c5536v.m18691B(), 1000L, m18691B2);
            c2 = c5536v.m18691B();
            str2 = (String) C5508e.m18911e(c5536v.m18659t());
            str = (String) C5508e.m18911e(c5536v.m18659t());
            c = 1;
        }
        byte[] bArr = new byte[c5536v.m18678a()];
        c5536v.m18671h(bArr, 0, c5536v.m18678a());
        C5536v c5536v2 = new C5536v(this.f15827n.m20382a(new EventMessage(str2, str, c4, c2, bArr)));
        int m18678a = c5536v2.m18678a();
        for (AbstractC4996v abstractC4996v : this.f15814I) {
            c5536v2.m18680M(0);
            abstractC4996v.mo19985b(c5536v2, m18678a);
        }
        if (c3 == -9223372036854775807L) {
            this.f15830q.addLast(new C5077a(c, m18678a));
            this.f15838y += m18678a;
            return;
        }
        C5509e0 c5509e0 = this.f15826m;
        char c5 = c3;
        if (c5509e0 != null) {
            c5 = c5509e0.m18906a(c3);
        }
        for (AbstractC4996v abstractC4996v2 : this.f15814I) {
            abstractC4996v2.mo19984c(c5, 1, m18678a, 0, null);
        }
    }

    /* renamed from: p */
    private void m20655p(AbstractC5062c.C5064b c5064b, long j) {
        if (!this.f15829p.isEmpty()) {
            this.f15829p.peek().m20716e(c5064b);
            return;
        }
        int i = c5064b.f15763a;
        if (i != 1936286840) {
            if (i != 1701671783) {
                return;
            }
            m20656o(c5064b.f15767b);
            return;
        }
        Pair<Long, C4896c> m20680A = m20680A(c5064b.f15767b, j);
        this.f15807B = ((Long) m20680A.first).longValue();
        this.f15813H.mo19764c((AbstractC4992t) m20680A.second);
        this.f15816K = true;
    }

    /* renamed from: q */
    private void m20654q(AbstractC5062c.C5063a c5063a) {
        m20650u(c5063a, this.f15820g, this.f15817d, this.f15824k);
        DrmInitData m20663e = m20663e(c5063a.f15765c);
        if (m20663e != null) {
            int size = this.f15820g.size();
            for (int i = 0; i < size; i++) {
                this.f15820g.valueAt(i).m20635j(m20663e);
            }
        }
        if (this.f15839z != -9223372036854775807L) {
            int size2 = this.f15820g.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f15820g.valueAt(i2).m20637h(this.f15839z);
            }
            this.f15839z = -9223372036854775807L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* renamed from: r */
    private void m20653r(AbstractC5062c.C5063a c5063a) {
        C5508e.m18909g(this.f15818e == null, "Unexpected moov box.");
        DrmInitData m20663e = m20663e(c5063a.f15765c);
        AbstractC5062c.C5063a m20715f = c5063a.m20715f(1836475768);
        SparseArray sparseArray = new SparseArray();
        int size = m20715f.f15765c.size();
        char c = 1;
        for (int i = 0; i < size; i++) {
            AbstractC5062c.C5064b c5064b = m20715f.f15765c.get(i);
            int i2 = c5064b.f15763a;
            if (i2 == 1953654136) {
                Pair<Integer, C5072e> m20676E = m20676E(c5064b.f15767b);
                sparseArray.put(((Integer) m20676E.first).intValue(), m20676E.second);
            } else if (i2 == 1835362404) {
                c = m20651t(c5064b.f15767b);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = c5063a.f15766d.size();
        for (int i3 = 0; i3 < size2; i3++) {
            AbstractC5062c.C5063a c5063a2 = c5063a.f15766d.get(i3);
            if (c5063a2.f15763a == 1953653099) {
                C5085l m20658m = m20658m(C5065d.m20692v(c5063a2, c5063a.m20714g(1836476516), c, m20663e, (this.f15817d & 16) != 0, false));
                if (m20658m != null) {
                    sparseArray2.put(m20658m.f15884a, m20658m);
                }
            }
        }
        int size3 = sparseArray2.size();
        if (this.f15820g.size() != 0) {
            C5508e.m18910f(this.f15820g.size() == size3);
            for (int i4 = 0; i4 < size3; i4++) {
                C5085l c5085l = (C5085l) sparseArray2.valueAt(i4);
                this.f15820g.get(c5085l.f15884a).m20641d(c5085l, m20664d(sparseArray, c5085l.f15884a));
            }
            return;
        }
        for (int i5 = 0; i5 < size3; i5++) {
            C5085l c5085l2 = (C5085l) sparseArray2.valueAt(i5);
            C5078b c5078b = new C5078b(this.f15813H.mo19748t(i5, c5085l2.f15885b));
            c5078b.m20641d(c5085l2, m20664d(sparseArray, c5085l2.f15884a));
            this.f15820g.put(c5085l2.f15884a, c5078b);
            this.f15806A = Math.max(this.f15806A, c5085l2.f15888e);
        }
        m20659l();
        this.f15813H.mo19752o();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: s */
    private void m20652s(long j) {
        while (!this.f15830q.isEmpty()) {
            C5077a removeFirst = this.f15830q.removeFirst();
            this.f15838y -= removeFirst.f15841b;
            ?? r0 = removeFirst.f15840a + j;
            C5509e0 c5509e0 = this.f15826m;
            char c = r0;
            if (c5509e0 != 0) {
                c = c5509e0.m18906a(r0);
            }
            for (AbstractC4996v abstractC4996v : this.f15814I) {
                abstractC4996v.mo19984c(c, 1, removeFirst.f15841b, this.f15838y, null);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: t */
    private static long m20651t(C5536v c5536v) {
        c5536v.m18680M(8);
        return AbstractC5062c.m20718c(c5536v.m18668k()) == 0 ? c5536v.m18691B() : c5536v.m18688E();
    }

    /* renamed from: u */
    private static void m20650u(AbstractC5062c.C5063a c5063a, SparseArray<C5078b> sparseArray, int i, byte[] bArr) {
        int size = c5063a.f15766d.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC5062c.C5063a c5063a2 = c5063a.f15766d.get(i2);
            if (c5063a2.f15763a == 1953653094) {
                m20677D(c5063a2, sparseArray, i, bArr);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: v */
    private static void m20649v(C5536v c5536v, C5087n c5087n) {
        c5536v.m18680M(8);
        int m18668k = c5536v.m18668k();
        if ((AbstractC5062c.m20719b(m18668k) & 1) == 1) {
            c5536v.m18679N(8);
        }
        int m18689D = c5536v.m18689D();
        if (m18689D == 1) {
            c5087n.f15903d += AbstractC5062c.m20718c(m18668k) == 0 ? c5536v.m18691B() : c5536v.m18688E();
            return;
        }
        throw new ParserException("Unexpected saio entry count: " + m18689D);
    }

    /* renamed from: w */
    private static void m20648w(C5086m c5086m, C5536v c5536v, C5087n c5087n) {
        int i;
        int i2 = c5086m.f15898d;
        c5536v.m18680M(8);
        boolean z = true;
        if ((AbstractC5062c.m20719b(c5536v.m18668k()) & 1) == 1) {
            c5536v.m18679N(8);
        }
        int m18653z = c5536v.m18653z();
        int m18689D = c5536v.m18689D();
        if (m18689D != c5087n.f15905f) {
            throw new ParserException("Length mismatch: " + m18689D + ", " + c5087n.f15905f);
        }
        if (m18653z == 0) {
            boolean[] zArr = c5087n.f15913n;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i4;
                if (i3 >= m18689D) {
                    break;
                }
                int m18653z2 = c5536v.m18653z();
                i4 += m18653z2;
                zArr[i3] = m18653z2 > i2;
                i3++;
            }
        } else {
            if (m18653z <= i2) {
                z = false;
            }
            i = (m18653z * m18689D) + 0;
            Arrays.fill(c5087n.f15913n, 0, m18689D, z);
        }
        c5087n.m20589d(i);
    }

    /* renamed from: x */
    private static void m20647x(C5536v c5536v, int i, C5087n c5087n) {
        c5536v.m18680M(i + 8);
        int m20719b = AbstractC5062c.m20719b(c5536v.m18668k());
        if ((m20719b & 1) == 0) {
            boolean z = (m20719b & 2) != 0;
            int m18689D = c5536v.m18689D();
            if (m18689D == c5087n.f15905f) {
                Arrays.fill(c5087n.f15913n, 0, m18689D, z);
                c5087n.m20589d(c5536v.m18678a());
                c5087n.m20591b(c5536v);
                return;
            }
            throw new ParserException("Length mismatch: " + m18689D + ", " + c5087n.f15905f);
        }
        throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* renamed from: y */
    private static void m20646y(C5536v c5536v, C5087n c5087n) {
        m20647x(c5536v, 0, c5087n);
    }

    /* renamed from: z */
    private static void m20645z(C5536v c5536v, C5536v c5536v2, String str, C5087n c5087n) {
        byte[] bArr;
        c5536v.m18680M(8);
        int m18668k = c5536v.m18668k();
        if (c5536v.m18668k() != 1936025959) {
            return;
        }
        if (AbstractC5062c.m20718c(m18668k) == 1) {
            c5536v.m18679N(4);
        }
        if (c5536v.m18668k() != 1) {
            throw new ParserException("Entry count in sbgp != 1 (unsupported).");
        }
        c5536v2.m18680M(8);
        int m18668k2 = c5536v2.m18668k();
        if (c5536v2.m18668k() != 1936025959) {
            return;
        }
        int m20718c = AbstractC5062c.m20718c(m18668k2);
        if (m20718c == 1) {
            if (c5536v2.m18691B() == 0) {
                throw new ParserException("Variable length description in sgpd found (unsupported)");
            }
        } else if (m20718c >= 2) {
            c5536v2.m18679N(4);
        }
        if (c5536v2.m18691B() != 1) {
            throw new ParserException("Entry count in sgpd != 1 (unsupported).");
        }
        c5536v2.m18679N(1);
        int m18653z = c5536v2.m18653z();
        boolean z = c5536v2.m18653z() == 1;
        if (!z) {
            return;
        }
        int m18653z2 = c5536v2.m18653z();
        byte[] bArr2 = new byte[16];
        c5536v2.m18671h(bArr2, 0, 16);
        if (m18653z2 == 0) {
            int m18653z3 = c5536v2.m18653z();
            bArr = new byte[m18653z3];
            c5536v2.m18671h(bArr, 0, m18653z3);
        } else {
            bArr = null;
        }
        c5087n.f15912m = true;
        c5087n.f15914o = new C5086m(z, str, m18653z2, bArr2, (m18653z & 240) >> 4, m18653z & 15, bArr);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public boolean mo19972c(AbstractC4979i abstractC4979i) {
        return C5084k.m20597b(abstractC4979i);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        while (true) {
            int i = this.f15832s;
            if (i != 0) {
                if (i == 1) {
                    m20670K(abstractC4979i);
                } else if (i == 2) {
                    m20669L(abstractC4979i);
                } else if (m20668M(abstractC4979i)) {
                    return 0;
                }
            } else if (!m20671J(abstractC4979i)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15813H = abstractC4980j;
        C5085l c5085l = this.f15818e;
        if (c5085l != null) {
            C5078b c5078b = new C5078b(abstractC4980j.mo19748t(0, c5085l.f15885b));
            c5078b.m20641d(this.f15818e, new C5072e(0, 0, 0, 0));
            this.f15820g.put(0, c5078b);
            m20659l();
            this.f15813H.mo19752o();
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        int size = this.f15820g.size();
        for (int i = 0; i < size; i++) {
            this.f15820g.valueAt(i).m20638g();
        }
        this.f15830q.clear();
        this.f15838y = 0;
        this.f15839z = j2;
        this.f15829p.clear();
        m20665a();
    }

    /* renamed from: m */
    protected C5085l m20658m(C5085l c5085l) {
        return c5085l;
    }
}
