package com.google.android.exoplayer2.extractor.p332f;

import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.C10886c;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C10985b;
import com.google.android.exoplayer2.extractor.C11142r;
import com.google.android.exoplayer2.extractor.p332f.AbstractC11021a;
import com.google.android.exoplayer2.metadata.emsg.C11204b;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11624s;
import com.google.android.exoplayer2.util.C11628u;
import com.google.common.base.Function;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.extractor.f.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/e.class */
public final class C11035e implements AbstractC11071h {

    /* renamed from: a */
    public static final AbstractC11133l f35834a = _$$Lambda$e$jFlk_laRqVUUJcTmnfBeVwAIvDU.INSTANCE;

    /* renamed from: b */
    private static final byte[] f35835b = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: c */
    private static final Format f35836c;

    /* renamed from: A */
    private long f35837A;

    /* renamed from: B */
    private long f35838B;

    /* renamed from: C */
    private C11037b f35839C;

    /* renamed from: D */
    private int f35840D;

    /* renamed from: E */
    private int f35841E;

    /* renamed from: F */
    private int f35842F;

    /* renamed from: G */
    private boolean f35843G;

    /* renamed from: H */
    private AbstractC11130j f35844H;

    /* renamed from: I */
    private AbstractC11150x[] f35845I;

    /* renamed from: J */
    private AbstractC11150x[] f35846J;

    /* renamed from: K */
    private boolean f35847K;

    /* renamed from: d */
    private final int f35848d;

    /* renamed from: e */
    private final C11046k f35849e;

    /* renamed from: f */
    private final List<Format> f35850f;

    /* renamed from: g */
    private final SparseArray<C11037b> f35851g;

    /* renamed from: h */
    private final C11628u f35852h;

    /* renamed from: i */
    private final C11628u f35853i;

    /* renamed from: j */
    private final C11628u f35854j;

    /* renamed from: k */
    private final byte[] f35855k;

    /* renamed from: l */
    private final C11628u f35856l;

    /* renamed from: m */
    private final C11597ad f35857m;

    /* renamed from: n */
    private final C11204b f35858n;

    /* renamed from: o */
    private final C11628u f35859o;

    /* renamed from: p */
    private final ArrayDeque<AbstractC11021a.C11022a> f35860p;

    /* renamed from: q */
    private final ArrayDeque<C11036a> f35861q;

    /* renamed from: r */
    private final AbstractC11150x f35862r;

    /* renamed from: s */
    private int f35863s;

    /* renamed from: t */
    private int f35864t;

    /* renamed from: u */
    private long f35865u;

    /* renamed from: v */
    private int f35866v;

    /* renamed from: w */
    private C11628u f35867w;

    /* renamed from: x */
    private long f35868x;

    /* renamed from: y */
    private int f35869y;

    /* renamed from: z */
    private long f35870z;

    /* renamed from: com.google.android.exoplayer2.extractor.f.e$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/e$a.class */
    public static final class C11036a {

        /* renamed from: a */
        public final long f35871a;

        /* renamed from: b */
        public final int f35872b;

        public C11036a(long j, int i) {
            this.f35871a = j;
            this.f35872b = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.f.e$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/e$b.class */
    public static final class C11037b {

        /* renamed from: a */
        public final AbstractC11150x f35873a;

        /* renamed from: d */
        public C11049n f35876d;

        /* renamed from: e */
        public C11031c f35877e;

        /* renamed from: f */
        public int f35878f;

        /* renamed from: g */
        public int f35879g;

        /* renamed from: h */
        public int f35880h;

        /* renamed from: i */
        public int f35881i;

        /* renamed from: j */
        boolean f35882j;

        /* renamed from: b */
        public final C11048m f35874b = new C11048m();

        /* renamed from: c */
        public final C11628u f35875c = new C11628u();

        /* renamed from: k */
        private final C11628u f35883k = new C11628u(1);

        /* renamed from: l */
        private final C11628u f35884l = new C11628u();

        public C11037b(AbstractC11150x abstractC11150x, C11049n c11049n, C11031c c11031c) {
            this.f35873a = abstractC11150x;
            this.f35876d = c11049n;
            this.f35877e = c11031c;
            m21630a(c11049n, c11031c);
        }

        /* renamed from: a */
        public final int m21633a(int i, int i2) {
            int i3;
            C11628u c11628u;
            C11047l m21627d = m21627d();
            if (m21627d == null) {
                return 0;
            }
            if (m21627d.f35941d != 0) {
                c11628u = this.f35874b.f35958p;
                i3 = m21627d.f35941d;
            } else {
                byte[] bArr = (byte[]) C11599af.m19974a(m21627d.f35942e);
                this.f35884l.m19808a(bArr, bArr.length);
                c11628u = this.f35884l;
                i3 = bArr.length;
            }
            boolean m21591c = this.f35874b.m21591c(this.f35878f);
            boolean z = m21591c || i2 != 0;
            this.f35883k.f38733a[0] = (byte) ((z ? 128 : 0) | i3);
            this.f35883k.m19801d(0);
            this.f35873a.mo20826a(this.f35883k, 1);
            this.f35873a.mo20826a(c11628u, i3);
            if (!z) {
                return i3 + 1;
            }
            if (!m21591c) {
                this.f35875c.m19811a(8);
                byte[] bArr2 = this.f35875c.f38733a;
                bArr2[0] = (byte) 0;
                bArr2[1] = (byte) 1;
                bArr2[2] = (byte) ((i2 >> 8) & 255);
                bArr2[3] = (byte) (i2 & 255);
                bArr2[4] = (byte) ((i >> 24) & 255);
                bArr2[5] = (byte) ((i >> 16) & 255);
                bArr2[6] = (byte) ((i >> 8) & 255);
                bArr2[7] = (byte) (i & 255);
                this.f35873a.mo20826a(this.f35875c, 8);
                return i3 + 1 + 8;
            }
            C11628u c11628u2 = this.f35874b.f35958p;
            int m19802d = c11628u2.m19802d();
            c11628u2.m19799e(-2);
            int i4 = (m19802d * 6) + 2;
            C11628u c11628u3 = c11628u2;
            if (i2 != 0) {
                this.f35875c.m19811a(i4);
                byte[] bArr3 = this.f35875c.f38733a;
                c11628u2.m19807a(bArr3, 0, i4);
                int i5 = (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) + i2;
                bArr3[2] = (byte) ((i5 >> 8) & 255);
                bArr3[3] = (byte) (i5 & 255);
                c11628u3 = this.f35875c;
            }
            this.f35873a.mo20826a(c11628u3, i4);
            return i3 + 1 + i4;
        }

        /* renamed from: a */
        public final void m21634a() {
            this.f35874b.m21596a();
            this.f35878f = 0;
            this.f35880h = 0;
            this.f35879g = 0;
            this.f35881i = 0;
            this.f35882j = false;
        }

        /* renamed from: a */
        public final void m21632a(long j) {
            for (int i = this.f35878f; i < this.f35874b.f35948f && this.f35874b.m21592b(i) < j; i++) {
                if (this.f35874b.f35954l[i]) {
                    this.f35881i = i;
                }
            }
        }

        /* renamed from: a */
        public final void m21631a(DrmInitData drmInitData) {
            C11047l m21597a = this.f35876d.f35962a.m21597a(((C11031c) C11599af.m19974a(this.f35874b.f35943a)).f35824a);
            DrmInitData copyWithSchemeType = drmInitData.copyWithSchemeType(m21597a != null ? m21597a.f35939b : null);
            Format.C10828a buildUpon = this.f35876d.f35962a.f35932f.buildUpon();
            buildUpon.f34795n = copyWithSchemeType;
            this.f35873a.mo20831a(buildUpon.m22321a());
        }

        /* renamed from: a */
        public final void m21630a(C11049n c11049n, C11031c c11031c) {
            this.f35876d = c11049n;
            this.f35877e = c11031c;
            this.f35873a.mo20831a(c11049n.f35962a.f35932f);
            m21634a();
        }

        /* renamed from: b */
        public final long m21629b() {
            return !this.f35882j ? this.f35876d.f35964c[this.f35878f] : this.f35874b.f35949g[this.f35880h];
        }

        /* renamed from: c */
        public final boolean m21628c() {
            this.f35878f++;
            if (!this.f35882j) {
                return false;
            }
            int i = this.f35879g + 1;
            this.f35879g = i;
            int[] iArr = this.f35874b.f35950h;
            int i2 = this.f35880h;
            if (i != iArr[i2]) {
                return true;
            }
            this.f35880h = i2 + 1;
            this.f35879g = 0;
            return false;
        }

        /* renamed from: d */
        public final C11047l m21627d() {
            if (!this.f35882j) {
                return null;
            }
            C11047l m21597a = this.f35874b.f35957o != null ? this.f35874b.f35957o : this.f35876d.f35962a.m21597a(((C11031c) C11599af.m19974a(this.f35874b.f35943a)).f35824a);
            if (m21597a != null && m21597a.f35938a) {
                return m21597a;
            }
            return null;
        }
    }

    static {
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34792k = "application/x-emsg";
        f35836c = c10828a.m22321a();
    }

    public C11035e() {
        this(0);
    }

    public C11035e(int i) {
        this(i, null);
    }

    public C11035e(int i, C11597ad c11597ad) {
        this(i, c11597ad, null, Collections.emptyList());
    }

    public C11035e(int i, C11597ad c11597ad, C11046k c11046k) {
        this(i, c11597ad, c11046k, Collections.emptyList());
    }

    public C11035e(int i, C11597ad c11597ad, C11046k c11046k, List<Format> list) {
        this(i, c11597ad, c11046k, list, null);
    }

    public C11035e(int i, C11597ad c11597ad, C11046k c11046k, List<Format> list, AbstractC11150x abstractC11150x) {
        this.f35848d = i;
        this.f35857m = c11597ad;
        this.f35849e = c11046k;
        this.f35850f = Collections.unmodifiableList(list);
        this.f35862r = abstractC11150x;
        this.f35858n = new C11204b();
        this.f35859o = new C11628u(16);
        this.f35852h = new C11628u(C11624s.f38709a);
        this.f35853i = new C11628u(5);
        this.f35854j = new C11628u();
        byte[] bArr = new byte[16];
        this.f35855k = bArr;
        this.f35856l = new C11628u(bArr);
        this.f35860p = new ArrayDeque<>();
        this.f35861q = new ArrayDeque<>();
        this.f35851g = new SparseArray<>();
        this.f35837A = -9223372036854775807L;
        this.f35870z = -9223372036854775807L;
        this.f35838B = -9223372036854775807L;
        this.f35844H = AbstractC11130j.f36472a;
        this.f35845I = new AbstractC11150x[0];
        this.f35846J = new AbstractC11150x[0];
    }

    /* renamed from: a */
    private static int m21659a(int i) throws ParserException {
        if (i >= 0) {
            return i;
        }
        throw new ParserException("Unexpected negative value: ".concat(String.valueOf(i)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57 */
    /* JADX WARN: Type inference failed for: r0v60 */
    /* JADX WARN: Type inference failed for: r0v63 */
    /* JADX WARN: Type inference failed for: r0v64 */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77 */
    /* JADX WARN: Type inference failed for: r0v86 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r1v15, types: [long] */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r26v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [long] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* renamed from: a */
    private static int m21652a(C11037b c11037b, int i, int i2, C11628u c11628u, int i3) throws ParserException {
        c11628u.m19801d(8);
        int m19792j = c11628u.m19792j() & 16777215;
        C11046k c11046k = c11037b.f35876d.f35962a;
        C11048m c11048m = c11037b.f35874b;
        C11031c c11031c = (C11031c) C11599af.m19974a(c11048m.f35943a);
        c11048m.f35950h[i] = c11628u.m19787o();
        c11048m.f35949g[i] = c11048m.f35945c;
        if ((m19792j & 1) != 0) {
            long[] jArr = c11048m.f35949g;
            jArr[i] = jArr[i] + c11628u.m19792j();
        }
        ?? r19 = (m19792j & 4) != 0;
        int i4 = c11031c.f35827d;
        if (r19 != false) {
            i4 = c11628u.m19792j();
        }
        ?? r21 = (m19792j & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0;
        ?? r22 = (m19792j & 512) != 0;
        ?? r23 = (m19792j & 1024) != 0;
        ?? r15 = (m19792j & 2048) != 0;
        ?? r26 = false;
        if (c11046k.f35934h != null) {
            r26 = false;
            if (c11046k.f35934h.length == 1) {
                r26 = false;
                if (c11046k.f35934h[0] == 0) {
                    r26 = C11599af.m19946b(((long[]) C11599af.m19974a(c11046k.f35935i))[0], 1000000L, c11046k.f35929c);
                }
            }
        }
        int[] iArr = c11048m.f35951i;
        int[] iArr2 = c11048m.f35952j;
        long[] jArr2 = c11048m.f35953k;
        boolean[] zArr = c11048m.f35954l;
        ?? r11 = c11046k.f35928b == 2 && (i2 & 1) != 0;
        int i5 = i3 + c11048m.f35950h[i];
        long j = c11046k.f35929c;
        ?? r24 = c11048m.f35960r;
        while (i3 < i5) {
            int m21659a = m21659a(r21 != false ? c11628u.m19792j() : c11031c.f35825b);
            int m21659a2 = m21659a(r22 != false ? c11628u.m19792j() : c11031c.f35826c);
            int m19792j2 = r23 != false ? c11628u.m19792j() : (i3 != 0 || r19 == false) ? c11031c.f35827d : i4;
            if (r15 == true) {
                iArr2[i3] = (int) ((c11628u.m19792j() * 1000000) / j);
            } else {
                iArr2[i3] = 0;
            }
            jArr2[i3] = C11599af.m19946b((long) r24, 1000000L, j) - (r26 == true ? 1L : 0L);
            if (!c11048m.f35961s) {
                jArr2[i3] = jArr2[i3] + c11037b.f35876d.f35969h;
            }
            iArr[i3] = m21659a2;
            zArr[i3] = ((m19792j2 >> 16) & 1) == 0 && (r11 == false || i3 == 0);
            r24 += m21659a;
            i3++;
        }
        c11048m.f35960r = r24;
        return i5;
    }

    /* renamed from: a */
    private static Pair<Integer, C11031c> m21649a(C11628u c11628u) {
        c11628u.m19801d(12);
        return Pair.create(Integer.valueOf(c11628u.m19792j()), new C11031c(c11628u.m19792j() - 1, c11628u.m19792j(), c11628u.m19792j(), c11628u.m19792j()));
    }

    /* renamed from: a */
    private static DrmInitData m21644a(List<AbstractC11021a.C11023b> list) {
        ArrayList arrayList;
        int size = list.size();
        int i = 0;
        ArrayList arrayList2 = null;
        while (true) {
            arrayList = arrayList2;
            if (i >= size) {
                break;
            }
            AbstractC11021a.C11023b c11023b = list.get(i);
            ArrayList arrayList3 = arrayList;
            if (c11023b.f35794a == 1886614376) {
                arrayList3 = arrayList;
                if (arrayList == null) {
                    arrayList3 = new ArrayList();
                }
                byte[] bArr = c11023b.f35798b.f38733a;
                UUID m21607a = C11041h.m21607a(bArr);
                if (m21607a == null) {
                    C11617n.m19863a("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList3.add(new DrmInitData.SchemeData(m21607a, "video/mp4", bArr));
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
    private static C11031c m21657a(SparseArray<C11031c> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : (C11031c) C11593a.m20020b(sparseArray.get(i));
    }

    /* renamed from: a */
    private static C11037b m21647a(C11628u c11628u, SparseArray<C11037b> sparseArray) {
        c11628u.m19801d(8);
        int m19792j = c11628u.m19792j() & 16777215;
        C11037b m21642b = m21642b(sparseArray, c11628u.m19792j());
        if (m21642b == null) {
            return null;
        }
        if ((m19792j & 1) != 0) {
            long m19785q = c11628u.m19785q();
            m21642b.f35874b.f35945c = m19785q;
            m21642b.f35874b.f35946d = m19785q;
        }
        C11031c c11031c = m21642b.f35877e;
        m21642b.f35874b.f35943a = new C11031c((m19792j & 2) != 0 ? c11628u.m19792j() - 1 : c11031c.f35824a, (m19792j & 8) != 0 ? c11628u.m19792j() : c11031c.f35825b, (m19792j & 16) != 0 ? c11628u.m19792j() : c11031c.f35826c, (m19792j & 32) != 0 ? c11628u.m19792j() : c11031c.f35827d);
        return m21642b;
    }

    /* renamed from: a */
    private void m21660a() {
        this.f35863s = 0;
        this.f35866v = 0;
    }

    /* renamed from: a */
    private void m21658a(long j) throws ParserException {
        while (!this.f35860p.isEmpty() && this.f35860p.peek().f35795b == j) {
            m21656a(this.f35860p.pop());
        }
        m21660a();
    }

    /* renamed from: a */
    private void m21656a(AbstractC11021a.C11022a c11022a) throws ParserException {
        if (c11022a.f35794a == 1836019574) {
            m21641b(c11022a);
        } else if (c11022a.f35794a == 1836019558) {
            m21637c(c11022a);
        } else if (this.f35860p.isEmpty()) {
        } else {
            this.f35860p.peek().m21683a(c11022a);
        }
    }

    /* renamed from: a */
    private static void m21655a(AbstractC11021a.C11022a c11022a, SparseArray<C11037b> sparseArray, int i, byte[] bArr) throws ParserException {
        int size = c11022a.f35797d.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC11021a.C11022a c11022a2 = c11022a.f35797d.get(i2);
            if (c11022a2.f35794a == 1953653094) {
                m21640b(c11022a2, sparseArray, i, bArr);
            }
        }
    }

    /* renamed from: a */
    private static void m21654a(AbstractC11021a.C11022a c11022a, C11037b c11037b, int i) throws ParserException {
        int i2;
        List<AbstractC11021a.C11023b> list = c11022a.f35796c;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i2 = i5;
            if (i3 >= size) {
                break;
            }
            AbstractC11021a.C11023b c11023b = list.get(i3);
            int i6 = i4;
            int i7 = i2;
            if (c11023b.f35794a == 1953658222) {
                C11628u c11628u = c11023b.f35798b;
                c11628u.m19801d(12);
                int m19787o = c11628u.m19787o();
                i6 = i4;
                i7 = i2;
                if (m19787o > 0) {
                    i7 = i2 + m19787o;
                    i6 = i4 + 1;
                }
            }
            i3++;
            i4 = i6;
            i5 = i7;
        }
        c11037b.f35880h = 0;
        c11037b.f35879g = 0;
        c11037b.f35878f = 0;
        c11037b.f35874b.m21594a(i4, i2);
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i10 < size) {
            AbstractC11021a.C11023b c11023b2 = list.get(i10);
            int i11 = i8;
            int i12 = i9;
            if (c11023b2.f35794a == 1953658222) {
                i12 = m21652a(c11037b, i8, i, c11023b2.f35798b, i9);
                i11 = i8 + 1;
            }
            i10++;
            i8 = i11;
            i9 = i12;
        }
    }

    /* renamed from: a */
    private static void m21653a(AbstractC11021a.C11022a c11022a, String str, C11048m c11048m) throws ParserException {
        C11628u c11628u;
        C11628u c11628u2;
        C11628u c11628u3 = null;
        C11628u c11628u4 = null;
        int i = 0;
        while (i < c11022a.f35796c.size()) {
            AbstractC11021a.C11023b c11023b = c11022a.f35796c.get(i);
            C11628u c11628u5 = c11023b.f35798b;
            if (c11023b.f35794a == 1935828848) {
                c11628u5.m19801d(12);
                c11628u2 = c11628u3;
                c11628u = c11628u4;
                if (c11628u5.m19792j() == 1936025959) {
                    c11628u2 = c11628u5;
                    c11628u = c11628u4;
                }
            } else {
                c11628u2 = c11628u3;
                c11628u = c11628u4;
                if (c11023b.f35794a == 1936158820) {
                    c11628u5.m19801d(12);
                    c11628u2 = c11628u3;
                    c11628u = c11628u4;
                    if (c11628u5.m19792j() == 1936025959) {
                        c11628u = c11628u5;
                        c11628u2 = c11628u3;
                    }
                }
            }
            i++;
            c11628u3 = c11628u2;
            c11628u4 = c11628u;
        }
        if (c11628u3 == null || c11628u4 == null) {
            return;
        }
        c11628u3.m19801d(8);
        int m21685a = AbstractC11021a.m21685a(c11628u3.m19792j());
        c11628u3.m19799e(4);
        if (m21685a == 1) {
            c11628u3.m19799e(4);
        }
        if (c11628u3.m19792j() != 1) {
            throw new ParserException("Entry count in sbgp != 1 (unsupported).");
        }
        c11628u4.m19801d(8);
        int m21685a2 = AbstractC11021a.m21685a(c11628u4.m19792j());
        c11628u4.m19799e(4);
        if (m21685a2 == 1) {
            if (c11628u4.m19794h() == 0) {
                throw new ParserException("Variable length description in sgpd found (unsupported)");
            }
        } else if (m21685a2 >= 2) {
            c11628u4.m19799e(4);
        }
        if (c11628u4.m19794h() != 1) {
            throw new ParserException("Entry count in sgpd != 1 (unsupported).");
        }
        c11628u4.m19799e(1);
        int m19804c = c11628u4.m19804c();
        if (!(c11628u4.m19804c() == 1)) {
            return;
        }
        int m19804c2 = c11628u4.m19804c();
        byte[] bArr = new byte[16];
        c11628u4.m19807a(bArr, 0, 16);
        byte[] bArr2 = null;
        if (m19804c2 == 0) {
            int m19804c3 = c11628u4.m19804c();
            bArr2 = new byte[m19804c3];
            c11628u4.m19807a(bArr2, 0, m19804c3);
        }
        c11048m.f35955m = true;
        c11048m.f35957o = new C11047l(true, str, m19804c2, bArr, (m19804c & 240) >> 4, m19804c & 15, bArr2);
    }

    /* renamed from: a */
    private static void m21650a(C11047l c11047l, C11628u c11628u, C11048m c11048m) throws ParserException {
        int i;
        int i2 = c11047l.f35941d;
        c11628u.m19801d(8);
        boolean z = true;
        if ((c11628u.m19792j() & 16777215 & 1) == 1) {
            c11628u.m19799e(8);
        }
        int m19804c = c11628u.m19804c();
        int m19787o = c11628u.m19787o();
        if (m19787o > c11048m.f35948f) {
            throw new ParserException("Saiz sample count " + m19787o + " is greater than fragment sample count" + c11048m.f35948f);
        }
        if (m19804c == 0) {
            boolean[] zArr = c11048m.f35956n;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i4;
                if (i3 >= m19787o) {
                    break;
                }
                int m19804c2 = c11628u.m19804c();
                i4 += m19804c2;
                zArr[i3] = m19804c2 > i2;
                i3++;
            }
        } else {
            if (m19804c <= i2) {
                z = false;
            }
            i = (m19804c * m19787o) + 0;
            Arrays.fill(c11048m.f35956n, 0, m19787o, z);
        }
        Arrays.fill(c11048m.f35956n, m19787o, c11048m.f35948f, false);
        if (i <= 0) {
            return;
        }
        c11048m.m21595a(i);
    }

    /* renamed from: a */
    private static void m21648a(C11628u c11628u, int i, C11048m c11048m) throws ParserException {
        c11628u.m19801d(i + 8);
        int m19792j = c11628u.m19792j() & 16777215;
        if ((m19792j & 1) == 0) {
            boolean z = (m19792j & 2) != 0;
            int m19787o = c11628u.m19787o();
            if (m19787o == 0) {
                Arrays.fill(c11048m.f35956n, 0, c11048m.f35948f, false);
                return;
            } else if (m19787o == c11048m.f35948f) {
                Arrays.fill(c11048m.f35956n, 0, m19787o, z);
                c11048m.m21595a(c11628u.m19812a());
                c11048m.m21593a(c11628u);
                return;
            } else {
                throw new ParserException("Senc sample count " + m19787o + " is different from fragment sample count" + c11048m.f35948f);
            }
        }
        throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: a */
    private static void m21646a(C11628u c11628u, C11048m c11048m) throws ParserException {
        c11628u.m19801d(8);
        int m19792j = c11628u.m19792j();
        if ((16777215 & m19792j & 1) == 1) {
            c11628u.m19799e(8);
        }
        int m19787o = c11628u.m19787o();
        if (m19787o == 1) {
            c11048m.f35946d += AbstractC11021a.m21685a(m19792j) == 0 ? c11628u.m19794h() : c11628u.m19785q();
            return;
        }
        throw new ParserException("Unexpected saio entry count: ".concat(String.valueOf(m19787o)));
    }

    /* renamed from: a */
    private static void m21645a(C11628u c11628u, C11048m c11048m, byte[] bArr) throws ParserException {
        c11628u.m19801d(8);
        c11628u.m19807a(bArr, 0, 16);
        if (!Arrays.equals(bArr, f35835b)) {
            return;
        }
        m21648a(c11628u, 16, c11048m);
    }

    /* renamed from: b */
    private static long m21638b(C11628u c11628u) {
        c11628u.m19801d(8);
        return AbstractC11021a.m21685a(c11628u.m19792j()) == 0 ? c11628u.m19794h() : c11628u.m19785q();
    }

    /* renamed from: b */
    private static C11037b m21642b(SparseArray<C11037b> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : sparseArray.get(i);
    }

    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* renamed from: b */
    private void m21641b(AbstractC11021a.C11022a c11022a) throws ParserException {
        C11593a.m20018b(this.f35849e == null, "Unexpected moov box.");
        DrmInitData m21644a = m21644a(c11022a.f35796c);
        AbstractC11021a.C11022a c11022a2 = (AbstractC11021a.C11022a) C11593a.m20020b(c11022a.m21680d(1836475768));
        SparseArray sparseArray = new SparseArray();
        int size = c11022a2.f35796c.size();
        char c = 1;
        for (int i = 0; i < size; i++) {
            AbstractC11021a.C11023b c11023b = c11022a2.f35796c.get(i);
            if (c11023b.f35794a == 1953654136) {
                Pair<Integer, C11031c> m21649a = m21649a(c11023b.f35798b);
                sparseArray.put(((Integer) m21649a.first).intValue(), (C11031c) m21649a.second);
            } else if (c11023b.f35794a == 1835362404) {
                c = m21638b(c11023b.f35798b);
            }
        }
        List<C11049n> m21678a = C11024b.m21678a(c11022a, new C11142r(), c, m21644a, (this.f35848d & 16) != 0, false, new Function() { // from class: com.google.android.exoplayer2.extractor.f._$$Lambda$a5uFYaUeVQyW4_Cb1xe4BHO62Ng
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return C11035e.this.m21651a((C11046k) obj);
            }
        });
        int size2 = m21678a.size();
        if (this.f35851g.size() != 0) {
            C11593a.m20019b(this.f35851g.size() == size2);
            for (int i2 = 0; i2 < size2; i2++) {
                C11049n c11049n = m21678a.get(i2);
                C11046k c11046k = c11049n.f35962a;
                this.f35851g.get(c11046k.f35927a).m21630a(c11049n, m21657a(sparseArray, c11046k.f35927a));
            }
            return;
        }
        for (int i3 = 0; i3 < size2; i3++) {
            C11049n c11049n2 = m21678a.get(i3);
            C11046k c11046k2 = c11049n2.f35962a;
            this.f35851g.put(c11046k2.f35927a, new C11037b(this.f35844H.mo20905a(i3, c11046k2.f35928b), c11049n2, m21657a(sparseArray, c11046k2.f35927a)));
            this.f35837A = Math.max(this.f35837A, c11046k2.f35931e);
        }
        this.f35844H.mo20907a();
    }

    /* renamed from: b */
    private static void m21640b(AbstractC11021a.C11022a c11022a, SparseArray<C11037b> sparseArray, int i, byte[] bArr) throws ParserException {
        C11037b m21647a = m21647a(((AbstractC11021a.C11023b) C11593a.m20020b(c11022a.m21681c(1952868452))).f35798b, sparseArray);
        if (m21647a == null) {
            return;
        }
        C11048m c11048m = m21647a.f35874b;
        long j = c11048m.f35960r;
        boolean z = c11048m.f35961s;
        m21647a.m21634a();
        m21647a.f35882j = true;
        AbstractC11021a.C11023b m21681c = c11022a.m21681c(1952867444);
        if (m21681c == null || (i & 2) != 0) {
            c11048m.f35960r = j;
            c11048m.f35961s = z;
        } else {
            c11048m.f35960r = m21635c(m21681c.f35798b);
            c11048m.f35961s = true;
        }
        m21654a(c11022a, m21647a, i);
        C11047l m21597a = m21647a.f35876d.f35962a.m21597a(((C11031c) C11593a.m20020b(c11048m.f35943a)).f35824a);
        AbstractC11021a.C11023b m21681c2 = c11022a.m21681c(1935763834);
        if (m21681c2 != null) {
            m21650a((C11047l) C11593a.m20020b(m21597a), m21681c2.f35798b, c11048m);
        }
        AbstractC11021a.C11023b m21681c3 = c11022a.m21681c(1935763823);
        if (m21681c3 != null) {
            m21646a(m21681c3.f35798b, c11048m);
        }
        AbstractC11021a.C11023b m21681c4 = c11022a.m21681c(1936027235);
        if (m21681c4 != null) {
            m21648a(m21681c4.f35798b, 0, c11048m);
        }
        m21653a(c11022a, m21597a != null ? m21597a.f35939b : null, c11048m);
        int size = c11022a.f35796c.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC11021a.C11023b c11023b = c11022a.f35796c.get(i2);
            if (c11023b.f35794a == 1970628964) {
                m21645a(c11023b.f35798b, c11048m, bArr);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* renamed from: b */
    private void m21639b(AbstractC11121i abstractC11121i) throws IOException {
        int size = this.f35851g.size();
        C11037b c11037b = null;
        char c = 65535;
        int i = 0;
        while (i < size) {
            C11048m c11048m = this.f35851g.valueAt(i).f35874b;
            C11037b c11037b2 = c11037b;
            char c2 = c;
            if (c11048m.f35959q) {
                c11037b2 = c11037b;
                c2 = c;
                if (c11048m.f35946d < c) {
                    c2 = c11048m.f35946d;
                    c11037b2 = this.f35851g.valueAt(i);
                }
            }
            i++;
            c11037b = c11037b2;
            c = c2;
        }
        if (c11037b == null) {
            this.f35863s = 3;
            return;
        }
        int mo21398c = (int) (c - abstractC11121i.mo21398c());
        if (mo21398c < 0) {
            throw new ParserException("Offset to encryption data was negative.");
        }
        abstractC11121i.mo21401b(mo21398c);
        C11048m c11048m2 = c11037b.f35874b;
        abstractC11121i.mo21400b(c11048m2.f35958p.f38733a, 0, c11048m2.f35958p.f38735c);
        c11048m2.f35958p.m19801d(0);
        c11048m2.f35959q = false;
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC11071h[] m21643b() {
        return new AbstractC11071h[]{new C11035e()};
    }

    /* renamed from: c */
    private static long m21635c(C11628u c11628u) {
        c11628u.m19801d(8);
        return AbstractC11021a.m21685a(c11628u.m19792j()) == 1 ? c11628u.m19785q() : c11628u.m19794h();
    }

    /* renamed from: c */
    private void m21637c(AbstractC11021a.C11022a c11022a) throws ParserException {
        m21655a(c11022a, this.f35851g, this.f35848d, this.f35855k);
        DrmInitData m21644a = m21644a(c11022a.f35796c);
        if (m21644a != null) {
            int size = this.f35851g.size();
            for (int i = 0; i < size; i++) {
                this.f35851g.valueAt(i).m21631a(m21644a);
            }
        }
        if (this.f35870z != -9223372036854775807L) {
            int size2 = this.f35851g.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f35851g.valueAt(i2).m21632a(this.f35870z);
            }
            this.f35870z = -9223372036854775807L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.android.exoplayer2.extractor.x] */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.google.android.exoplayer2.util.ad] */
    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    /* JADX WARN: Type inference failed for: r0v146, types: [long] */
    /* JADX WARN: Type inference failed for: r0v149, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v150 */
    /* JADX WARN: Type inference failed for: r0v235 */
    /* JADX WARN: Type inference failed for: r0v239, types: [long] */
    /* JADX WARN: Type inference failed for: r0v241 */
    /* JADX WARN: Type inference failed for: r0v247 */
    /* JADX WARN: Type inference failed for: r0v251 */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [com.google.android.exoplayer2.util.ad] */
    /* JADX WARN: Type inference failed for: r0v48, types: [com.google.android.exoplayer2.extractor.x[]] */
    /* JADX WARN: Type inference failed for: r0v54, types: [com.google.android.exoplayer2.extractor.x] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r1v1, types: [long] */
    /* JADX WARN: Type inference failed for: r1v11, types: [long] */
    /* JADX WARN: Type inference failed for: r1v130, types: [long] */
    /* JADX WARN: Type inference failed for: r1v70, types: [long] */
    /* renamed from: c */
    private boolean m21636c(AbstractC11121i abstractC11121i) throws IOException {
        int i;
        ?? r18;
        C11037b c11037b;
        C11037b c11037b2 = this.f35839C;
        C11037b c11037b3 = c11037b2;
        if (c11037b2 == null) {
            SparseArray<C11037b> sparseArray = this.f35851g;
            int size = sparseArray.size();
            ?? r14 = 65535;
            int i2 = 0;
            c11037b3 = null;
            while (i2 < size) {
                C11037b valueAt = sparseArray.valueAt(i2);
                if (!valueAt.f35882j) {
                    c11037b = c11037b3;
                    r18 = r14;
                    if (valueAt.f35878f == valueAt.f35876d.f35963b) {
                        i2++;
                        c11037b3 = c11037b;
                        r14 = r18;
                    }
                }
                if (valueAt.f35882j) {
                    c11037b = c11037b3;
                    r18 = r14;
                    if (valueAt.f35880h == valueAt.f35874b.f35947e) {
                        i2++;
                        c11037b3 = c11037b;
                        r14 = r18;
                    }
                }
                ?? m21629b = valueAt.m21629b();
                c11037b = c11037b3;
                r18 = r14;
                if (m21629b < r14) {
                    c11037b = valueAt;
                    r18 = m21629b;
                }
                i2++;
                c11037b3 = c11037b;
                r14 = r18;
            }
            if (c11037b3 == null) {
                int mo21398c = (int) (this.f35868x - abstractC11121i.mo21398c());
                if (mo21398c < 0) {
                    throw new ParserException("Offset to end of mdat was negative.");
                }
                abstractC11121i.mo21401b(mo21398c);
                m21660a();
                return false;
            }
            int m21629b2 = (int) (c11037b3.m21629b() - abstractC11121i.mo21398c());
            int i3 = m21629b2;
            if (m21629b2 < 0) {
                C11617n.m19863a("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                i3 = 0;
            }
            abstractC11121i.mo21401b(i3);
            this.f35839C = c11037b3;
        }
        if (this.f35863s == 3) {
            this.f35840D = !c11037b3.f35882j ? c11037b3.f35876d.f35965d[c11037b3.f35878f] : c11037b3.f35874b.f35951i[c11037b3.f35878f];
            if (c11037b3.f35878f < c11037b3.f35881i) {
                abstractC11121i.mo21401b(this.f35840D);
                C11047l m21627d = c11037b3.m21627d();
                if (m21627d != null) {
                    C11628u c11628u = c11037b3.f35874b.f35958p;
                    if (m21627d.f35941d != 0) {
                        c11628u.m19799e(m21627d.f35941d);
                    }
                    if (c11037b3.f35874b.m21591c(c11037b3.f35878f)) {
                        c11628u.m19799e(c11628u.m19802d() * 6);
                    }
                }
                if (!c11037b3.m21628c()) {
                    this.f35839C = null;
                }
                this.f35863s = 3;
                return true;
            }
            if (c11037b3.f35876d.f35962a.f35933g == 1) {
                this.f35840D -= 8;
                abstractC11121i.mo21401b(8);
            }
            if ("audio/ac4".equals(c11037b3.f35876d.f35962a.f35932f.sampleMimeType)) {
                this.f35841E = c11037b3.m21633a(this.f35840D, 7);
                C10886c.m22075a(this.f35840D, this.f35856l);
                c11037b3.f35873a.mo20819b(this.f35856l, 7);
                this.f35841E += 7;
            } else {
                this.f35841E = c11037b3.m21633a(this.f35840D, 0);
            }
            this.f35840D += this.f35841E;
            this.f35863s = 4;
            this.f35842F = 0;
        }
        C11046k c11046k = c11037b3.f35876d.f35962a;
        ?? r0 = c11037b3.f35873a;
        ?? m21592b = !c11037b3.f35882j ? c11037b3.f35876d.f35967f[c11037b3.f35878f] : c11037b3.f35874b.m21592b(c11037b3.f35878f);
        ?? r02 = this.f35857m;
        ?? r182 = m21592b;
        if (r02 != 0) {
            r182 = r02.m20004c(m21592b);
        }
        if (c11046k.f35936j == 0) {
            while (true) {
                int i4 = this.f35841E;
                int i5 = this.f35840D;
                if (i4 >= i5) {
                    break;
                }
                this.f35841E += r0.mo20820b(abstractC11121i, i5 - i4, false);
            }
        } else {
            byte[] bArr = this.f35853i.f38733a;
            bArr[0] = (byte) 0;
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            int i6 = c11046k.f35936j;
            int i7 = 4 - c11046k.f35936j;
            while (this.f35841E < this.f35840D) {
                int i8 = this.f35842F;
                if (i8 == 0) {
                    abstractC11121i.mo21400b(bArr, i7, i6 + 1);
                    this.f35853i.m19801d(0);
                    int m19792j = this.f35853i.m19792j();
                    if (m19792j <= 0) {
                        throw new ParserException("Invalid NAL length");
                    }
                    this.f35842F = m19792j - 1;
                    this.f35852h.m19801d(0);
                    r0.mo20819b(this.f35852h, 4);
                    r0.mo20819b(this.f35853i, 1);
                    this.f35843G = this.f35846J.length > 0 && C11624s.m19836a(c11046k.f35932f.sampleMimeType, bArr[4]);
                    this.f35841E += 5;
                    this.f35840D += i7;
                } else {
                    if (this.f35843G) {
                        this.f35854j.m19811a(i8);
                        abstractC11121i.mo21400b(this.f35854j.f38733a, 0, this.f35842F);
                        r0.mo20819b(this.f35854j, this.f35842F);
                        i = this.f35842F;
                        int m19834a = C11624s.m19834a(this.f35854j.f38733a, this.f35854j.f38735c);
                        this.f35854j.m19801d("video/hevc".equals(c11046k.f35932f.sampleMimeType) ? 1 : 0);
                        this.f35854j.m19803c(m19834a);
                        C10985b.m21768a(r182, this.f35854j, this.f35846J);
                    } else {
                        i = r0.mo20820b(abstractC11121i, i8, false);
                    }
                    this.f35841E += i;
                    this.f35842F -= i;
                }
            }
        }
        int i9 = !c11037b3.f35882j ? c11037b3.f35876d.f35968g[c11037b3.f35878f] : c11037b3.f35874b.f35954l[c11037b3.f35878f] ? 1 : 0;
        int i10 = i9;
        if (c11037b3.m21627d() != null) {
            i10 = i9 | 1073741824;
        }
        C11047l m21627d2 = c11037b3.m21627d();
        r0.mo20835a(r182, i10, this.f35840D, 0, m21627d2 != null ? m21627d2.f35940c : null);
        while (!this.f35861q.isEmpty()) {
            C11036a removeFirst = this.f35861q.removeFirst();
            this.f35869y -= removeFirst.f35872b;
            ?? r03 = r182 + removeFirst.f35871a;
            ?? r04 = this.f35857m;
            ?? r142 = r03;
            if (r04 != 0) {
                r142 = r04.m20004c(r03);
            }
            for (?? r05 : this.f35845I) {
                r05.mo20835a(r142, 1, removeFirst.f35872b, this.f35869y, null);
            }
        }
        if (!c11037b3.m21628c()) {
            this.f35839C = null;
        }
        this.f35863s = 3;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:215:0x0734 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v100, types: [long] */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v136, types: [long] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v170, types: [long] */
    /* JADX WARN: Type inference failed for: r0v172, types: [long] */
    /* JADX WARN: Type inference failed for: r0v176, types: [long] */
    /* JADX WARN: Type inference failed for: r0v178, types: [long] */
    /* JADX WARN: Type inference failed for: r0v180, types: [long] */
    /* JADX WARN: Type inference failed for: r0v182, types: [long] */
    /* JADX WARN: Type inference failed for: r0v184, types: [long] */
    /* JADX WARN: Type inference failed for: r0v312, types: [long] */
    /* JADX WARN: Type inference failed for: r0v327, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo21437a(com.google.android.exoplayer2.extractor.AbstractC11121i r11, com.google.android.exoplayer2.extractor.C11145u r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1868
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p332f.C11035e.mo21437a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    /* renamed from: a */
    public final C11046k m21651a(C11046k c11046k) {
        return c11046k;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        int size = this.f35851g.size();
        for (int i = 0; i < size; i++) {
            this.f35851g.valueAt(i).m21634a();
        }
        this.f35861q.clear();
        this.f35869y = 0;
        this.f35870z = j2;
        this.f35860p.clear();
        m21660a();
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        int i;
        this.f35844H = abstractC11130j;
        m21660a();
        AbstractC11150x[] abstractC11150xArr = new AbstractC11150x[2];
        this.f35845I = abstractC11150xArr;
        AbstractC11150x abstractC11150x = this.f35862r;
        if (abstractC11150x != null) {
            abstractC11150xArr[0] = abstractC11150x;
            i = 1;
        } else {
            i = 0;
        }
        int i2 = 100;
        int i3 = i;
        if ((this.f35848d & 4) != 0) {
            abstractC11150xArr[i] = this.f35844H.mo20905a(100, 5);
            i3 = i + 1;
            i2 = 101;
        }
        AbstractC11150x[] abstractC11150xArr2 = (AbstractC11150x[]) C11599af.m19954a(this.f35845I, i3);
        this.f35845I = abstractC11150xArr2;
        for (AbstractC11150x abstractC11150x2 : abstractC11150xArr2) {
            abstractC11150x2.mo20831a(f35836c);
        }
        this.f35846J = new AbstractC11150x[this.f35850f.size()];
        int i4 = 0;
        while (i4 < this.f35846J.length) {
            AbstractC11150x mo20905a = this.f35844H.mo20905a(i2, 3);
            mo20905a.mo20831a(this.f35850f.get(i4));
            this.f35846J[i4] = mo20905a;
            i4++;
            i2++;
        }
        C11046k c11046k = this.f35849e;
        if (c11046k != null) {
            this.f35851g.put(0, new C11037b(abstractC11130j.mo20905a(0, c11046k.f35928b), new C11049n(this.f35849e, new long[0], new int[0], 0, new long[0], new int[0], 0L), new C11031c(0, 0, 0, 0)));
            this.f35844H.mo20907a();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        return C11045j.m21600a(abstractC11121i);
    }
}
