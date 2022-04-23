package p012b.p076s.p078b.p079a.p102w0.p105n0;

import android.net.Uri;
import android.os.Handler;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.PrivFrame;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.hls.HlsChunkSource;
import androidx.media2.exoplayer.external.upstream.Loader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.C1531w;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1349f;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0;
import p012b.p076s.p078b.p079a.p102w0.C1559g0;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1588b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1700u;
/* renamed from: b.s.b.a.w0.n0.n */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/n.class */
public final class C1610n implements Loader.AbstractC0348b<AbstractC1588b>, Loader.AbstractC0352f, AbstractC1573i0, AbstractC1352i, C1559g0.AbstractC1561b {

    /* renamed from: A */
    public int f6580A;

    /* renamed from: B */
    public Format f6581B;

    /* renamed from: C */
    public Format f6582C;

    /* renamed from: D */
    public boolean f6583D;

    /* renamed from: E */
    public TrackGroupArray f6584E;

    /* renamed from: F */
    public TrackGroupArray f6585F;

    /* renamed from: G */
    public int[] f6586G;

    /* renamed from: H */
    public int f6587H;

    /* renamed from: I */
    public boolean f6588I;

    /* renamed from: L */
    public long f6591L;

    /* renamed from: M */
    public long f6592M;

    /* renamed from: N */
    public boolean f6593N;

    /* renamed from: O */
    public boolean f6594O;

    /* renamed from: P */
    public boolean f6595P;

    /* renamed from: Q */
    public boolean f6596Q;

    /* renamed from: R */
    public long f6597R;

    /* renamed from: S */
    public int f6598S;

    /* renamed from: a */
    public final int f6599a;

    /* renamed from: b */
    public final AbstractC1611a f6600b;

    /* renamed from: c */
    public final HlsChunkSource f6601c;

    /* renamed from: d */
    public final AbstractC1678b f6602d;

    /* renamed from: e */
    public final Format f6603e;

    /* renamed from: f */
    public final AbstractC1700u f6604f;

    /* renamed from: h */
    public final AbstractC1533a0.C1534a f6606h;

    /* renamed from: j */
    public final ArrayList<C1601g> f6608j;

    /* renamed from: k */
    public final List<C1601g> f6609k;

    /* renamed from: p */
    public final Map<String, DrmInitData> f6614p;

    /* renamed from: s */
    public boolean f6617s;

    /* renamed from: u */
    public boolean f6619u;

    /* renamed from: w */
    public int f6621w;

    /* renamed from: x */
    public int f6622x;

    /* renamed from: y */
    public boolean f6623y;

    /* renamed from: z */
    public boolean f6624z;

    /* renamed from: g */
    public final Loader f6605g = new Loader("Loader:HlsSampleStreamWrapper");

    /* renamed from: i */
    public final HlsChunkSource.C0328b f6607i = new HlsChunkSource.C0328b();

    /* renamed from: r */
    public int[] f6616r = new int[0];

    /* renamed from: t */
    public int f6618t = -1;

    /* renamed from: v */
    public int f6620v = -1;

    /* renamed from: q */
    public C1559g0[] f6615q = new C1559g0[0];

    /* renamed from: K */
    public boolean[] f6590K = new boolean[0];

    /* renamed from: J */
    public boolean[] f6589J = new boolean[0];

    /* renamed from: o */
    public final ArrayList<C1606j> f6613o = new ArrayList<>();

    /* renamed from: l */
    public final Runnable f6610l = new Runnable(this) { // from class: b.s.b.a.w0.n0.k

        /* renamed from: a */
        public final C1610n f6577a;

        {
            this.f6577a = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6577a.m32636h();
        }
    };

    /* renamed from: m */
    public final Runnable f6611m = new Runnable(this) { // from class: b.s.b.a.w0.n0.l

        /* renamed from: a */
        public final C1610n f6578a;

        {
            this.f6578a = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6578a.m32635i();
        }
    };

    /* renamed from: n */
    public final Handler f6612n = new Handler();

    /* renamed from: b.s.b.a.w0.n0.n$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/n$a.class */
    public interface AbstractC1611a extends AbstractC1573i0.AbstractC1574a<C1610n> {
        /* renamed from: a */
        void mo32624a(Uri uri);

        void onPrepared();
    }

    /* renamed from: b.s.b.a.w0.n0.n$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/n$b.class */
    public static final class C1612b extends C1559g0 {
        public C1612b(AbstractC1678b bVar) {
            super(bVar);
        }

        /* renamed from: a */
        public final Metadata m32622a(Metadata metadata) {
            int i;
            if (metadata == null) {
                return null;
            }
            int a = metadata.m38018a();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= a) {
                    i = -1;
                    break;
                }
                Metadata.Entry a2 = metadata.m38017a(i3);
                if ((a2 instanceof PrivFrame) && "com.apple.streaming.transportStreamTimestamp".equals(((PrivFrame) a2).f1794b)) {
                    i = i3;
                    break;
                }
                i3++;
            }
            if (i == -1) {
                return metadata;
            }
            if (a == 1) {
                return null;
            }
            Metadata.Entry[] entryArr = new Metadata.Entry[a - 1];
            while (i2 < a) {
                if (i2 != i) {
                    entryArr[i2 < i ? i2 : i2 - 1] = metadata.m38017a(i2);
                }
                i2++;
            }
            return new Metadata(entryArr);
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.C1559g0, p012b.p076s.p078b.p079a.p086s0.AbstractC1362q
        /* renamed from: a */
        public void mo32623a(Format format) {
            super.mo32623a(format.m38188a(m32622a(format.f1560g)));
        }
    }

    public C1610n(int i, AbstractC1611a aVar, HlsChunkSource hlsChunkSource, Map<String, DrmInitData> map, AbstractC1678b bVar, long j, Format format, AbstractC1700u uVar, AbstractC1533a0.C1534a aVar2) {
        this.f6599a = i;
        this.f6600b = aVar;
        this.f6601c = hlsChunkSource;
        this.f6614p = map;
        this.f6602d = bVar;
        this.f6603e = format;
        this.f6604f = uVar;
        this.f6606h = aVar2;
        ArrayList<C1601g> arrayList = new ArrayList<>();
        this.f6608j = arrayList;
        this.f6609k = Collections.unmodifiableList(arrayList);
        this.f6591L = j;
        this.f6592M = j;
    }

    /* renamed from: a */
    public static Format m32658a(Format format, Format format2, boolean z) {
        if (format == null) {
            return format2;
        }
        int i = z ? format.f1558e : -1;
        int i2 = format.f1575v;
        if (i2 == -1) {
            i2 = format2.f1575v;
        }
        String a = C1167d0.m34476a(format.f1559f, C1178m.m34404f(format2.f1562i));
        String d = C1178m.m34406d(a);
        String str = d;
        if (d == null) {
            str = format2.f1562i;
        }
        return format2.m38175a(format.f1554a, format.f1555b, str, a, format.f1560g, i, format.f1567n, format.f1568o, i2, format.f1556c, format.f1551A);
    }

    /* renamed from: a */
    public static boolean m32659a(Format format, Format format2) {
        String str = format.f1562i;
        String str2 = format2.f1562i;
        int f = C1178m.m34404f(str);
        boolean z = true;
        boolean z2 = true;
        if (f != 3) {
            if (f != C1178m.m34404f(str2)) {
                z2 = false;
            }
            return z2;
        } else if (!C1167d0.m34478a((Object) str, (Object) str2)) {
            return false;
        } else {
            if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                return true;
            }
            if (format.f1552B != format2.f1552B) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: a */
    public static boolean m32655a(AbstractC1588b bVar) {
        return bVar instanceof C1601g;
    }

    /* renamed from: b */
    public static C1349f m32646b(int i, int i2) {
        StringBuilder sb = new StringBuilder(54);
        sb.append("Unmapped track with id ");
        sb.append(i);
        sb.append(" of type ");
        sb.append(i2);
        C1175j.m34414d("HlsSampleStreamWrapper", sb.toString());
        return new C1349f();
    }

    /* renamed from: d */
    public static int m32641d(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 0 : 1;
        }
        return 3;
    }

    /* renamed from: a */
    public int m32667a(int i) {
        int i2 = this.f6586G[i];
        int i3 = -2;
        if (i2 == -1) {
            if (this.f6585F.m37989a(this.f6584E.m37990a(i)) != -1) {
                i3 = -3;
            }
            return i3;
        }
        boolean[] zArr = this.f6589J;
        if (zArr[i2]) {
            return -2;
        }
        zArr[i2] = true;
        return i2;
    }

    /* renamed from: a */
    public int m32665a(int i, long j) {
        int a = 0;
        if (m32631m()) {
            return 0;
        }
        C1559g0 g0Var = this.f6615q[i];
        if (this.f6595P && j > g0Var.m32816c()) {
            return g0Var.m32835a();
        }
        a = g0Var.m32830a(j, true, true);
        if (a == -1) {
        }
        return a;
    }

    /* renamed from: a */
    public int m32664a(int i, C1531w wVar, C1311d dVar, boolean z) {
        if (m32631m()) {
            return -3;
        }
        int i2 = 0;
        if (!this.f6608j.isEmpty()) {
            int i3 = 0;
            while (i3 < this.f6608j.size() - 1 && m32651a(this.f6608j.get(i3))) {
                i3++;
            }
            C1167d0.m34471a(this.f6608j, 0, i3);
            C1601g gVar = this.f6608j.get(0);
            Format format = gVar.f6487c;
            if (!format.equals(this.f6582C)) {
                this.f6606h.m32954a(this.f6599a, format, gVar.f6488d, gVar.f6489e, gVar.f6490f);
            }
            this.f6582C = format;
        }
        int a = this.f6615q[i].m32822a(wVar, dVar, z, this.f6595P, this.f6591L);
        if (a == -5) {
            Format format2 = wVar.f6243a;
            Format format3 = format2;
            if (i == this.f6622x) {
                int i4 = this.f6615q[i].m32808i();
                while (i2 < this.f6608j.size() && this.f6608j.get(i2).f6517j != i4) {
                    i2++;
                }
                format3 = format2.m38190a(i2 < this.f6608j.size() ? this.f6608j.get(i2).f6487c : this.f6581B);
            }
            DrmInitData drmInitData = format3.f1565l;
            Format format4 = format3;
            if (drmInitData != null) {
                DrmInitData drmInitData2 = this.f6614p.get(drmInitData.f1664c);
                format4 = format3;
                if (drmInitData2 != null) {
                    format4 = format3.m38189a(drmInitData2);
                }
            }
            wVar.f6243a = format4;
        }
        return a;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: a */
    public long mo32521a() {
        if (m32631m()) {
            return this.f6592M;
        }
        return this.f6595P ? Long.MIN_VALUE : m32632l().f6491g;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Loader.C0349c mo32573a(AbstractC1588b bVar, long j, long j2, IOException iOException, int i) {
        Loader.C0349c cVar;
        long c = bVar.m32727c();
        boolean a = m32655a(bVar);
        long b = this.f6604f.mo32335b(bVar.f6486b, j2, iOException, i);
        boolean z = false;
        boolean a2 = b != -9223372036854775807L ? this.f6601c.m37982a(bVar, b) : false;
        if (a2) {
            if (a && c == 0) {
                ArrayList<C1601g> arrayList = this.f6608j;
                if (arrayList.remove(arrayList.size() - 1) == bVar) {
                    z = true;
                }
                C1160a.m34518b(z);
                if (this.f6608j.isEmpty()) {
                    this.f6592M = this.f6591L;
                }
            }
            cVar = Loader.f1985d;
        } else {
            long a3 = this.f6604f.mo32336a(bVar.f6486b, j2, iOException, i);
            cVar = a3 != -9223372036854775807L ? Loader.m37914a(false, a3) : Loader.f1986e;
        }
        this.f6606h.m32938a(bVar.f6485a, bVar.m32724f(), bVar.m32725e(), bVar.f6486b, this.f6599a, bVar.f6487c, bVar.f6488d, bVar.f6489e, bVar.f6490f, bVar.f6491g, j, j2, c, iOException, !cVar.m37909a());
        if (a2) {
            if (!this.f6624z) {
                mo32520a(this.f6591L);
            } else {
                this.f6600b.mo32686a((AbstractC1611a) this);
            }
        }
        return cVar;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1352i
    /* renamed from: a */
    public AbstractC1362q mo32666a(int i, int i2) {
        AbstractC1362q[] qVarArr = this.f6615q;
        int length = qVarArr.length;
        boolean z = false;
        if (i2 == 1) {
            int i3 = this.f6618t;
            if (i3 != -1) {
                if (this.f6617s) {
                    return this.f6616r[i3] == i ? qVarArr[i3] : m32646b(i, i2);
                }
                this.f6617s = true;
                this.f6616r[i3] = i;
                return qVarArr[i3];
            } else if (this.f6596Q) {
                return m32646b(i, i2);
            }
        } else if (i2 == 2) {
            int i4 = this.f6620v;
            if (i4 != -1) {
                if (this.f6619u) {
                    return this.f6616r[i4] == i ? qVarArr[i4] : m32646b(i, i2);
                }
                this.f6619u = true;
                this.f6616r[i4] = i;
                return qVarArr[i4];
            } else if (this.f6596Q) {
                return m32646b(i, i2);
            }
        } else {
            for (int i5 = 0; i5 < length; i5++) {
                if (this.f6616r[i5] == i) {
                    return this.f6615q[i5];
                }
            }
            if (this.f6596Q) {
                return m32646b(i, i2);
            }
        }
        C1612b bVar = new C1612b(this.f6602d);
        bVar.m32814c(this.f6597R);
        bVar.m32815c(this.f6598S);
        bVar.m32823a(this);
        int i6 = length + 1;
        int[] copyOf = Arrays.copyOf(this.f6616r, i6);
        this.f6616r = copyOf;
        copyOf[length] = i;
        C1559g0[] g0VarArr = (C1559g0[]) Arrays.copyOf(this.f6615q, i6);
        this.f6615q = g0VarArr;
        g0VarArr[length] = bVar;
        boolean[] copyOf2 = Arrays.copyOf(this.f6590K, i6);
        this.f6590K = copyOf2;
        if (i2 == 1 || i2 == 2) {
            z = true;
        }
        copyOf2[length] = z;
        this.f6588I |= this.f6590K[length];
        if (i2 == 1) {
            this.f6617s = true;
            this.f6618t = length;
        } else if (i2 == 2) {
            this.f6619u = true;
            this.f6620v = length;
        }
        if (m32641d(i2) > m32641d(this.f6621w)) {
            this.f6622x = length;
            this.f6621w = i2;
        }
        this.f6589J = Arrays.copyOf(this.f6589J, i6);
        return bVar;
    }

    /* renamed from: a */
    public void m32663a(int i, boolean z, boolean z2) {
        if (!z2) {
            this.f6617s = false;
            this.f6619u = false;
        }
        this.f6598S = i;
        for (C1559g0 g0Var : this.f6615q) {
            g0Var.m32815c(i);
        }
        if (z) {
            for (C1559g0 g0Var2 : this.f6615q) {
                g0Var2.m32805l();
            }
        }
    }

    /* renamed from: a */
    public void m32662a(long j, boolean z) {
        if (this.f6623y && !m32631m()) {
            int length = this.f6615q.length;
            for (int i = 0; i < length; i++) {
                this.f6615q[i].m32817b(j, z, this.f6589J[i]);
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.C1559g0.AbstractC1561b
    /* renamed from: a */
    public void mo32660a(Format format) {
        this.f6612n.post(this.f6610l);
    }

    /* renamed from: a */
    public void m32657a(TrackGroupArray trackGroupArray, int i, TrackGroupArray trackGroupArray2) {
        this.f6624z = true;
        this.f6584E = trackGroupArray;
        this.f6585F = trackGroupArray2;
        this.f6587H = i;
        Handler handler = this.f6612n;
        AbstractC1611a aVar = this.f6600b;
        aVar.getClass();
        handler.post(RunnableC1609m.m32668a(aVar));
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1352i
    /* renamed from: a */
    public void mo32656a(AbstractC1358o oVar) {
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo32574a(AbstractC1588b bVar, long j, long j2) {
        this.f6601c.m37983a(bVar);
        this.f6606h.m32931b(bVar.f6485a, bVar.m32724f(), bVar.m32725e(), bVar.f6486b, this.f6599a, bVar.f6487c, bVar.f6488d, bVar.f6489e, bVar.f6490f, bVar.f6491g, j, j2, bVar.m32727c());
        if (!this.f6624z) {
            mo32520a(this.f6591L);
        } else {
            this.f6600b.mo32686a((AbstractC1611a) this);
        }
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo32572a(AbstractC1588b bVar, long j, long j2, boolean z) {
        this.f6606h.m32939a(bVar.f6485a, bVar.m32724f(), bVar.m32725e(), bVar.f6486b, this.f6599a, bVar.f6487c, bVar.f6488d, bVar.f6489e, bVar.f6490f, bVar.f6491g, j, j2, bVar.m32727c());
        if (!z) {
            m32625s();
            if (this.f6580A > 0) {
                this.f6600b.mo32686a((AbstractC1611a) this);
            }
        }
    }

    /* renamed from: a */
    public void m32650a(boolean z) {
        this.f6601c.m37976a(z);
    }

    /* renamed from: a */
    public final void m32649a(AbstractC1563h0[] h0VarArr) {
        this.f6613o.clear();
        for (AbstractC1563h0 h0Var : h0VarArr) {
            if (h0Var != null) {
                this.f6613o.add((C1606j) h0Var);
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: a */
    public boolean mo32520a(long j) {
        long j2;
        List<C1601g> list;
        if (this.f6595P || this.f6605g.m37913b()) {
            return false;
        }
        if (m32631m()) {
            list = Collections.emptyList();
            j2 = this.f6592M;
        } else {
            list = this.f6609k;
            C1601g l = m32632l();
            j2 = l.m32694h() ? l.f6491g : Math.max(this.f6591L, l.f6490f);
        }
        this.f6601c.m37986a(j, j2, list, this.f6607i);
        HlsChunkSource.C0328b bVar = this.f6607i;
        boolean z = bVar.f1882b;
        AbstractC1588b bVar2 = bVar.f1881a;
        Uri uri = bVar.f1883c;
        bVar.m37971a();
        if (z) {
            this.f6592M = -9223372036854775807L;
            this.f6595P = true;
            return true;
        } else if (bVar2 != null) {
            if (m32655a(bVar2)) {
                this.f6592M = -9223372036854775807L;
                C1601g gVar = (C1601g) bVar2;
                gVar.m32699a(this);
                this.f6608j.add(gVar);
                this.f6581B = gVar.f6487c;
            }
            this.f6606h.m32941a(bVar2.f6485a, bVar2.f6486b, this.f6599a, bVar2.f6487c, bVar2.f6488d, bVar2.f6489e, bVar2.f6490f, bVar2.f6491g, this.f6605g.m37919a(bVar2, this, this.f6604f.mo32337a(bVar2.f6486b)));
            return true;
        } else if (uri == null) {
            return false;
        } else {
            this.f6600b.mo32624a(uri);
            return false;
        }
    }

    /* renamed from: a */
    public boolean m32661a(Uri uri, long j) {
        return this.f6601c.m37984a(uri, j);
    }

    /* renamed from: a */
    public final boolean m32651a(C1601g gVar) {
        int i = gVar.f6517j;
        int length = this.f6615q.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (this.f6589J[i2] && this.f6615q[i2].m32808i() == i) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x024a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m32648a(p012b.p076s.p078b.p079a.p110y0.AbstractC1668i[] r11, boolean[] r12, p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0[] r13, boolean[] r14, long r15, boolean r17) {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.p105n0.C1610n.m32648a(b.s.b.a.y0.i[], boolean[], b.s.b.a.w0.h0[], boolean[], long, boolean):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo32515b() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.f6595P
            if (r0 == 0) goto L_0x000b
            r0 = -9223372036854775808
            return r0
        L_0x000b:
            r0 = r5
            boolean r0 = r0.m32631m()
            if (r0 == 0) goto L_0x0017
            r0 = r5
            long r0 = r0.f6592M
            return r0
        L_0x0017:
            r0 = r5
            long r0 = r0.f6591L
            r6 = r0
            r0 = r5
            b.s.b.a.w0.n0.g r0 = r0.m32632l()
            r8 = r0
            r0 = r8
            boolean r0 = r0.m32694h()
            if (r0 == 0) goto L_0x002b
            goto L_0x004e
        L_0x002b:
            r0 = r5
            java.util.ArrayList<b.s.b.a.w0.n0.g> r0 = r0.f6608j
            int r0 = r0.size()
            r1 = 1
            if (r0 <= r1) goto L_0x004c
            r0 = r5
            java.util.ArrayList<b.s.b.a.w0.n0.g> r0 = r0.f6608j
            r8 = r0
            r0 = r8
            r1 = r8
            int r1 = r1.size()
            r2 = 2
            int r1 = r1 - r2
            java.lang.Object r0 = r0.get(r1)
            b.s.b.a.w0.n0.g r0 = (p012b.p076s.p078b.p079a.p102w0.p105n0.C1601g) r0
            r8 = r0
            goto L_0x004e
        L_0x004c:
            r0 = 0
            r8 = r0
        L_0x004e:
            r0 = r6
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x005f
            r0 = r6
            r1 = r8
            long r1 = r1.f6491g
            long r0 = java.lang.Math.max(r0, r1)
            r9 = r0
        L_0x005f:
            r0 = r9
            r6 = r0
            r0 = r5
            boolean r0 = r0.f6623y
            if (r0 == 0) goto L_0x0093
            r0 = r5
            b.s.b.a.w0.g0[] r0 = r0.f6615q
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x0075:
            r0 = r9
            r6 = r0
            r0 = r12
            r1 = r11
            if (r0 >= r1) goto L_0x0093
            r0 = r9
            r1 = r8
            r2 = r12
            r1 = r1[r2]
            long r1 = r1.m32816c()
            long r0 = java.lang.Math.max(r0, r1)
            r9 = r0
            int r12 = r12 + 1
            goto L_0x0075
        L_0x0093:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.p105n0.C1610n.mo32515b():long");
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: b */
    public void mo32514b(long j) {
    }

    /* renamed from: b */
    public boolean m32647b(int i) {
        return this.f6595P || (!m32631m() && this.f6615q[i].m32810g());
    }

    /* renamed from: b */
    public boolean m32645b(long j, boolean z) {
        this.f6591L = j;
        if (m32631m()) {
            this.f6592M = j;
            return true;
        } else if (this.f6623y && !z && m32640d(j)) {
            return false;
        } else {
            this.f6592M = j;
            this.f6595P = false;
            this.f6608j.clear();
            if (this.f6605g.m37913b()) {
                this.f6605g.m37921a();
                return true;
            }
            m32625s();
            return true;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC0352f
    /* renamed from: c */
    public void mo32644c() {
        m32625s();
    }

    /* renamed from: c */
    public void m32643c(int i) {
        int i2 = this.f6586G[i];
        C1160a.m34518b(this.f6589J[i2]);
        this.f6589J[i2] = false;
    }

    /* renamed from: d */
    public void m32642d() throws IOException {
        m32628p();
    }

    /* renamed from: d */
    public final boolean m32640d(long j) {
        int length = this.f6615q.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= length) {
                return true;
            }
            C1559g0 g0Var = this.f6615q[i];
            g0Var.m32806k();
            if (g0Var.m32830a(j, true, false) == -1) {
                z = false;
            }
            if (!z && (this.f6590K[i] || !this.f6588I)) {
                return false;
            }
            i++;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1352i
    /* renamed from: e */
    public void mo32639e() {
        this.f6596Q = true;
        this.f6612n.post(this.f6611m);
    }

    /* renamed from: e */
    public void m32638e(long j) {
        this.f6597R = j;
        for (C1559g0 g0Var : this.f6615q) {
            g0Var.m32814c(j);
        }
    }

    /* renamed from: g */
    public TrackGroupArray m32637g() {
        return this.f6584E;
    }

    /* renamed from: j */
    public final void m32634j() {
        int length = this.f6615q.length;
        boolean z = false;
        int i = 0;
        int i2 = 6;
        int i3 = -1;
        while (true) {
            int i4 = 2;
            if (i >= length) {
                break;
            }
            String str = this.f6615q[i].m32812e().f1562i;
            if (!C1178m.m34398l(str)) {
                i4 = C1178m.m34400j(str) ? 1 : C1178m.m34399k(str) ? 3 : 6;
            }
            if (m32641d(i4) > m32641d(i2)) {
                i3 = i;
                i2 = i4;
            } else {
                i2 = i2;
                i3 = i3;
                if (i4 == i2) {
                    i2 = i2;
                    i3 = i3;
                    if (i3 != -1) {
                        i3 = -1;
                        i2 = i2;
                    }
                }
            }
            i++;
        }
        TrackGroup a = this.f6601c.m37988a();
        int i5 = a.f1855a;
        this.f6587H = -1;
        this.f6586G = new int[length];
        for (int i6 = 0; i6 < length; i6++) {
            this.f6586G[i6] = i6;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        for (int i7 = 0; i7 < length; i7++) {
            Format e = this.f6615q[i7].m32812e();
            if (i7 == i3) {
                Format[] formatArr = new Format[i5];
                if (i5 == 1) {
                    formatArr[0] = e.m38190a(a.m37992a(0));
                } else {
                    for (int i8 = 0; i8 < i5; i8++) {
                        formatArr[i8] = m32658a(a.m37992a(i8), e, true);
                    }
                }
                trackGroupArr[i7] = new TrackGroup(formatArr);
                this.f6587H = i7;
            } else {
                trackGroupArr[i7] = new TrackGroup(m32658a((i2 != 2 || !C1178m.m34400j(e.f1562i)) ? null : this.f6603e, e, false));
            }
        }
        this.f6584E = new TrackGroupArray(trackGroupArr);
        if (this.f6585F == null) {
            z = true;
        }
        C1160a.m34518b(z);
        this.f6585F = TrackGroupArray.f1858d;
    }

    /* renamed from: k */
    public void m32633k() {
        if (!this.f6624z) {
            mo32520a(this.f6591L);
        }
    }

    /* renamed from: l */
    public final C1601g m32632l() {
        ArrayList<C1601g> arrayList = this.f6608j;
        return arrayList.get(arrayList.size() - 1);
    }

    /* renamed from: m */
    public final boolean m32631m() {
        return this.f6592M != -9223372036854775807L;
    }

    /* renamed from: n */
    public final void m32630n() {
        int i = this.f6584E.f1859a;
        int[] iArr = new int[i];
        this.f6586G = iArr;
        Arrays.fill(iArr, -1);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = 0;
            while (true) {
                C1559g0[] g0VarArr = this.f6615q;
                if (i3 >= g0VarArr.length) {
                    break;
                } else if (m32659a(g0VarArr[i3].m32812e(), this.f6584E.m37990a(i2).m37992a(0))) {
                    this.f6586G[i2] = i3;
                    break;
                } else {
                    i3++;
                }
            }
        }
        Iterator<C1606j> it = this.f6613o.iterator();
        while (it.hasNext()) {
            it.next().m32671c();
        }
    }

    /* renamed from: o */
    public final void m32636h() {
        if (!this.f6583D && this.f6586G == null && this.f6623y) {
            for (C1559g0 g0Var : this.f6615q) {
                if (g0Var.m32812e() == null) {
                    return;
                }
            }
            if (this.f6584E != null) {
                m32630n();
                return;
            }
            m32634j();
            this.f6624z = true;
            this.f6600b.onPrepared();
        }
    }

    /* renamed from: p */
    public void m32628p() throws IOException {
        this.f6605g.m37911c();
        this.f6601c.m37974c();
    }

    /* renamed from: q */
    public final void m32635i() {
        this.f6623y = true;
        m32636h();
    }

    /* renamed from: r */
    public void m32626r() {
        if (this.f6624z) {
            for (C1559g0 g0Var : this.f6615q) {
                g0Var.m32820b();
            }
        }
        this.f6605g.m37918a(this);
        this.f6612n.removeCallbacksAndMessages(null);
        this.f6583D = true;
        this.f6613o.clear();
    }

    /* renamed from: s */
    public final void m32625s() {
        for (C1559g0 g0Var : this.f6615q) {
            g0Var.m32821a(this.f6593N);
        }
        this.f6593N = false;
    }
}
