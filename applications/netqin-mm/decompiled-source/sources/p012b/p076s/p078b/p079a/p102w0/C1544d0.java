package p012b.p076s.p078b.p079a.p102w0;

import android.net.Uri;
import android.os.Handler;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.metadata.icy.IcyHeaders;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.UnrecognizedInputFormatException;
import androidx.media2.exoplayer.external.upstream.Loader;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.C1244l0;
import p012b.p076s.p078b.p079a.C1531w;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1166d;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1631p;
import p012b.p076s.p078b.p079a.p102w0.C1559g0;
import p012b.p076s.p078b.p079a.p102w0.C1629o;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1668i;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1700u;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
import p012b.p076s.p078b.p079a.p111z0.C1703w;
/* renamed from: b.s.b.a.w0.d0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/d0.class */
public final class C1544d0 implements AbstractC1631p, AbstractC1352i, Loader.AbstractC0348b<C1545a>, Loader.AbstractC0352f, C1559g0.AbstractC1561b {

    /* renamed from: K */
    public static final Format f6279K = Format.m38185a("icy", "application/x-icy", Long.MAX_VALUE);

    /* renamed from: A */
    public boolean f6280A;

    /* renamed from: B */
    public int f6281B;

    /* renamed from: E */
    public long f6284E;

    /* renamed from: G */
    public boolean f6286G;

    /* renamed from: H */
    public int f6287H;

    /* renamed from: I */
    public boolean f6288I;

    /* renamed from: J */
    public boolean f6289J;

    /* renamed from: a */
    public final Uri f6290a;

    /* renamed from: b */
    public final AbstractC1684g f6291b;

    /* renamed from: c */
    public final AbstractC1700u f6292c;

    /* renamed from: d */
    public final AbstractC1533a0.C1534a f6293d;

    /* renamed from: e */
    public final AbstractC1547c f6294e;

    /* renamed from: f */
    public final AbstractC1678b f6295f;

    /* renamed from: g */
    public final String f6296g;

    /* renamed from: h */
    public final long f6297h;

    /* renamed from: j */
    public final C1546b f6299j;

    /* renamed from: o */
    public AbstractC1631p.AbstractC1632a f6304o;

    /* renamed from: p */
    public AbstractC1358o f6305p;

    /* renamed from: q */
    public IcyHeaders f6306q;

    /* renamed from: t */
    public boolean f6309t;

    /* renamed from: u */
    public boolean f6310u;

    /* renamed from: v */
    public C1548d f6311v;

    /* renamed from: w */
    public boolean f6312w;

    /* renamed from: y */
    public boolean f6314y;

    /* renamed from: z */
    public boolean f6315z;

    /* renamed from: i */
    public final Loader f6298i = new Loader("Loader:ProgressiveMediaPeriod");

    /* renamed from: k */
    public final C1166d f6300k = new C1166d();

    /* renamed from: l */
    public final Runnable f6301l = new Runnable(this) { // from class: b.s.b.a.w0.b0

        /* renamed from: a */
        public final C1544d0 f6266a;

        {
            this.f6266a = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6266a.m32897h();
        }
    };

    /* renamed from: m */
    public final Runnable f6302m = new Runnable(this) { // from class: b.s.b.a.w0.c0

        /* renamed from: a */
        public final C1544d0 f6276a;

        {
            this.f6276a = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6276a.m32891n();
        }
    };

    /* renamed from: n */
    public final Handler f6303n = new Handler();

    /* renamed from: s */
    public C1550f[] f6308s = new C1550f[0];

    /* renamed from: r */
    public C1559g0[] f6307r = new C1559g0[0];

    /* renamed from: F */
    public long f6285F = -9223372036854775807L;

    /* renamed from: D */
    public long f6283D = -1;

    /* renamed from: C */
    public long f6282C = -9223372036854775807L;

    /* renamed from: x */
    public int f6313x = 1;

    /* renamed from: b.s.b.a.w0.d0$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/d0$a.class */
    public final class C1545a implements Loader.AbstractC0351e, C1629o.AbstractC1630a {

        /* renamed from: a */
        public final Uri f6316a;

        /* renamed from: b */
        public final C1703w f6317b;

        /* renamed from: c */
        public final C1546b f6318c;

        /* renamed from: d */
        public final AbstractC1352i f6319d;

        /* renamed from: e */
        public final C1166d f6320e;

        /* renamed from: g */
        public volatile boolean f6322g;

        /* renamed from: i */
        public long f6324i;

        /* renamed from: l */
        public AbstractC1362q f6327l;

        /* renamed from: m */
        public boolean f6328m;

        /* renamed from: f */
        public final C1357n f6321f = new C1357n();

        /* renamed from: h */
        public boolean f6323h = true;

        /* renamed from: k */
        public long f6326k = -1;

        /* renamed from: j */
        public C1687i f6325j = m32884a(0);

        public C1545a(Uri uri, AbstractC1684g gVar, C1546b bVar, AbstractC1352i iVar, C1166d dVar) {
            this.f6316a = uri;
            this.f6317b = new C1703w(gVar);
            this.f6318c = bVar;
            this.f6319d = iVar;
            this.f6320e = dVar;
        }

        /* renamed from: a */
        public final C1687i m32884a(long j) {
            return new C1687i(this.f6316a, j, -1L, C1544d0.this.f6296g, 22);
        }

        @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC0351e
        /* renamed from: a */
        public void mo32334a() {
            this.f6322g = true;
        }

        /* renamed from: a */
        public final void m32883a(long j, long j2) {
            this.f6321f.f5355a = j;
            this.f6324i = j2;
            this.f6323h = true;
            this.f6328m = false;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.C1629o.AbstractC1630a
        /* renamed from: a */
        public void mo32522a(C1184p pVar) {
            long max = !this.f6328m ? this.f6324i : Math.max(C1544d0.this.m32895j(), this.f6324i);
            int a = pVar.m34372a();
            AbstractC1362q qVar = this.f6327l;
            C1160a.m34522a(qVar);
            AbstractC1362q qVar2 = qVar;
            qVar2.mo32827a(pVar, a);
            qVar2.mo32832a(max, 1, a, 0, null);
            this.f6328m = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r13v6 */
        /* JADX WARN: Type inference failed for: r7v0, types: [b.s.b.a.w0.d0$a, b.s.b.a.w0.o$a] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC0351e
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo32333b() throws java.io.IOException, java.lang.InterruptedException {
            /*
                Method dump skipped, instructions count: 494
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1544d0.C1545a.mo32333b():void");
        }
    }

    /* renamed from: b.s.b.a.w0.d0$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/d0$b.class */
    public static final class C1546b {

        /* renamed from: a */
        public final AbstractC1350g[] f6330a;

        /* renamed from: b */
        public AbstractC1350g f6331b;

        public C1546b(AbstractC1350g[] gVarArr) {
            this.f6330a = gVarArr;
        }

        /* renamed from: a */
        public AbstractC1350g m32876a(AbstractC1351h hVar, AbstractC1352i iVar, Uri uri) throws IOException, InterruptedException {
            AbstractC1350g gVar = this.f6331b;
            if (gVar != null) {
                return gVar;
            }
            AbstractC1350g[] gVarArr = this.f6330a;
            int length = gVarArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                AbstractC1350g gVar2 = gVarArr[i];
                try {
                } catch (EOFException e) {
                } catch (Throwable th) {
                    hVar.mo33614c();
                    throw th;
                }
                if (gVar2.mo32616a(hVar)) {
                    this.f6331b = gVar2;
                    hVar.mo33614c();
                    break;
                }
                continue;
                hVar.mo33614c();
                i++;
            }
            AbstractC1350g gVar3 = this.f6331b;
            if (gVar3 != null) {
                gVar3.mo32614a(iVar);
                return this.f6331b;
            }
            String b = C1167d0.m34448b(this.f6330a);
            StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 58);
            sb.append("None of the available extractors (");
            sb.append(b);
            sb.append(") could read the stream.");
            throw new UnrecognizedInputFormatException(sb.toString(), uri);
        }

        /* renamed from: a */
        public void m32877a() {
            AbstractC1350g gVar = this.f6331b;
            if (gVar != null) {
                gVar.mo32619a();
                this.f6331b = null;
            }
        }
    }

    /* renamed from: b.s.b.a.w0.d0$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/d0$c.class */
    public interface AbstractC1547c {
        /* renamed from: a */
        void mo32860a(long j, boolean z);
    }

    /* renamed from: b.s.b.a.w0.d0$d */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/d0$d.class */
    public static final class C1548d {

        /* renamed from: a */
        public final AbstractC1358o f6332a;

        /* renamed from: b */
        public final TrackGroupArray f6333b;

        /* renamed from: c */
        public final boolean[] f6334c;

        /* renamed from: d */
        public final boolean[] f6335d;

        /* renamed from: e */
        public final boolean[] f6336e;

        public C1548d(AbstractC1358o oVar, TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f6332a = oVar;
            this.f6333b = trackGroupArray;
            this.f6334c = zArr;
            int i = trackGroupArray.f1859a;
            this.f6335d = new boolean[i];
            this.f6336e = new boolean[i];
        }
    }

    /* renamed from: b.s.b.a.w0.d0$e */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/d0$e.class */
    public final class C1549e implements AbstractC1563h0 {

        /* renamed from: a */
        public final int f6337a;

        public C1549e(int i) {
            this.f6337a = i;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
        /* renamed from: a */
        public int mo32674a(long j) {
            return C1544d0.this.m32915a(this.f6337a, j);
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
        /* renamed from: a */
        public int mo32673a(C1531w wVar, C1311d dVar, boolean z) {
            return C1544d0.this.m32914a(this.f6337a, wVar, dVar, z);
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
        /* renamed from: a */
        public void mo32675a() throws IOException {
            C1544d0.this.m32889p();
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
        /* renamed from: b */
        public boolean mo32672b() {
            return C1544d0.this.m32916a(this.f6337a);
        }
    }

    /* renamed from: b.s.b.a.w0.d0$f */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/d0$f.class */
    public static final class C1550f {

        /* renamed from: a */
        public final int f6339a;

        /* renamed from: b */
        public final boolean f6340b;

        public C1550f(int i, boolean z) {
            this.f6339a = i;
            this.f6340b = z;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C1550f.class != obj.getClass()) {
                return false;
            }
            C1550f fVar = (C1550f) obj;
            if (!(this.f6339a == fVar.f6339a && this.f6340b == fVar.f6340b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f6339a * 31) + (this.f6340b ? 1 : 0);
        }
    }

    public C1544d0(Uri uri, AbstractC1684g gVar, AbstractC1350g[] gVarArr, AbstractC1700u uVar, AbstractC1533a0.C1534a aVar, AbstractC1547c cVar, AbstractC1678b bVar, String str, int i) {
        this.f6290a = uri;
        this.f6291b = gVar;
        this.f6292c = uVar;
        this.f6293d = aVar;
        this.f6294e = cVar;
        this.f6295f = bVar;
        this.f6296g = str;
        this.f6297h = i;
        this.f6299j = new C1546b(gVarArr);
        aVar.m32955a();
    }

    /* renamed from: a */
    public int m32915a(int i, long j) {
        int i2 = 0;
        if (m32886s()) {
            return 0;
        }
        m32904b(i);
        C1559g0 g0Var = this.f6307r[i];
        if (!this.f6288I || j <= g0Var.m32816c()) {
            i2 = g0Var.m32830a(j, true, true);
            if (i2 == -1) {
            }
        } else {
            i2 = g0Var.m32835a();
        }
        if (i2 == 0) {
            m32902c(i);
        }
        return i2;
    }

    /* renamed from: a */
    public int m32914a(int i, C1531w wVar, C1311d dVar, boolean z) {
        if (m32886s()) {
            return -3;
        }
        m32904b(i);
        int a = this.f6307r[i].m32822a(wVar, dVar, z, this.f6288I, this.f6284E);
        if (a == -3) {
            m32902c(i);
        }
        return a;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: a */
    public long mo32521a() {
        return this.f6281B == 0 ? Long.MIN_VALUE : mo32515b();
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    public long mo32519a(long j, C1244l0 l0Var) {
        AbstractC1358o oVar = m32894k().f6332a;
        if (!oVar.mo33119b()) {
            return 0L;
        }
        AbstractC1358o.C1359a b = oVar.mo33118b(j);
        return C1167d0.m34489a(j, l0Var, b.f5356a.f5361a, b.f5357b.f5361a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2, types: [long] */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r24v4 */
    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    public long mo32516a(AbstractC1668i[] iVarArr, boolean[] zArr, AbstractC1563h0[] h0VarArr, boolean[] zArr2, long j) {
        long j2;
        C1548d k = m32894k();
        TrackGroupArray trackGroupArray = k.f6333b;
        boolean[] zArr3 = k.f6335d;
        int i = this.f6281B;
        int i2 = 0;
        for (int i3 = 0; i3 < iVarArr.length; i3++) {
            if (h0VarArr[i3] != null && (iVarArr[i3] == null || !zArr[i3])) {
                int i4 = ((C1549e) h0VarArr[i3]).f6337a;
                C1160a.m34518b(zArr3[i4]);
                this.f6281B--;
                zArr3[i4] = false;
                h0VarArr[i3] = null;
            }
        }
        boolean z = !this.f6314y ? j != 0 : i == 0;
        for (int i5 = 0; i5 < iVarArr.length; i5++) {
            z = z;
            if (h0VarArr[i5] == null) {
                z = z;
                if (iVarArr[i5] != null) {
                    AbstractC1668i iVar = iVarArr[i5];
                    C1160a.m34518b(iVar.length() == 1);
                    C1160a.m34518b(iVar.mo32418b(0) == 0);
                    int a = trackGroupArray.m37989a(iVar.mo32425a());
                    C1160a.m34518b(!zArr3[a]);
                    this.f6281B++;
                    zArr3[a] = true;
                    h0VarArr[i5] = new C1549e(a);
                    zArr2[i5] = true;
                    z = z;
                    if (!z) {
                        C1559g0 g0Var = this.f6307r[a];
                        g0Var.m32806k();
                        z = g0Var.m32830a(j, true, true) == -1 && g0Var.m32813d() != 0;
                    }
                }
            }
        }
        if (this.f6281B == 0) {
            this.f6286G = false;
            this.f6315z = false;
            if (!this.f6298i.m37913b()) {
                C1559g0[] g0VarArr = this.f6307r;
                int length = g0VarArr.length;
                while (true) {
                    j2 = j;
                    if (i2 >= length) {
                        break;
                    }
                    g0VarArr[i2].m32807j();
                    i2++;
                }
            } else {
                for (C1559g0 g0Var2 : this.f6307r) {
                    g0Var2.m32820b();
                }
                this.f6298i.m37921a();
                j2 = j;
            }
        } else {
            j2 = j;
            if (z) {
                j2 = mo32513c(j);
                for (int i6 = 0; i6 < h0VarArr.length; i6++) {
                    if (h0VarArr[i6] != null) {
                        zArr2[i6] = true;
                    }
                }
            }
        }
        this.f6314y = true;
        return j2;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Loader.C0349c mo32573a(C1545a aVar, long j, long j2, IOException iOException, int i) {
        Loader.C0349c cVar;
        m32913a(aVar);
        long a = this.f6292c.mo32336a(this.f6313x, j2, iOException, i);
        if (a == -9223372036854775807L) {
            cVar = Loader.f1986e;
        } else {
            int i2 = m32896i();
            cVar = m32912a(aVar, i2) ? Loader.m37914a(i2 > this.f6287H, a) : Loader.f1985d;
        }
        this.f6293d.m32938a(aVar.f6325j, aVar.f6317b.m32325b(), aVar.f6317b.m32324c(), 1, -1, null, 0, null, aVar.f6324i, this.f6282C, j, j2, aVar.f6317b.m32327a(), iOException, !cVar.m37909a());
        return cVar;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1352i
    /* renamed from: a */
    public AbstractC1362q mo32666a(int i, int i2) {
        return m32908a(new C1550f(i, false));
    }

    /* renamed from: a */
    public final AbstractC1362q m32908a(C1550f fVar) {
        int length = this.f6307r.length;
        for (int i = 0; i < length; i++) {
            if (fVar.equals(this.f6308s[i])) {
                return this.f6307r[i];
            }
        }
        C1559g0 g0Var = new C1559g0(this.f6295f);
        g0Var.m32823a(this);
        int i2 = length + 1;
        C1550f[] fVarArr = (C1550f[]) Arrays.copyOf(this.f6308s, i2);
        fVarArr[length] = fVar;
        C1167d0.m34463a((Object[]) fVarArr);
        this.f6308s = fVarArr;
        C1559g0[] g0VarArr = (C1559g0[]) Arrays.copyOf(this.f6307r, i2);
        g0VarArr[length] = g0Var;
        C1167d0.m34463a((Object[]) g0VarArr);
        this.f6307r = g0VarArr;
        return g0Var;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    public void mo32518a(long j, boolean z) {
        if (!m32892m()) {
            boolean[] zArr = m32894k().f6335d;
            int length = this.f6307r.length;
            for (int i = 0; i < length; i++) {
                this.f6307r[i].m32817b(j, z, zArr[i]);
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.C1559g0.AbstractC1561b
    /* renamed from: a */
    public void mo32660a(Format format) {
        this.f6303n.post(this.f6301l);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1352i
    /* renamed from: a */
    public void mo32656a(AbstractC1358o oVar) {
        if (this.f6306q != null) {
            oVar = new AbstractC1358o.C1360b(-9223372036854775807L);
        }
        this.f6305p = oVar;
        this.f6303n.post(this.f6301l);
    }

    /* renamed from: a */
    public final void m32913a(C1545a aVar) {
        if (this.f6283D == -1) {
            this.f6283D = aVar.f6326k;
        }
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo32574a(C1545a aVar, long j, long j2) {
        AbstractC1358o oVar;
        if (this.f6282C == -9223372036854775807L && (oVar = this.f6305p) != null) {
            boolean b = oVar.mo33119b();
            long j3 = m32895j();
            long j4 = j3 == Long.MIN_VALUE ? 0L : j3 + 10000;
            this.f6282C = j4;
            this.f6294e.mo32860a(j4, b);
        }
        this.f6293d.m32931b(aVar.f6325j, aVar.f6317b.m32325b(), aVar.f6317b.m32324c(), 1, -1, null, 0, null, aVar.f6324i, this.f6282C, j, j2, aVar.f6317b.m32327a());
        m32913a(aVar);
        this.f6288I = true;
        AbstractC1631p.AbstractC1632a aVar2 = this.f6304o;
        C1160a.m34522a(aVar2);
        aVar2.mo32686a((AbstractC1631p.AbstractC1632a) this);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo32572a(C1545a aVar, long j, long j2, boolean z) {
        this.f6293d.m32939a(aVar.f6325j, aVar.f6317b.m32325b(), aVar.f6317b.m32324c(), 1, -1, null, 0, null, aVar.f6324i, this.f6282C, j, j2, aVar.f6317b.m32327a());
        if (!z) {
            m32913a(aVar);
            for (C1559g0 g0Var : this.f6307r) {
                g0Var.m32807j();
            }
            if (this.f6281B > 0) {
                AbstractC1631p.AbstractC1632a aVar2 = this.f6304o;
                C1160a.m34522a(aVar2);
                aVar2.mo32686a((AbstractC1631p.AbstractC1632a) this);
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    public void mo32517a(AbstractC1631p.AbstractC1632a aVar, long j) {
        this.f6304o = aVar;
        this.f6300k.m34498c();
        m32887r();
    }

    /* renamed from: a */
    public boolean m32916a(int i) {
        return !m32886s() && (this.f6288I || this.f6307r[i].m32810g());
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: a */
    public boolean mo32520a(long j) {
        if (this.f6288I || this.f6286G) {
            return false;
        }
        if (this.f6310u && this.f6281B == 0) {
            return false;
        }
        boolean c = this.f6300k.m34498c();
        if (!this.f6298i.m37913b()) {
            m32887r();
            c = true;
        }
        return c;
    }

    /* renamed from: a */
    public final boolean m32912a(C1545a aVar, int i) {
        AbstractC1358o oVar;
        if (this.f6283D == -1 && ((oVar = this.f6305p) == null || oVar.mo33117c() == -9223372036854775807L)) {
            if (!this.f6310u || m32886s()) {
                this.f6315z = this.f6310u;
                this.f6284E = 0L;
                this.f6287H = 0;
                for (C1559g0 g0Var : this.f6307r) {
                    g0Var.m32807j();
                }
                aVar.m32883a(0L, 0L);
                return true;
            }
            this.f6286G = true;
            return false;
        }
        this.f6287H = i;
        return true;
    }

    /* renamed from: a */
    public final boolean m32905a(boolean[] zArr, long j) {
        int length = this.f6307r.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= length) {
                return true;
            }
            C1559g0 g0Var = this.f6307r[i];
            g0Var.m32806k();
            if (g0Var.m32830a(j, true, false) == -1) {
                z = false;
            }
            if (!z && (zArr[i] || !this.f6312w)) {
                return false;
            }
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 5 */
    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo32515b() {
        /*
            r5 = this;
            r0 = r5
            b.s.b.a.w0.d0$d r0 = r0.m32894k()
            boolean[] r0 = r0.f6334c
            r6 = r0
            r0 = r5
            boolean r0 = r0.f6288I
            if (r0 == 0) goto L_0x0013
            r0 = -9223372036854775808
            return r0
        L_0x0013:
            r0 = r5
            boolean r0 = r0.m32892m()
            if (r0 == 0) goto L_0x001f
            r0 = r5
            long r0 = r0.f6285F
            return r0
        L_0x001f:
            r0 = r5
            boolean r0 = r0.f6312w
            if (r0 == 0) goto L_0x0070
            r0 = r5
            b.s.b.a.w0.g0[] r0 = r0.f6307r
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
        L_0x0033:
            r0 = r9
            r11 = r0
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0075
            r0 = r9
            r11 = r0
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            if (r0 == 0) goto L_0x0066
            r0 = r9
            r11 = r0
            r0 = r5
            b.s.b.a.w0.g0[] r0 = r0.f6307r
            r1 = r8
            r0 = r0[r1]
            boolean r0 = r0.m32809h()
            if (r0 != 0) goto L_0x0066
            r0 = r9
            r1 = r5
            b.s.b.a.w0.g0[] r1 = r1.f6307r
            r2 = r8
            r1 = r1[r2]
            long r1 = r1.m32816c()
            long r0 = java.lang.Math.min(r0, r1)
            r11 = r0
        L_0x0066:
            int r8 = r8 + 1
            r0 = r11
            r9 = r0
            goto L_0x0033
        L_0x0070:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r11 = r0
        L_0x0075:
            r0 = r11
            r9 = r0
            r0 = r11
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0088
            r0 = r5
            long r0 = r0.m32895j()
            r9 = r0
        L_0x0088:
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x009b
            r0 = r5
            long r0 = r0.f6284E
            r11 = r0
        L_0x009b:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1544d0.mo32515b():long");
    }

    /* renamed from: b */
    public final void m32904b(int i) {
        C1548d k = m32894k();
        boolean[] zArr = k.f6336e;
        if (!zArr[i]) {
            Format a = k.f6333b.m37990a(i).m37992a(0);
            this.f6293d.m32954a(C1178m.m34404f(a.f1562i), a, 0, (Object) null, this.f6284E);
            zArr[i] = true;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: b */
    public void mo32514b(long j) {
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: c */
    public long mo32513c(long j) {
        C1548d k = m32894k();
        AbstractC1358o oVar = k.f6332a;
        boolean[] zArr = k.f6334c;
        if (!oVar.mo33119b()) {
            j = 0;
        }
        this.f6315z = false;
        this.f6284E = j;
        if (m32892m()) {
            this.f6285F = j;
            return j;
        } else if (this.f6313x != 7 && m32905a(zArr, j)) {
            return j;
        } else {
            this.f6286G = false;
            this.f6285F = j;
            this.f6288I = false;
            if (this.f6298i.m37913b()) {
                this.f6298i.m37921a();
            } else {
                for (C1559g0 g0Var : this.f6307r) {
                    g0Var.m32807j();
                }
            }
            return j;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC0352f
    /* renamed from: c */
    public void mo32644c() {
        for (C1559g0 g0Var : this.f6307r) {
            g0Var.m32807j();
        }
        this.f6299j.m32877a();
    }

    /* renamed from: c */
    public final void m32902c(int i) {
        boolean[] zArr = m32894k().f6334c;
        if (this.f6286G && zArr[i] && !this.f6307r[i].m32810g()) {
            this.f6285F = 0L;
            this.f6286G = false;
            this.f6315z = true;
            this.f6284E = 0L;
            this.f6287H = 0;
            for (C1559g0 g0Var : this.f6307r) {
                g0Var.m32807j();
            }
            AbstractC1631p.AbstractC1632a aVar = this.f6304o;
            C1160a.m34522a(aVar);
            aVar.mo32686a((AbstractC1631p.AbstractC1632a) this);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: d */
    public void mo32512d() throws IOException {
        m32889p();
        if (this.f6288I && !this.f6310u) {
            throw new ParserException("Loading finished before preparation is complete.");
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1352i
    /* renamed from: e */
    public void mo32639e() {
        this.f6309t = true;
        this.f6303n.post(this.f6301l);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: f */
    public long mo32511f() {
        if (!this.f6280A) {
            this.f6293d.m32929c();
            this.f6280A = true;
        }
        if (!this.f6315z) {
            return -9223372036854775807L;
        }
        if (!this.f6288I && m32896i() <= this.f6287H) {
            return -9223372036854775807L;
        }
        this.f6315z = false;
        return this.f6284E;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: g */
    public TrackGroupArray mo32510g() {
        return m32894k().f6333b;
    }

    /* renamed from: i */
    public final int m32896i() {
        int i = 0;
        for (C1559g0 g0Var : this.f6307r) {
            i += g0Var.m32811f();
        }
        return i;
    }

    /* renamed from: j */
    public final long m32895j() {
        long j = Long.MIN_VALUE;
        for (C1559g0 g0Var : this.f6307r) {
            j = Math.max(j, g0Var.m32816c());
        }
        return j;
    }

    /* renamed from: k */
    public final C1548d m32894k() {
        C1548d dVar = this.f6311v;
        C1160a.m34522a(dVar);
        return dVar;
    }

    /* renamed from: l */
    public AbstractC1362q m32893l() {
        return m32908a(new C1550f(0, true));
    }

    /* renamed from: m */
    public final boolean m32892m() {
        return this.f6285F != -9223372036854775807L;
    }

    /* renamed from: n */
    public final /* synthetic */ void m32891n() {
        if (!this.f6289J) {
            AbstractC1631p.AbstractC1632a aVar = this.f6304o;
            C1160a.m34522a(aVar);
            aVar.mo32686a((AbstractC1631p.AbstractC1632a) this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d2, code lost:
        if (r9.f6308s[r13].f6340b != false) goto L_0x00d5;
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32897h() {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1544d0.m32897h():void");
    }

    /* renamed from: p */
    public void m32889p() throws IOException {
        this.f6298i.m37920a(this.f6292c.mo32337a(this.f6313x));
    }

    /* renamed from: q */
    public void m32888q() {
        if (this.f6310u) {
            for (C1559g0 g0Var : this.f6307r) {
                g0Var.m32820b();
            }
        }
        this.f6298i.m37918a(this);
        this.f6303n.removeCallbacksAndMessages(null);
        this.f6304o = null;
        this.f6289J = true;
        this.f6293d.m32935b();
    }

    /* renamed from: r */
    public final void m32887r() {
        C1545a aVar = new C1545a(this.f6290a, this.f6291b, this.f6299j, this, this.f6300k);
        if (this.f6310u) {
            AbstractC1358o oVar = m32894k().f6332a;
            C1160a.m34518b(m32892m());
            long j = this.f6282C;
            if (j == -9223372036854775807L || this.f6285F < j) {
                aVar.m32883a(oVar.mo33118b(this.f6285F).f5356a.f5362b, this.f6285F);
                this.f6285F = -9223372036854775807L;
            } else {
                this.f6288I = true;
                this.f6285F = -9223372036854775807L;
                return;
            }
        }
        this.f6287H = m32896i();
        this.f6293d.m32941a(aVar.f6325j, 1, -1, (Format) null, 0, (Object) null, aVar.f6324i, this.f6282C, this.f6298i.m37919a(aVar, this, this.f6292c.mo32337a(this.f6313x)));
    }

    /* renamed from: s */
    public final boolean m32886s() {
        return this.f6315z || m32892m();
    }
}
