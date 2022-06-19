package androidx.media2.exoplayer.external.extractor.mp4;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.audio.C1398b;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.mp4.AbstractC1607a;
import androidx.media2.exoplayer.external.metadata.emsg.C1676b;
import androidx.media2.exoplayer.external.text.p071a.C1869f;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2014n;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* renamed from: androidx.media2.exoplayer.external.extractor.mp4.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/e.class */
public final class C1621e implements AbstractC1599g {

    /* renamed from: a */
    public static final AbstractC1602j f6373a = C1624f.f6424a;

    /* renamed from: b */
    private static final byte[] f6374b = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: c */
    private static final Format f6375c = Format.createSampleFormat(null, "application/x-emsg", Long.MAX_VALUE);

    /* renamed from: A */
    private long f6376A;

    /* renamed from: B */
    private long f6377B;

    /* renamed from: C */
    private long f6378C;

    /* renamed from: D */
    private C1623b f6379D;

    /* renamed from: E */
    private int f6380E;

    /* renamed from: F */
    private int f6381F;

    /* renamed from: G */
    private int f6382G;

    /* renamed from: H */
    private boolean f6383H;

    /* renamed from: I */
    private boolean f6384I;

    /* renamed from: J */
    private AbstractC1601i f6385J;

    /* renamed from: K */
    private AbstractC1641q[] f6386K;

    /* renamed from: L */
    private AbstractC1641q[] f6387L;

    /* renamed from: M */
    private boolean f6388M;

    /* renamed from: d */
    private final int f6389d;

    /* renamed from: e */
    private final C1632l f6390e;

    /* renamed from: f */
    private final List<Format> f6391f;

    /* renamed from: g */
    private final DrmInitData f6392g;

    /* renamed from: h */
    private final SparseArray<C1623b> f6393h;

    /* renamed from: i */
    private final C2018p f6394i;

    /* renamed from: j */
    private final C2018p f6395j;

    /* renamed from: k */
    private final C2018p f6396k;

    /* renamed from: l */
    private final byte[] f6397l;

    /* renamed from: m */
    private final C2018p f6398m;

    /* renamed from: n */
    private final C2030z f6399n;

    /* renamed from: o */
    private final C1676b f6400o;

    /* renamed from: p */
    private final C2018p f6401p;

    /* renamed from: q */
    private final ArrayDeque<AbstractC1607a.C1608a> f6402q;

    /* renamed from: r */
    private final ArrayDeque<C1622a> f6403r;

    /* renamed from: s */
    private final AbstractC1641q f6404s;

    /* renamed from: t */
    private int f6405t;

    /* renamed from: u */
    private int f6406u;

    /* renamed from: v */
    private long f6407v;

    /* renamed from: w */
    private int f6408w;

    /* renamed from: x */
    private C2018p f6409x;

    /* renamed from: y */
    private long f6410y;

    /* renamed from: z */
    private int f6411z;

    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/e$a.class */
    public static final class C1622a {

        /* renamed from: a */
        public final long f6412a;

        /* renamed from: b */
        public final int f6413b;

        public C1622a(long j, int i) {
            this.f6412a = j;
            this.f6413b = i;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/e$b.class */
    public static final class C1623b {

        /* renamed from: a */
        public final AbstractC1641q f6414a;

        /* renamed from: c */
        public C1632l f6416c;

        /* renamed from: d */
        public C1617c f6417d;

        /* renamed from: e */
        public int f6418e;

        /* renamed from: f */
        public int f6419f;

        /* renamed from: g */
        public int f6420g;

        /* renamed from: h */
        public int f6421h;

        /* renamed from: b */
        public final C1634n f6415b = new C1634n();

        /* renamed from: i */
        final C2018p f6422i = new C2018p(1);

        /* renamed from: j */
        final C2018p f6423j = new C2018p();

        public C1623b(AbstractC1641q abstractC1641q) {
            this.f6414a = abstractC1641q;
        }

        /* renamed from: a */
        public final void m42543a() {
            this.f6415b.m42512a();
            this.f6418e = 0;
            this.f6420g = 0;
            this.f6419f = 0;
            this.f6421h = 0;
        }

        /* renamed from: a */
        public final void m42542a(long j) {
            long m42894a = C1446c.m42894a(j);
            for (int i = this.f6418e; i < this.f6415b.f6478f && this.f6415b.m42508b(i) < m42894a; i++) {
                if (this.f6415b.f6484l[i]) {
                    this.f6421h = i;
                }
            }
        }

        /* renamed from: a */
        public final void m42541a(DrmInitData drmInitData) {
            C1633m m42513a = this.f6416c.m42513a(this.f6415b.f6473a.f6363a);
            this.f6414a.mo42192a(this.f6416c.f6462f.copyWithDrmInitData(drmInitData.copyWithSchemeType(m42513a != null ? m42513a.f6469b : null)));
        }

        /* renamed from: a */
        public final void m42540a(C1632l c1632l, C1617c c1617c) {
            this.f6416c = (C1632l) C1993a.m41690a(c1632l);
            this.f6417d = (C1617c) C1993a.m41690a(c1617c);
            this.f6414a.mo42192a(c1632l.f6462f);
            m42543a();
        }

        /* renamed from: b */
        public final boolean m42539b() {
            this.f6418e++;
            int i = this.f6419f + 1;
            this.f6419f = i;
            int[] iArr = this.f6415b.f6480h;
            int i2 = this.f6420g;
            if (i == iArr[i2]) {
                this.f6420g = i2 + 1;
                this.f6419f = 0;
                return false;
            }
            return true;
        }

        /* renamed from: c */
        final C1633m m42538c() {
            C1633m m42513a = this.f6415b.f6487o != null ? this.f6415b.f6487o : this.f6416c.m42513a(this.f6415b.f6473a.f6363a);
            if (m42513a == null || !m42513a.f6468a) {
                return null;
            }
            return m42513a;
        }
    }

    public C1621e() {
        this(0);
    }

    public C1621e(int i) {
        this(i, null);
    }

    public C1621e(int i, C2030z c2030z) {
        this(i, c2030z, null, null);
    }

    public C1621e(int i, C2030z c2030z, C1632l c1632l, DrmInitData drmInitData) {
        this(i, c2030z, c1632l, drmInitData, Collections.emptyList());
    }

    public C1621e(int i, C2030z c2030z, C1632l c1632l, DrmInitData drmInitData, List<Format> list) {
        this(i, c2030z, c1632l, drmInitData, list, null);
    }

    public C1621e(int i, C2030z c2030z, C1632l c1632l, DrmInitData drmInitData, List<Format> list, AbstractC1641q abstractC1641q) {
        this.f6389d = i | (c1632l != null ? 8 : 0);
        this.f6399n = c2030z;
        this.f6390e = c1632l;
        this.f6392g = drmInitData;
        this.f6391f = Collections.unmodifiableList(list);
        this.f6404s = abstractC1641q;
        this.f6400o = new C1676b();
        this.f6401p = new C2018p(16);
        this.f6394i = new C2018p(C2014n.f8107a);
        this.f6395j = new C2018p(5);
        this.f6396k = new C2018p();
        byte[] bArr = new byte[16];
        this.f6397l = bArr;
        this.f6398m = new C2018p(bArr);
        this.f6402q = new ArrayDeque<>();
        this.f6403r = new ArrayDeque<>();
        this.f6393h = new SparseArray<>();
        this.f6377B = -9223372036854775807L;
        this.f6376A = -9223372036854775807L;
        this.f6378C = -9223372036854775807L;
        m42553b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* renamed from: a */
    private static int m42562a(C1623b c1623b, int i, long j, int i2, C2018p c2018p, int i3) {
        c2018p.m41533c(8);
        int m41524i = c2018p.m41524i() & 16777215;
        C1632l c1632l = c1623b.f6416c;
        C1634n c1634n = c1623b.f6415b;
        C1617c c1617c = c1634n.f6473a;
        c1634n.f6480h[i] = c2018p.m41519n();
        c1634n.f6479g[i] = c1634n.f6475c;
        if ((m41524i & 1) != 0) {
            long[] jArr = c1634n.f6479g;
            jArr[i] = jArr[i] + c2018p.m41524i();
        }
        boolean z = (m41524i & 4) != 0;
        int i4 = c1617c.f6366d;
        if (z) {
            i4 = c2018p.m41519n();
        }
        boolean z2 = (m41524i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0;
        boolean z3 = (m41524i & 512) != 0;
        boolean z4 = (m41524i & 1024) != 0;
        boolean z5 = (m41524i & 2048) != 0;
        boolean z6 = false;
        if (c1632l.f6464h != null) {
            z6 = false;
            if (c1632l.f6464h.length == 1) {
                z6 = false;
                if (c1632l.f6464h[0] == 0) {
                    z6 = C1996ac.m41634b(c1632l.f6465i[0], 1000L, c1632l.f6459c);
                }
            }
        }
        int[] iArr = c1634n.f6481i;
        int[] iArr2 = c1634n.f6482j;
        long[] jArr2 = c1634n.f6483k;
        boolean[] zArr = c1634n.f6484l;
        boolean z7 = c1632l.f6458b == 2 && (i2 & 1) != 0;
        int i5 = i3 + c1634n.f6480h[i];
        long j2 = c1632l.f6459c;
        ?? r11 = j;
        if (i > 0) {
            r11 = c1634n.f6491s;
        }
        while (i3 < i5) {
            int m41519n = z2 ? c2018p.m41519n() : c1617c.f6364b;
            int m41519n2 = z3 ? c2018p.m41519n() : c1617c.f6365c;
            int m41524i2 = (i3 != 0 || !z) ? z4 ? c2018p.m41524i() : c1617c.f6366d : i4;
            if (z5) {
                iArr2[i3] = (int) ((c2018p.m41524i() * 1000) / j2);
            } else {
                iArr2[i3] = 0;
            }
            jArr2[i3] = C1996ac.m41634b((long) r11, 1000L, j2) - (z6 ? 1L : 0L);
            iArr[i3] = m41519n2;
            zArr[i3] = ((m41524i2 >> 16) & 1) == 0 && (!z7 || i3 == 0);
            i3++;
            r11 += m41519n;
        }
        char c = r11 == true ? 1 : 0;
        boolean z8 = r11 == true ? 1 : 0;
        c1634n.f6491s = c;
        return i5;
    }

    /* renamed from: a */
    private static Pair<Integer, C1617c> m42560a(C2018p c2018p) {
        c2018p.m41533c(12);
        return Pair.create(Integer.valueOf(c2018p.m41524i()), new C1617c(c2018p.m41519n() - 1, c2018p.m41519n(), c2018p.m41519n(), c2018p.m41524i()));
    }

    /* renamed from: a */
    private static DrmInitData m42554a(List<AbstractC1607a.C1609b> list) {
        ArrayList arrayList;
        int size = list.size();
        int i = 0;
        ArrayList arrayList2 = null;
        while (true) {
            arrayList = arrayList2;
            if (i >= size) {
                break;
            }
            AbstractC1607a.C1609b c1609b = list.get(i);
            ArrayList arrayList3 = arrayList;
            if (c1609b.f6333a == 1886614376) {
                arrayList3 = arrayList;
                if (arrayList == null) {
                    arrayList3 = new ArrayList();
                }
                byte[] bArr = c1609b.f6337b.f8131a;
                UUID m42519a = C1629j.m42519a(bArr);
                if (m42519a == null) {
                    C2009j.m41584a("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList3.add(new DrmInitData.SchemeData(m42519a, "video/mp4", bArr));
                }
            }
            i++;
            arrayList2 = arrayList3;
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    /* renamed from: a */
    private static C1617c m42566a(SparseArray<C1617c> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : (C1617c) C1993a.m41690a(sparseArray.get(i));
    }

    /* renamed from: a */
    private static C1623b m42558a(C2018p c2018p, SparseArray<C1623b> sparseArray) {
        c2018p.m41533c(8);
        int m41524i = c2018p.m41524i() & 16777215;
        C1623b m42552b = m42552b(sparseArray, c2018p.m41524i());
        if (m42552b == null) {
            return null;
        }
        if ((m41524i & 1) != 0) {
            long m41517p = c2018p.m41517p();
            m42552b.f6415b.f6475c = m41517p;
            m42552b.f6415b.f6476d = m41517p;
        }
        C1617c c1617c = m42552b.f6417d;
        m42552b.f6415b.f6473a = new C1617c((m41524i & 2) != 0 ? c2018p.m41519n() - 1 : c1617c.f6363a, (m41524i & 8) != 0 ? c2018p.m41519n() : c1617c.f6364b, (m41524i & 16) != 0 ? c2018p.m41519n() : c1617c.f6365c, (m41524i & 32) != 0 ? c2018p.m41519n() : c1617c.f6366d);
        return m42552b;
    }

    /* renamed from: a */
    private void m42567a(long j) throws ParserException {
        while (!this.f6402q.isEmpty() && this.f6402q.peek().f6334b == j) {
            m42565a(this.f6402q.pop());
        }
        m42553b();
    }

    /* renamed from: a */
    private void m42565a(AbstractC1607a.C1608a c1608a) throws ParserException {
        if (c1608a.f6333a == 1836019574) {
            m42550b(c1608a);
        } else if (c1608a.f6333a == 1836019558) {
            m42545c(c1608a);
        } else if (this.f6402q.isEmpty()) {
        } else {
            this.f6402q.peek().m42591a(c1608a);
        }
    }

    /* renamed from: a */
    private static void m42564a(AbstractC1607a.C1608a c1608a, SparseArray<C1623b> sparseArray, int i, byte[] bArr) throws ParserException {
        int size = c1608a.f6336d.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC1607a.C1608a c1608a2 = c1608a.f6336d.get(i2);
            if (c1608a2.f6333a == 1953653094) {
                m42549b(c1608a2, sparseArray, i, bArr);
            }
        }
    }

    /* renamed from: a */
    private static void m42563a(AbstractC1607a.C1608a c1608a, C1623b c1623b, long j, int i) {
        int i2;
        List<AbstractC1607a.C1609b> list = c1608a.f6335c;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i2 = i5;
            if (i3 >= size) {
                break;
            }
            AbstractC1607a.C1609b c1609b = list.get(i3);
            int i6 = i4;
            int i7 = i2;
            if (c1609b.f6333a == 1953658222) {
                C2018p c2018p = c1609b.f6337b;
                c2018p.m41533c(12);
                int m41519n = c2018p.m41519n();
                i6 = i4;
                i7 = i2;
                if (m41519n > 0) {
                    i7 = i2 + m41519n;
                    i6 = i4 + 1;
                }
            }
            i3++;
            i4 = i6;
            i5 = i7;
        }
        c1623b.f6420g = 0;
        c1623b.f6419f = 0;
        c1623b.f6418e = 0;
        c1623b.f6415b.m42510a(i4, i2);
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i10 < size) {
            AbstractC1607a.C1609b c1609b2 = list.get(i10);
            int i11 = i8;
            int i12 = i9;
            if (c1609b2.f6333a == 1953658222) {
                i12 = m42562a(c1623b, i8, j, i, c1609b2.f6337b, i9);
                i11 = i8 + 1;
            }
            i10++;
            i8 = i11;
            i9 = i12;
        }
    }

    /* renamed from: a */
    private static void m42561a(C1633m c1633m, C2018p c2018p, C1634n c1634n) throws ParserException {
        int i;
        int i2 = c1633m.f6471d;
        c2018p.m41533c(8);
        boolean z = true;
        if ((c2018p.m41524i() & 16777215 & 1) == 1) {
            c2018p.m41531d(8);
        }
        int m41534c = c2018p.m41534c();
        int m41519n = c2018p.m41519n();
        if (m41519n != c1634n.f6478f) {
            int i3 = c1634n.f6478f;
            StringBuilder sb = new StringBuilder(41);
            sb.append("Length mismatch: ");
            sb.append(m41519n);
            sb.append(", ");
            sb.append(i3);
            throw new ParserException(sb.toString());
        }
        if (m41534c == 0) {
            boolean[] zArr = c1634n.f6486n;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i4 >= m41519n) {
                    break;
                }
                int m41534c2 = c2018p.m41534c();
                i5 += m41534c2;
                zArr[i4] = m41534c2 > i2;
                i4++;
            }
        } else {
            if (m41534c <= i2) {
                z = false;
            }
            i = (m41534c * m41519n) + 0;
            Arrays.fill(c1634n.f6486n, 0, m41519n, z);
        }
        c1634n.m42511a(i);
    }

    /* renamed from: a */
    private static void m42559a(C2018p c2018p, int i, C1634n c1634n) throws ParserException {
        c2018p.m41533c(i + 8);
        int m41524i = c2018p.m41524i() & 16777215;
        if ((m41524i & 1) == 0) {
            boolean z = (m41524i & 2) != 0;
            int m41519n = c2018p.m41519n();
            if (m41519n == c1634n.f6478f) {
                Arrays.fill(c1634n.f6486n, 0, m41519n, z);
                c1634n.m42511a(c2018p.m41536b());
                c1634n.m42509a(c2018p);
                return;
            }
            int i2 = c1634n.f6478f;
            StringBuilder sb = new StringBuilder(41);
            sb.append("Length mismatch: ");
            sb.append(m41519n);
            sb.append(", ");
            sb.append(i2);
            throw new ParserException(sb.toString());
        }
        throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: a */
    private static void m42557a(C2018p c2018p, C1634n c1634n) throws ParserException {
        c2018p.m41533c(8);
        int m41524i = c2018p.m41524i();
        if ((16777215 & m41524i & 1) == 1) {
            c2018p.m41531d(8);
        }
        int m41519n = c2018p.m41519n();
        if (m41519n == 1) {
            c1634n.f6476d += AbstractC1607a.m42593a(m41524i) == 0 ? c2018p.m41526g() : c2018p.m41517p();
            return;
        }
        StringBuilder sb = new StringBuilder(40);
        sb.append("Unexpected saio entry count: ");
        sb.append(m41519n);
        throw new ParserException(sb.toString());
    }

    /* renamed from: a */
    private static void m42556a(C2018p c2018p, C1634n c1634n, byte[] bArr) throws ParserException {
        c2018p.m41533c(8);
        c2018p.m41537a(bArr, 0, 16);
        if (!Arrays.equals(bArr, f6374b)) {
            return;
        }
        m42559a(c2018p, 16, c1634n);
    }

    /* renamed from: a */
    private static void m42555a(C2018p c2018p, C2018p c2018p2, String str, C1634n c1634n) throws ParserException {
        byte[] bArr;
        c2018p.m41533c(8);
        int m41524i = c2018p.m41524i();
        if (c2018p.m41524i() != 1936025959) {
            return;
        }
        if (AbstractC1607a.m42593a(m41524i) == 1) {
            c2018p.m41531d(4);
        }
        if (c2018p.m41524i() != 1) {
            throw new ParserException("Entry count in sbgp != 1 (unsupported).");
        }
        c2018p2.m41533c(8);
        int m41524i2 = c2018p2.m41524i();
        if (c2018p2.m41524i() != 1936025959) {
            return;
        }
        int m42593a = AbstractC1607a.m42593a(m41524i2);
        if (m42593a == 1) {
            if (c2018p2.m41526g() == 0) {
                throw new ParserException("Variable length description in sgpd found (unsupported)");
            }
        } else if (m42593a >= 2) {
            c2018p2.m41531d(4);
        }
        if (c2018p2.m41526g() != 1) {
            throw new ParserException("Entry count in sgpd != 1 (unsupported).");
        }
        c2018p2.m41531d(1);
        int m41534c = c2018p2.m41534c();
        if (!(c2018p2.m41534c() == 1)) {
            return;
        }
        int m41534c2 = c2018p2.m41534c();
        byte[] bArr2 = new byte[16];
        c2018p2.m41537a(bArr2, 0, 16);
        if (m41534c2 == 0) {
            int m41534c3 = c2018p2.m41534c();
            bArr = new byte[m41534c3];
            c2018p2.m41537a(bArr, 0, m41534c3);
        } else {
            bArr = null;
        }
        c1634n.f6485m = true;
        c1634n.f6487o = new C1633m(true, str, m41534c2, bArr2, (m41534c & 240) >> 4, m41534c & 15, bArr);
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42568a() {
        return new AbstractC1599g[]{new C1621e()};
    }

    /* renamed from: b */
    private static long m42548b(C2018p c2018p) {
        c2018p.m41533c(8);
        return AbstractC1607a.m42593a(c2018p.m41524i()) == 0 ? c2018p.m41526g() : c2018p.m41517p();
    }

    /* renamed from: b */
    private static C1623b m42552b(SparseArray<C1623b> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : sparseArray.get(i);
    }

    /* renamed from: b */
    private void m42553b() {
        this.f6405t = 0;
        this.f6408w = 0;
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* renamed from: b */
    private void m42551b(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        int size = this.f6393h.size();
        C1623b c1623b = null;
        char c = 65535;
        int i = 0;
        while (i < size) {
            C1634n c1634n = this.f6393h.valueAt(i).f6415b;
            C1623b c1623b2 = c1623b;
            char c2 = c;
            if (c1634n.f6490r) {
                c1623b2 = c1623b;
                c2 = c;
                if (c1634n.f6476d < c) {
                    c2 = c1634n.f6476d;
                    c1623b2 = this.f6393h.valueAt(i);
                }
            }
            i++;
            c1623b = c1623b2;
            c = c2;
        }
        if (c1623b == null) {
            this.f6405t = 3;
            return;
        }
        int mo42603c = (int) (c - abstractC1600h.mo42603c());
        if (mo42603c < 0) {
            throw new ParserException("Offset to encryption data was negative.");
        }
        abstractC1600h.mo42606b(mo42603c);
        C1634n c1634n2 = c1623b.f6415b;
        abstractC1600h.mo42605b(c1634n2.f6489q.f8131a, 0, c1634n2.f6488p);
        c1634n2.f6489q.m41533c(0);
        c1634n2.f6490r = false;
    }

    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* renamed from: b */
    private void m42550b(AbstractC1607a.C1608a c1608a) throws ParserException {
        C1993a.m41685b(this.f6390e == null, "Unexpected moov box.");
        DrmInitData drmInitData = this.f6392g;
        if (drmInitData == null) {
            drmInitData = m42554a(c1608a.f6335c);
        }
        AbstractC1607a.C1608a m42588d = c1608a.m42588d(1836475768);
        SparseArray sparseArray = new SparseArray();
        int size = m42588d.f6335c.size();
        char c = 1;
        for (int i = 0; i < size; i++) {
            AbstractC1607a.C1609b c1609b = m42588d.f6335c.get(i);
            if (c1609b.f6333a == 1953654136) {
                Pair<Integer, C1617c> m42560a = m42560a(c1609b.f6337b);
                sparseArray.put(((Integer) m42560a.first).intValue(), (C1617c) m42560a.second);
            } else if (c1609b.f6333a == 1835362404) {
                c = m42548b(c1609b.f6337b);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = c1608a.f6336d.size();
        for (int i2 = 0; i2 < size2; i2++) {
            AbstractC1607a.C1608a c1608a2 = c1608a.f6336d.get(i2);
            if (c1608a2.f6333a == 1953653099) {
                C1632l m42586a = C1610b.m42586a(c1608a2, c1608a.m42589c(1836476516), (long) c, drmInitData, (this.f6389d & 16) != 0, false);
                if (m42586a != null) {
                    sparseArray2.put(m42586a.f6457a, m42586a);
                }
            }
        }
        int size3 = sparseArray2.size();
        if (this.f6393h.size() != 0) {
            C1993a.m41686b(this.f6393h.size() == size3);
            for (int i3 = 0; i3 < size3; i3++) {
                C1632l c1632l = (C1632l) sparseArray2.valueAt(i3);
                this.f6393h.get(c1632l.f6457a).m42540a(c1632l, m42566a(sparseArray, c1632l.f6457a));
            }
            return;
        }
        for (int i4 = 0; i4 < size3; i4++) {
            C1632l c1632l2 = (C1632l) sparseArray2.valueAt(i4);
            C1623b c1623b = new C1623b(this.f6385J.mo42213a(i4, c1632l2.f6458b));
            c1623b.m42540a(c1632l2, m42566a(sparseArray, c1632l2.f6457a));
            this.f6393h.put(c1632l2.f6457a, c1623b);
            this.f6377B = Math.max(this.f6377B, c1632l2.f6461e);
        }
        m42547c();
        this.f6385J.mo42215a();
    }

    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: b */
    private static void m42549b(AbstractC1607a.C1608a c1608a, SparseArray<C1623b> sparseArray, int i, byte[] bArr) throws ParserException {
        C1623b m42558a = m42558a(c1608a.m42589c(1952868452).f6337b, sparseArray);
        if (m42558a == null) {
            return;
        }
        C1634n c1634n = m42558a.f6415b;
        ?? r0 = c1634n.f6491s;
        m42558a.m42543a();
        char c = r0;
        if (c1608a.m42589c(1952867444) != null) {
            c = r0;
            if ((i & 2) == 0) {
                c = m42544c(c1608a.m42589c(1952867444).f6337b);
            }
        }
        m42563a(c1608a, m42558a, c, i);
        C1633m m42513a = m42558a.f6416c.m42513a(c1634n.f6473a.f6363a);
        AbstractC1607a.C1609b m42589c = c1608a.m42589c(1935763834);
        if (m42589c != null) {
            m42561a(m42513a, m42589c.f6337b, c1634n);
        }
        AbstractC1607a.C1609b m42589c2 = c1608a.m42589c(1935763823);
        if (m42589c2 != null) {
            m42557a(m42589c2.f6337b, c1634n);
        }
        AbstractC1607a.C1609b m42589c3 = c1608a.m42589c(1936027235);
        if (m42589c3 != null) {
            m42559a(m42589c3.f6337b, 0, c1634n);
        }
        AbstractC1607a.C1609b m42589c4 = c1608a.m42589c(1935828848);
        AbstractC1607a.C1609b m42589c5 = c1608a.m42589c(1936158820);
        if (m42589c4 != null && m42589c5 != null) {
            m42555a(m42589c4.f6337b, m42589c5.f6337b, m42513a != null ? m42513a.f6469b : null, c1634n);
        }
        int size = c1608a.f6335c.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC1607a.C1609b c1609b = c1608a.f6335c.get(i2);
            if (c1609b.f6333a == 1970628964) {
                m42556a(c1609b.f6337b, c1634n, bArr);
            }
        }
    }

    /* renamed from: c */
    private static long m42544c(C2018p c2018p) {
        c2018p.m41533c(8);
        return AbstractC1607a.m42593a(c2018p.m41524i()) == 1 ? c2018p.m41517p() : c2018p.m41526g();
    }

    /* renamed from: c */
    private void m42547c() {
        int i;
        if (this.f6386K == null) {
            AbstractC1641q[] abstractC1641qArr = new AbstractC1641q[2];
            this.f6386K = abstractC1641qArr;
            AbstractC1641q abstractC1641q = this.f6404s;
            if (abstractC1641q != null) {
                abstractC1641qArr[0] = abstractC1641q;
                i = 1;
            } else {
                i = 0;
            }
            int i2 = i;
            if ((this.f6389d & 4) != 0) {
                abstractC1641qArr[i] = this.f6385J.mo42213a(this.f6393h.size(), 4);
                i2 = i + 1;
            }
            AbstractC1641q[] abstractC1641qArr2 = (AbstractC1641q[]) Arrays.copyOf(this.f6386K, i2);
            this.f6386K = abstractC1641qArr2;
            for (AbstractC1641q abstractC1641q2 : abstractC1641qArr2) {
                abstractC1641q2.mo42192a(f6375c);
            }
        }
        if (this.f6387L == null) {
            this.f6387L = new AbstractC1641q[this.f6391f.size()];
            for (int i3 = 0; i3 < this.f6387L.length; i3++) {
                AbstractC1641q mo42213a = this.f6385J.mo42213a(this.f6393h.size() + 1 + i3, 3);
                mo42213a.mo42192a(this.f6391f.get(i3));
                this.f6387L[i3] = mo42213a;
            }
        }
    }

    /* renamed from: c */
    private void m42545c(AbstractC1607a.C1608a c1608a) throws ParserException {
        m42564a(c1608a, this.f6393h, this.f6389d, this.f6397l);
        DrmInitData m42554a = this.f6392g != null ? null : m42554a(c1608a.f6335c);
        if (m42554a != null) {
            int size = this.f6393h.size();
            for (int i = 0; i < size; i++) {
                this.f6393h.valueAt(i).m42541a(m42554a);
            }
        }
        if (this.f6376A != -9223372036854775807L) {
            int size2 = this.f6393h.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f6393h.valueAt(i2).m42542a(this.f6376A);
            }
            this.f6376A = -9223372036854775807L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.media2.exoplayer.external.extractor.q] */
    /* JADX WARN: Type inference failed for: r0v147, types: [long] */
    /* JADX WARN: Type inference failed for: r0v149, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.media2.exoplayer.external.util.z] */
    /* JADX WARN: Type inference failed for: r0v274 */
    /* JADX WARN: Type inference failed for: r0v278 */
    /* JADX WARN: Type inference failed for: r0v282, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v283, types: [long] */
    /* JADX WARN: Type inference failed for: r0v284 */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [androidx.media2.exoplayer.external.util.z] */
    /* JADX WARN: Type inference failed for: r0v53, types: [androidx.media2.exoplayer.external.extractor.q[]] */
    /* JADX WARN: Type inference failed for: r0v59, types: [androidx.media2.exoplayer.external.extractor.q] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r1v10, types: [long] */
    /* JADX WARN: Type inference failed for: r1v13, types: [long] */
    /* JADX WARN: Type inference failed for: r1v144, types: [long] */
    /* JADX WARN: Type inference failed for: r1v4, types: [long] */
    /* renamed from: c */
    private boolean m42546c(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        AbstractC1641q.C1642a c1642a;
        int i;
        int i2;
        C2018p c2018p;
        int i3;
        if (this.f6405t == 3) {
            if (this.f6379D == null) {
                SparseArray<C1623b> sparseArray = this.f6393h;
                ?? r11 = 65535;
                int size = sparseArray.size();
                C1623b c1623b = null;
                int i4 = 0;
                while (i4 < size) {
                    C1623b valueAt = sparseArray.valueAt(i4);
                    ?? r17 = r11;
                    C1623b c1623b2 = c1623b;
                    if (valueAt.f6420g != valueAt.f6415b.f6477e) {
                        ?? r0 = valueAt.f6415b.f6479g[valueAt.f6420g];
                        r17 = r11;
                        c1623b2 = c1623b;
                        if (r0 < r11) {
                            c1623b2 = valueAt;
                            r17 = r0;
                        }
                    }
                    i4++;
                    r11 = r17;
                    c1623b = c1623b2;
                }
                if (c1623b == null) {
                    int mo42603c = (int) (this.f6410y - abstractC1600h.mo42603c());
                    if (mo42603c < 0) {
                        throw new ParserException("Offset to end of mdat was negative.");
                    }
                    abstractC1600h.mo42606b(mo42603c);
                    m42553b();
                    return false;
                }
                int mo42603c2 = (int) (c1623b.f6415b.f6479g[c1623b.f6420g] - abstractC1600h.mo42603c());
                int i5 = mo42603c2;
                if (mo42603c2 < 0) {
                    C2009j.m41584a("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                    i5 = 0;
                }
                abstractC1600h.mo42606b(i5);
                this.f6379D = c1623b;
            }
            this.f6380E = this.f6379D.f6415b.f6481i[this.f6379D.f6418e];
            if (this.f6379D.f6418e < this.f6379D.f6421h) {
                abstractC1600h.mo42606b(this.f6380E);
                C1623b c1623b3 = this.f6379D;
                C1633m m42538c = c1623b3.m42538c();
                if (m42538c != null) {
                    C2018p c2018p2 = c1623b3.f6415b.f6489q;
                    if (m42538c.f6471d != 0) {
                        c2018p2.m41531d(m42538c.f6471d);
                    }
                    if (c1623b3.f6415b.m42507c(c1623b3.f6418e)) {
                        c2018p2.m41531d(c2018p2.m41532d() * 6);
                    }
                }
                if (!this.f6379D.m42539b()) {
                    this.f6379D = null;
                }
                this.f6405t = 3;
                return true;
            }
            if (this.f6379D.f6416c.f6463g == 1) {
                this.f6380E -= 8;
                abstractC1600h.mo42606b(8);
            }
            C1623b c1623b4 = this.f6379D;
            C1633m m42538c2 = c1623b4.m42538c();
            if (m42538c2 == null) {
                i2 = 0;
            } else {
                if (m42538c2.f6471d != 0) {
                    c2018p = c1623b4.f6415b.f6489q;
                    i3 = m42538c2.f6471d;
                } else {
                    byte[] bArr = m42538c2.f6472e;
                    c1623b4.f6423j.m41538a(bArr, bArr.length);
                    c2018p = c1623b4.f6423j;
                    i3 = bArr.length;
                }
                boolean m42507c = c1623b4.f6415b.m42507c(c1623b4.f6418e);
                c1623b4.f6422i.f8131a[0] = (byte) ((m42507c ? 128 : 0) | i3);
                c1623b4.f6422i.m41533c(0);
                c1623b4.f6414a.mo42306a(c1623b4.f6422i, 1);
                c1623b4.f6414a.mo42306a(c2018p, i3);
                if (!m42507c) {
                    i2 = i3 + 1;
                } else {
                    C2018p c2018p3 = c1623b4.f6415b.f6489q;
                    int m41532d = c2018p3.m41532d();
                    c2018p3.m41531d(-2);
                    int i6 = (m41532d * 6) + 2;
                    c1623b4.f6414a.mo42306a(c2018p3, i6);
                    i2 = i3 + 1 + i6;
                }
            }
            this.f6381F = i2;
            this.f6380E += i2;
            this.f6405t = 4;
            this.f6382G = 0;
            this.f6384I = "audio/ac4".equals(this.f6379D.f6416c.f6462f.sampleMimeType);
        }
        C1634n c1634n = this.f6379D.f6415b;
        C1632l c1632l = this.f6379D.f6416c;
        ?? r02 = this.f6379D.f6414a;
        int i7 = this.f6379D.f6418e;
        ?? m42508b = c1634n.m42508b(i7) * 1000;
        ?? r03 = this.f6399n;
        ?? r112 = m42508b;
        if (r03 != 0) {
            r112 = r03.m41477c(m42508b);
        }
        if (c1632l.f6466j == 0) {
            if (this.f6384I) {
                C1398b.m43024a(this.f6380E, this.f6398m);
                int i8 = this.f6398m.f8133c;
                r02.mo42306a(this.f6398m, i8);
                this.f6380E += i8;
                this.f6381F += i8;
                this.f6384I = false;
            }
            while (true) {
                int i9 = this.f6381F;
                int i10 = this.f6380E;
                if (i9 >= i10) {
                    break;
                }
                this.f6381F += r02.mo42308a(abstractC1600h, i10 - i9, false);
            }
        } else {
            byte[] bArr2 = this.f6395j.f8131a;
            bArr2[0] = (byte) 0;
            bArr2[1] = (byte) 0;
            bArr2[2] = (byte) 0;
            int i11 = c1632l.f6466j;
            int i12 = 4 - c1632l.f6466j;
            while (this.f6381F < this.f6380E) {
                int i13 = this.f6382G;
                if (i13 == 0) {
                    abstractC1600h.mo42605b(bArr2, i12, i11 + 1);
                    this.f6395j.m41533c(0);
                    int m41524i = this.f6395j.m41524i();
                    if (m41524i <= 0) {
                        throw new ParserException("Invalid NAL length");
                    }
                    this.f6382G = m41524i - 1;
                    this.f6394i.m41533c(0);
                    r02.mo42306a(this.f6394i, 4);
                    r02.mo42306a(this.f6395j, 1);
                    this.f6383H = this.f6387L.length > 0 && C2014n.m41564a(c1632l.f6462f.sampleMimeType, bArr2[4]);
                    this.f6381F += 5;
                    this.f6380E += i12;
                } else {
                    if (this.f6383H) {
                        this.f6396k.m41541a(i13);
                        abstractC1600h.mo42605b(this.f6396k.f8131a, 0, this.f6382G);
                        r02.mo42306a(this.f6396k, this.f6382G);
                        i = this.f6382G;
                        int m41562a = C2014n.m41562a(this.f6396k.f8131a, this.f6396k.f8133c);
                        this.f6396k.m41533c("video/hevc".equals(c1632l.f6462f.sampleMimeType) ? 1 : 0);
                        this.f6396k.m41535b(m41562a);
                        C1869f.m41979a(r112, this.f6396k, this.f6387L);
                    } else {
                        i = r02.mo42308a(abstractC1600h, i13, false);
                    }
                    this.f6381F += i;
                    this.f6382G -= i;
                }
            }
        }
        boolean z = c1634n.f6484l[i7];
        C1633m m42538c3 = this.f6379D.m42538c();
        if (m42538c3 != null) {
            c1642a = m42538c3.f6470c;
            z |= true;
        } else {
            c1642a = null;
        }
        r02.mo42313a(r112, z ? 1 : 0, this.f6380E, 0, c1642a);
        while (!this.f6403r.isEmpty()) {
            C1622a removeFirst = this.f6403r.removeFirst();
            this.f6411z -= removeFirst.f6413b;
            ?? r04 = removeFirst.f6412a + r112;
            ?? r05 = this.f6399n;
            ?? r172 = r04;
            if (r05 != 0) {
                r172 = r05.m41477c(r04);
            }
            for (?? r06 : this.f6386K) {
                r06.mo42313a(r172, 1, removeFirst.f6413b, this.f6411z, null);
            }
        }
        if (!this.f6379D.m42539b()) {
            this.f6379D = null;
        }
        this.f6405t = 3;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:195:0x070d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v100, types: [long] */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v146, types: [long] */
    /* JADX WARN: Type inference failed for: r0v149, types: [long] */
    /* JADX WARN: Type inference failed for: r0v181, types: [long] */
    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187, types: [long] */
    /* JADX WARN: Type inference failed for: r0v189, types: [long] */
    /* JADX WARN: Type inference failed for: r0v191, types: [long] */
    /* JADX WARN: Type inference failed for: r0v193, types: [long] */
    /* JADX WARN: Type inference failed for: r0v195, types: [long] */
    /* JADX WARN: Type inference failed for: r0v310, types: [long] */
    /* JADX WARN: Type inference failed for: r0v325, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo42187a(androidx.media2.exoplayer.external.extractor.AbstractC1600h r11, androidx.media2.exoplayer.external.extractor.C1636n r12) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1829
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.C1621e.mo42187a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        int size = this.f6393h.size();
        for (int i = 0; i < size; i++) {
            this.f6393h.valueAt(i).m42543a();
        }
        this.f6403r.clear();
        this.f6411z = 0;
        this.f6376A = j2;
        this.f6402q.clear();
        this.f6384I = false;
        m42553b();
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f6385J = abstractC1601i;
        C1632l c1632l = this.f6390e;
        if (c1632l != null) {
            C1623b c1623b = new C1623b(abstractC1601i.mo42213a(0, c1632l.f6458b));
            c1623b.m42540a(this.f6390e, new C1617c(0, 0, 0, 0));
            this.f6393h.put(0, c1623b);
            m42547c();
            this.f6385J.mo42215a();
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final boolean mo42188a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        return C1631k.m42516a(abstractC1600h);
    }
}
