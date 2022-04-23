package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import android.os.Handler;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.aj;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.n;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.metadata.icy.IcyHeaders;
import androidx.media2.exoplayer.external.source.ak;
import androidx.media2.exoplayer.external.source.p;
import androidx.media2.exoplayer.external.source.s;
import androidx.media2.exoplayer.external.source.u;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.upstream.h;
import androidx.media2.exoplayer.external.upstream.t;
import androidx.media2.exoplayer.external.upstream.v;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.m;
import androidx.media2.exoplayer.external.x;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af.class */
public final class af implements i, ak.b, s, Loader.a<a>, Loader.e {
    private static final Format v = Format.createSampleFormat("icy", "application/x-icy", Long.MAX_VALUE);
    private final androidx.media2.exoplayer.external.upstream.b A;
    private final String B;
    private final long C;
    private final b D;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private boolean L;
    private int M;

    /* renamed from: a  reason: collision with root package name */
    final u.a f3543a;

    /* renamed from: b  reason: collision with root package name */
    final c f3544b;
    s.a f;
    o g;
    IcyHeaders h;
    boolean l;
    boolean m;
    d n;
    boolean o;
    long s;
    boolean t;
    boolean u;
    private final Uri w;
    private final androidx.media2.exoplayer.external.upstream.f x;
    private final k<?> y;
    private final t z;

    /* renamed from: c  reason: collision with root package name */
    final Loader f3545c = new Loader("Loader:ProgressiveMediaPeriod");

    /* renamed from: d  reason: collision with root package name */
    final androidx.media2.exoplayer.external.util.e f3546d = new androidx.media2.exoplayer.external.util.e();
    private final Runnable E = new Runnable(this) { // from class: androidx.media2.exoplayer.external.source.ag

        /* renamed from: a  reason: collision with root package name */
        private final af f3561a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f3561a = this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00e2, code lost:
            if (r0.k[r14].f3560b != false) goto L_0x00e5;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 454
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ag.run():void");
        }
    };
    private final Runnable F = new Runnable(this) { // from class: androidx.media2.exoplayer.external.source.ah

        /* renamed from: a  reason: collision with root package name */
        private final af f3562a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f3562a = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            af afVar = this.f3562a;
            if (!afVar.u) {
                ((s.a) a.a(afVar.f)).a((s.a) afVar);
            }
        }
    };
    final Handler e = new Handler();
    f[] k = new f[0];
    ak[] i = new ak[0];
    j[] j = new j[0];
    private long K = -9223372036854775807L;
    long r = -1;
    long q = -9223372036854775807L;
    int p = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$a.class */
    public final class a implements p.a, Loader.d {

        /* renamed from: a  reason: collision with root package name */
        final v f3547a;

        /* renamed from: b  reason: collision with root package name */
        long f3548b;
        private final Uri f;
        private final b g;
        private final i h;
        private final androidx.media2.exoplayer.external.util.e i;
        private volatile boolean k;
        private q m;
        private boolean n;
        private final n j = new n();
        private boolean l = true;

        /* renamed from: d  reason: collision with root package name */
        long f3550d = -1;

        /* renamed from: c  reason: collision with root package name */
        h f3549c = a(0);

        public a(Uri uri, androidx.media2.exoplayer.external.upstream.f fVar, b bVar, i iVar, androidx.media2.exoplayer.external.util.e eVar) {
            this.f = uri;
            this.f3547a = new v(fVar);
            this.g = bVar;
            this.h = iVar;
            this.i = eVar;
        }

        private h a(long j) {
            return new h(this.f, j, -1L, af.this.B, 22);
        }

        @Override // androidx.media2.exoplayer.external.upstream.Loader.d
        public final void a() {
            this.k = true;
        }

        final void a(long j, long j2) {
            this.j.f3386a = j;
            this.f3548b = j2;
            this.l = true;
            this.n = false;
        }

        @Override // androidx.media2.exoplayer.external.source.p.a
        public final void a(androidx.media2.exoplayer.external.util.p pVar) {
            long max = !this.n ? this.f3548b : Math.max(af.this.n(), this.f3548b);
            int b2 = pVar.b();
            q qVar = (q) androidx.media2.exoplayer.external.util.a.a(this.m);
            qVar.a(pVar, b2);
            qVar.a(max, 1, b2, 0, null);
            this.n = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14, types: [long] */
        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r13v6 */
        /* JADX WARN: Type inference failed for: r7v0, types: [androidx.media2.exoplayer.external.source.af$a, androidx.media2.exoplayer.external.source.p$a] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.media2.exoplayer.external.upstream.Loader.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void b() throws java.io.IOException, java.lang.InterruptedException {
            /*
                Method dump skipped, instructions count: 497
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.af.a.b():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        g f3551a;

        /* renamed from: b  reason: collision with root package name */
        private final g[] f3552b;

        public b(g[] gVarArr) {
            this.f3552b = gVarArr;
        }

        public final g a(androidx.media2.exoplayer.external.extractor.h hVar, i iVar, Uri uri) throws IOException, InterruptedException {
            g gVar = this.f3551a;
            if (gVar != null) {
                return gVar;
            }
            g[] gVarArr = this.f3552b;
            int i = 0;
            if (gVarArr.length == 1) {
                this.f3551a = gVarArr[0];
            } else {
                int length = gVarArr.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    g gVar2 = gVarArr[i];
                    try {
                    } catch (EOFException e) {
                    } catch (Throwable th) {
                        hVar.a();
                        throw th;
                    }
                    if (gVar2.a(hVar)) {
                        this.f3551a = gVar2;
                        hVar.a();
                        break;
                    }
                    continue;
                    hVar.a();
                    i++;
                }
                if (this.f3551a == null) {
                    String b2 = ac.b(this.f3552b);
                    StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 58);
                    sb.append("None of the available extractors (");
                    sb.append(b2);
                    sb.append(") could read the stream.");
                    throw new UnrecognizedInputFormatException(sb.toString(), uri);
                }
            }
            this.f3551a.a(iVar);
            return this.f3551a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$c.class */
    interface c {
        void a(long j, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final o f3553a;

        /* renamed from: b  reason: collision with root package name */
        public final TrackGroupArray f3554b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean[] f3555c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean[] f3556d;
        public final boolean[] e;

        public d(o oVar, TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f3553a = oVar;
            this.f3554b = trackGroupArray;
            this.f3555c = zArr;
            this.f3556d = new boolean[trackGroupArray.length];
            this.e = new boolean[trackGroupArray.length];
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$e.class */
    final class e implements al {

        /* renamed from: a  reason: collision with root package name */
        final int f3557a;

        public e(int i) {
            this.f3557a = i;
        }

        @Override // androidx.media2.exoplayer.external.source.al
        public final int a(long j) {
            af afVar = af.this;
            int i = this.f3557a;
            int i2 = 0;
            if (afVar.h()) {
                return 0;
            }
            afVar.a(i);
            ak akVar = afVar.i[i];
            if (!afVar.t || j <= akVar.f3578a.e()) {
                int a2 = akVar.a(j, true);
                if (a2 != -1) {
                    i2 = a2;
                }
            } else {
                i2 = akVar.f3578a.h();
            }
            if (i2 == 0) {
                afVar.b(i);
            }
            return i2;
        }

        @Override // androidx.media2.exoplayer.external.source.al
        public final int a(x xVar, androidx.media2.exoplayer.external.b.e eVar, boolean z) {
            af afVar = af.this;
            int i = this.f3557a;
            if (afVar.h()) {
                return -3;
            }
            afVar.a(i);
            int a2 = afVar.j[i].a(xVar, eVar, z, afVar.t, afVar.s);
            if (a2 == -3) {
                afVar.b(i);
            }
            return a2;
        }

        @Override // androidx.media2.exoplayer.external.source.al
        public final boolean a() {
            af afVar = af.this;
            return !afVar.h() && afVar.j[this.f3557a].a(afVar.t);
        }

        @Override // androidx.media2.exoplayer.external.source.al
        public final void b() throws IOException {
            af afVar = af.this;
            afVar.j[this.f3557a].b();
            afVar.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/af$f.class */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f3559a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3560b;

        public f(int i, boolean z) {
            this.f3559a = i;
            this.f3560b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            f fVar = (f) obj;
            return this.f3559a == fVar.f3559a && this.f3560b == fVar.f3560b;
        }

        public final int hashCode() {
            return (this.f3559a * 31) + (this.f3560b ? 1 : 0);
        }
    }

    public af(Uri uri, androidx.media2.exoplayer.external.upstream.f fVar, g[] gVarArr, k<?> kVar, t tVar, u.a aVar, c cVar, androidx.media2.exoplayer.external.upstream.b bVar, String str, int i) {
        this.w = uri;
        this.x = fVar;
        this.y = kVar;
        this.z = tVar;
        this.f3543a = aVar;
        this.f3544b = cVar;
        this.A = bVar;
        this.B = str;
        this.C = i;
        this.D = new b(gVarArr);
        aVar.a();
    }

    private void a(a aVar) {
        if (this.r == -1) {
            this.r = aVar.f3550d;
        }
    }

    private boolean a(boolean[] zArr, long j) {
        int length = this.i.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= length) {
                return true;
            }
            ak akVar = this.i[i];
            akVar.b();
            if (akVar.a(j, false) == -1) {
                z = false;
            }
            if (!z && (zArr[i] || !this.o)) {
                return false;
            }
            i++;
        }
    }

    private d k() {
        return (d) androidx.media2.exoplayer.external.util.a.a(this.n);
    }

    private void l() {
        a aVar = new a(this.w, this.x, this.D, this, this.f3546d);
        if (this.m) {
            o oVar = k().f3553a;
            androidx.media2.exoplayer.external.util.a.b(o());
            long j = this.q;
            if (j == -9223372036854775807L || this.K <= j) {
                aVar.a(oVar.a(this.K).f3387a.f3393c, this.K);
                this.K = -9223372036854775807L;
            } else {
                this.t = true;
                this.K = -9223372036854775807L;
                return;
            }
        }
        this.M = m();
        this.f3543a.a(aVar.f3549c, 1, -1, (Format) null, 0, (Object) null, aVar.f3548b, this.q, this.f3545c.a(aVar, this, this.z.a(this.p)));
    }

    private int m() {
        int i = 0;
        for (ak akVar : this.i) {
            i += akVar.f3578a.a();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long n() {
        long j = Long.MIN_VALUE;
        for (ak akVar : this.i) {
            j = Math.max(j, akVar.f3578a.e());
        }
        return j;
    }

    private boolean o() {
        return this.K != -9223372036854775807L;
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long a(long j, aj ajVar) {
        o oVar = k().f3553a;
        if (!oVar.j_()) {
            return 0L;
        }
        o.a a2 = oVar.a(j);
        return ac.a(j, ajVar, a2.f3387a.f3392b, a2.f3388b.f3392b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2, types: [long] */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    @Override // androidx.media2.exoplayer.external.source.s
    public final long a(androidx.media2.exoplayer.external.trackselection.e[] eVarArr, boolean[] zArr, al[] alVarArr, boolean[] zArr2, long j) {
        long j2;
        d k = k();
        TrackGroupArray trackGroupArray = k.f3554b;
        boolean[] zArr3 = k.f3556d;
        int i = this.J;
        for (int i2 = 0; i2 < eVarArr.length; i2++) {
            if (alVarArr[i2] != null && (eVarArr[i2] == null || !zArr[i2])) {
                int i3 = ((e) alVarArr[i2]).f3557a;
                androidx.media2.exoplayer.external.util.a.b(zArr3[i3]);
                this.J--;
                zArr3[i3] = false;
                alVarArr[i2] = null;
            }
        }
        boolean z = !this.G ? j != 0 : i == 0;
        for (int i4 = 0; i4 < eVarArr.length; i4++) {
            z = z;
            if (alVarArr[i4] == null) {
                z = z;
                if (eVarArr[i4] != null) {
                    androidx.media2.exoplayer.external.trackselection.e eVar = eVarArr[i4];
                    androidx.media2.exoplayer.external.util.a.b(eVar.f() == 1);
                    androidx.media2.exoplayer.external.util.a.b(eVar.b(0) == 0);
                    int indexOf = trackGroupArray.indexOf(eVar.e());
                    androidx.media2.exoplayer.external.util.a.b(!zArr3[indexOf]);
                    this.J++;
                    zArr3[indexOf] = true;
                    alVarArr[i4] = new e(indexOf);
                    zArr2[i4] = true;
                    z = z;
                    if (!z) {
                        ak akVar = this.i[indexOf];
                        akVar.b();
                        z = akVar.a(j, true) == -1 && akVar.f3578a.b() != 0;
                    }
                }
            }
        }
        if (this.J == 0) {
            this.L = false;
            this.H = false;
            if (!this.f3545c.a()) {
                ak[] akVarArr = this.i;
                int length = akVarArr.length;
                int i5 = 0;
                while (true) {
                    j2 = j;
                    if (i5 >= length) {
                        break;
                    }
                    akVarArr[i5].a(false);
                    i5++;
                }
            } else {
                for (ak akVar2 : this.i) {
                    akVar2.c();
                }
                this.f3545c.b();
                j2 = j;
            }
        } else {
            j2 = j;
            if (z) {
                j2 = b(j);
                for (int i6 = 0; i6 < alVarArr.length; i6++) {
                    if (alVarArr[i6] != null) {
                        zArr2[i6] = true;
                    }
                }
            }
        }
        this.G = true;
        return j2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.i
    public final q a(int i, int i2) {
        return a(new f(i, false));
    }

    final q a(f fVar) {
        int length = this.i.length;
        for (int i = 0; i < length; i++) {
            if (fVar.equals(this.k[i])) {
                return this.i[i];
            }
        }
        ak akVar = new ak(this.A);
        akVar.f = this;
        int i2 = length + 1;
        f[] fVarArr = (f[]) Arrays.copyOf(this.k, i2);
        fVarArr[length] = fVar;
        this.k = (f[]) ac.a((Object[]) fVarArr);
        ak[] akVarArr = (ak[]) Arrays.copyOf(this.i, i2);
        akVarArr[length] = akVar;
        this.i = (ak[]) ac.a((Object[]) akVarArr);
        j[] jVarArr = (j[]) Arrays.copyOf(this.j, i2);
        jVarArr[length] = new j(this.i[length], this.y);
        this.j = (j[]) ac.a((Object[]) jVarArr);
        return akVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00da  */
    @Override // androidx.media2.exoplayer.external.upstream.Loader.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ androidx.media2.exoplayer.external.upstream.Loader.b a(androidx.media2.exoplayer.external.source.af.a r24, long r25, long r27, java.io.IOException r29, int r30) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.af.a(androidx.media2.exoplayer.external.upstream.Loader$d, long, long, java.io.IOException, int):androidx.media2.exoplayer.external.upstream.Loader$b");
    }

    @Override // androidx.media2.exoplayer.external.extractor.i
    public final void a() {
        this.l = true;
        this.e.post(this.E);
    }

    final void a(int i) {
        d k = k();
        boolean[] zArr = k.e;
        if (!zArr[i]) {
            Format format = k.f3554b.get(i).getFormat(0);
            this.f3543a.a(m.g(format.sampleMimeType), format, 0, null, this.s);
            zArr[i] = true;
        }
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final void a(long j) {
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void a(long j, boolean z) {
        if (!o()) {
            boolean[] zArr = k().f3556d;
            int length = this.i.length;
            for (int i = 0; i < length; i++) {
                this.i[i].a(j, z, zArr[i]);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.i
    public final void a(o oVar) {
        if (this.h != null) {
            oVar = new o.b(-9223372036854775807L);
        }
        this.g = oVar;
        this.e.post(this.E);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void a(s.a aVar, long j) {
        this.f = aVar;
        this.f3546d.a();
        l();
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.a
    public final /* synthetic */ void a(a aVar, long j, long j2) {
        o oVar;
        a aVar2 = aVar;
        if (this.q == -9223372036854775807L && (oVar = this.g) != null) {
            boolean j_ = oVar.j_();
            long n = n();
            long j3 = n == Long.MIN_VALUE ? 0L : n + 10000;
            this.q = j3;
            this.f3544b.a(j3, j_);
        }
        this.f3543a.a(aVar2.f3549c, aVar2.f3547a.f4109b, aVar2.f3547a.f4110c, 1, -1, null, 0, null, aVar2.f3548b, this.q, j, j2, aVar2.f3547a.f4108a);
        a(aVar2);
        this.t = true;
        ((s.a) androidx.media2.exoplayer.external.util.a.a(this.f)).a((s.a) this);
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.a
    public final /* synthetic */ void a(a aVar, long j, long j2, boolean z) {
        a aVar2 = aVar;
        this.f3543a.b(aVar2.f3549c, aVar2.f3547a.f4109b, aVar2.f3547a.f4110c, 1, -1, null, 0, null, aVar2.f3548b, this.q, j, j2, aVar2.f3547a.f4108a);
        if (!z) {
            a(aVar2);
            for (ak akVar : this.i) {
                akVar.a(false);
            }
            if (this.J > 0) {
                ((s.a) androidx.media2.exoplayer.external.util.a.a(this.f)).a((s.a) this);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long b(long j) {
        d k = k();
        o oVar = k.f3553a;
        boolean[] zArr = k.f3555c;
        if (!oVar.j_()) {
            j = 0;
        }
        this.H = false;
        this.s = j;
        if (o()) {
            this.K = j;
            return j;
        } else if (this.p != 7 && a(zArr, j)) {
            return j;
        } else {
            this.L = false;
            this.K = j;
            this.t = false;
            if (this.f3545c.a()) {
                this.f3545c.b();
            } else {
                for (ak akVar : this.i) {
                    akVar.a(false);
                }
            }
            return j;
        }
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final TrackGroupArray b() {
        return k().f3554b;
    }

    final void b(int i) {
        boolean[] zArr = k().f3555c;
        if (this.L && zArr[i] && !this.i[i].f3578a.c()) {
            this.K = 0L;
            this.L = false;
            this.H = true;
            this.s = 0L;
            this.M = 0;
            for (ak akVar : this.i) {
                akVar.a(false);
            }
            ((s.a) androidx.media2.exoplayer.external.util.a.a(this.f)).a((s.a) this);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long c() {
        if (!this.I) {
            this.f3543a.c();
            this.I = true;
        }
        if (!this.H) {
            return -9223372036854775807L;
        }
        if (!this.t && m() <= this.M) {
            return -9223372036854775807L;
        }
        this.H = false;
        return this.s;
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final boolean c(long j) {
        if (this.t || this.L) {
            return false;
        }
        if (this.m && this.J == 0) {
            return false;
        }
        boolean a2 = this.f3546d.a();
        if (!this.f3545c.a()) {
            l();
            a2 = true;
        }
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long d() {
        /*
            r5 = this;
            r0 = r5
            androidx.media2.exoplayer.external.source.af$d r0 = r0.k()
            boolean[] r0 = r0.f3555c
            r6 = r0
            r0 = r5
            boolean r0 = r0.t
            if (r0 == 0) goto L_0x0013
            r0 = -9223372036854775808
            return r0
        L_0x0013:
            r0 = r5
            boolean r0 = r0.o()
            if (r0 == 0) goto L_0x001f
            r0 = r5
            long r0 = r0.K
            return r0
        L_0x001f:
            r0 = r5
            boolean r0 = r0.o
            if (r0 == 0) goto L_0x0076
            r0 = r5
            androidx.media2.exoplayer.external.source.ak[] r0 = r0.i
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
            if (r0 >= r1) goto L_0x007b
            r0 = r9
            r11 = r0
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            if (r0 == 0) goto L_0x006c
            r0 = r9
            r11 = r0
            r0 = r5
            androidx.media2.exoplayer.external.source.ak[] r0 = r0.i
            r1 = r8
            r0 = r0[r1]
            androidx.media2.exoplayer.external.source.aj r0 = r0.f3578a
            boolean r0 = r0.f()
            if (r0 != 0) goto L_0x006c
            r0 = r9
            r1 = r5
            androidx.media2.exoplayer.external.source.ak[] r1 = r1.i
            r2 = r8
            r1 = r1[r2]
            androidx.media2.exoplayer.external.source.aj r1 = r1.f3578a
            long r1 = r1.e()
            long r0 = java.lang.Math.min(r0, r1)
            r11 = r0
        L_0x006c:
            int r8 = r8 + 1
            r0 = r11
            r9 = r0
            goto L_0x0033
        L_0x0076:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r11 = r0
        L_0x007b:
            r0 = r11
            r9 = r0
            r0 = r11
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x008e
            r0 = r5
            long r0 = r0.n()
            r9 = r0
        L_0x008e:
            r0 = r9
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x009c
            r0 = r5
            long r0 = r0.s
            return r0
        L_0x009c:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.af.d():long");
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final long e() {
        if (this.J == 0) {
            return Long.MIN_VALUE;
        }
        return d();
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.e
    public final void f() {
        for (ak akVar : this.i) {
            akVar.a(false);
        }
        for (j jVar : this.j) {
            jVar.a();
        }
        b bVar = this.D;
        if (bVar.f3551a != null) {
            bVar.f3551a = null;
        }
    }

    final void g() throws IOException {
        this.f3545c.a(this.z.a(this.p));
    }

    final boolean h() {
        return this.H || o();
    }

    @Override // androidx.media2.exoplayer.external.source.ak.b
    public final void i() {
        this.e.post(this.E);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void k_() throws IOException {
        g();
        if (this.t && !this.m) {
            throw new ParserException("Loading finished before preparation is complete.");
        }
    }
}
