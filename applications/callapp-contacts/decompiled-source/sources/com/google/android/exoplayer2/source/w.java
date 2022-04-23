package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.ai;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.u;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.k;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.source.s;
import com.google.android.exoplayer2.source.z;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.upstream.j;
import com.google.android.exoplayer2.upstream.r;
import com.google.android.exoplayer2.upstream.t;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.f;
import com.google.android.exoplayer2.util.q;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w.class */
public final class w implements j, p, z.b, Loader.a<a>, Loader.e {
    private static final Map<String, String> i;
    private static final Format j;
    private boolean A;
    private boolean B;
    private e C;
    private v D;
    private boolean F;
    private boolean H;
    private boolean I;
    private int J;
    private long L;
    private boolean N;
    private int O;

    /* renamed from: d  reason: collision with root package name */
    p.a f21658d;
    boolean f;
    boolean g;
    boolean h;
    private final Uri k;
    private final h l;
    private final com.google.android.exoplayer2.drm.d m;
    private final r n;
    private final s.a o;
    private final c.a p;
    private final b q;
    private final com.google.android.exoplayer2.upstream.b r;
    private final String s;
    private final long t;
    private final v u;
    private IcyHeaders y;

    /* renamed from: b  reason: collision with root package name */
    final Loader f21656b = new Loader("Loader:ProgressiveMediaPeriod");
    private final f v = new f();
    private final Runnable w = new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$w$saaAER9CJxOgekRGyfbRza_5_pU
        @Override // java.lang.Runnable
        public final void run() {
            w.this.m();
        }
    };
    private final Runnable x = new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$w$WIrxI_byJgILmexE5Md8pnuiPgo
        @Override // java.lang.Runnable
        public final void run() {
            w.this.s();
        }
    };

    /* renamed from: c  reason: collision with root package name */
    final Handler f21657c = af.a();
    private d[] z = new d[0];
    z[] e = new z[0];
    private long M = -9223372036854775807L;
    private long K = -1;
    private long E = -9223372036854775807L;
    private int G = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w$a.class */
    public final class a implements k.a, Loader.d {

        /* renamed from: b  reason: collision with root package name */
        final t f21660b;

        /* renamed from: c  reason: collision with root package name */
        long f21661c;
        private final Uri g;
        private final v h;
        private final j i;
        private final f j;
        private volatile boolean l;
        private x n;
        private boolean o;
        private final u k = new u();
        private boolean m = true;
        long e = -1;

        /* renamed from: a  reason: collision with root package name */
        final long f21659a = l.a();

        /* renamed from: d  reason: collision with root package name */
        com.google.android.exoplayer2.upstream.j f21662d = a(0);

        public a(Uri uri, h hVar, v vVar, j jVar, f fVar) {
            this.g = uri;
            this.f21660b = new t(hVar);
            this.h = vVar;
            this.i = jVar;
            this.j = fVar;
        }

        private com.google.android.exoplayer2.upstream.j a(long j) {
            j.a aVar = new j.a();
            aVar.f22208a = this.g;
            aVar.f = j;
            aVar.h = w.this.s;
            aVar.i = 6;
            aVar.e = w.i;
            return aVar.a();
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.d
        public final void a() {
            this.l = true;
        }

        final void a(long j, long j2) {
            this.k.f21328a = j;
            this.f21661c = j2;
            this.m = true;
            this.o = false;
        }

        @Override // com.google.android.exoplayer2.source.k.a
        public final void a(com.google.android.exoplayer2.util.u uVar) {
            long max = !this.o ? this.f21661c : Math.max(w.this.p(), this.f21661c);
            int a2 = uVar.a();
            x xVar = (x) com.google.android.exoplayer2.util.a.b(this.n);
            xVar.b(uVar, a2);
            xVar.a(max, 1, a2, 0, null);
            this.o = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v124, types: [com.google.android.exoplayer2.source.v] */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v46, types: [com.google.android.exoplayer2.source.v] */
        /* JADX WARN: Type inference failed for: r10v0, types: [com.google.android.exoplayer2.source.k$a, com.google.android.exoplayer2.source.w$a] */
        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3, types: [long] */
        /* JADX WARN: Type inference failed for: r13v5 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.exoplayer2.upstream.Loader.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void b() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 609
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.w.a.b():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w$b.class */
    public interface b {
        void a(long j, boolean z, boolean z2);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w$c.class */
    final class c implements aa {

        /* renamed from: a  reason: collision with root package name */
        final int f21663a;

        public c(int i) {
            this.f21663a = i;
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final int a(long j) {
            w wVar = w.this;
            int i = this.f21663a;
            if (wVar.i()) {
                return 0;
            }
            wVar.a(i);
            z zVar = wVar.e[i];
            int b2 = zVar.b(j, wVar.g);
            zVar.a(b2);
            if (b2 == 0) {
                wVar.b(i);
            }
            return b2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0130, code lost:
            if (r0.length < r21) goto L_0x0133;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x014e, code lost:
            if (r0.length < r21) goto L_0x0151;
         */
        @Override // com.google.android.exoplayer2.source.aa
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int a(com.google.android.exoplayer2.q r9, com.google.android.exoplayer2.decoder.DecoderInputBuffer r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 957
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.w.c.a(com.google.android.exoplayer2.q, com.google.android.exoplayer2.decoder.DecoderInputBuffer, boolean):int");
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final boolean a() {
            w wVar = w.this;
            return !wVar.i() && wVar.e[this.f21663a].b(wVar.g);
        }

        @Override // com.google.android.exoplayer2.source.aa
        public final void b() throws IOException {
            w wVar = w.this;
            z zVar = wVar.e[this.f21663a];
            if (zVar.f21691d == null || zVar.f21691d.c() != 1) {
                wVar.h();
                return;
            }
            throw ((DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.b(zVar.f21691d.e()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f21665a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f21666b;

        public d(int i, boolean z) {
            this.f21665a = i;
            this.f21666b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f21665a == dVar.f21665a && this.f21666b == dVar.f21666b;
        }

        public final int hashCode() {
            return (this.f21665a * 31) + (this.f21666b ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/w$e.class */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final TrackGroupArray f21667a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean[] f21668b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean[] f21669c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean[] f21670d;

        public e(TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f21667a = trackGroupArray;
            this.f21668b = zArr;
            this.f21669c = new boolean[trackGroupArray.length];
            this.f21670d = new boolean[trackGroupArray.length];
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        i = Collections.unmodifiableMap(hashMap);
        Format.a aVar = new Format.a();
        aVar.f20603a = "icy";
        aVar.k = "application/x-icy";
        j = aVar.a();
    }

    public w(Uri uri, h hVar, l lVar, com.google.android.exoplayer2.drm.d dVar, c.a aVar, r rVar, s.a aVar2, b bVar, com.google.android.exoplayer2.upstream.b bVar2, String str, int i2) {
        this.k = uri;
        this.l = hVar;
        this.m = dVar;
        this.p = aVar;
        this.n = rVar;
        this.o = aVar2;
        this.q = bVar;
        this.r = bVar2;
        this.s = str;
        this.t = i2;
        this.u = new com.google.android.exoplayer2.source.b(lVar);
    }

    private void a(a aVar) {
        if (this.K == -1) {
            this.K = aVar.e;
        }
    }

    private boolean a(boolean[] zArr, long j2) {
        int length = this.e.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (!this.e[i2].a(j2, false) && (zArr[i2] || !this.B)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(v vVar) {
        this.D = this.y == null ? vVar : new v.b(-9223372036854775807L);
        this.E = vVar.b();
        int i2 = 1;
        boolean z = this.K == -1 && vVar.b() == -9223372036854775807L;
        this.F = z;
        if (z) {
            i2 = 7;
        }
        this.G = i2;
        this.q.a(this.E, vVar.a(), this.F);
        if (!this.f) {
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c4, code lost:
        if (r11.z[r14].f21666b != false) goto L_0x00c7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m() {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.w.m():void");
    }

    private void n() {
        a aVar = new a(this.k, this.l, this.u, this, this.v);
        if (this.f) {
            com.google.android.exoplayer2.util.a.b(q());
            long j2 = this.E;
            if (j2 == -9223372036854775807L || this.M <= j2) {
                aVar.a(((v) com.google.android.exoplayer2.util.a.b(this.D)).a(this.M).f21329a.f21335c, this.M);
                for (z zVar : this.e) {
                    zVar.g = this.M;
                }
                this.M = -9223372036854775807L;
            } else {
                this.g = true;
                this.M = -9223372036854775807L;
                return;
            }
        }
        this.O = o();
        this.o.a(new l(aVar.f21659a, aVar.f21662d, this.f21656b.a(aVar, this, this.n.a(this.G))), (Format) null, aVar.f21661c, this.E);
    }

    private int o() {
        int i2 = 0;
        for (z zVar : this.e) {
            i2 += zVar.a();
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long p() {
        long j2 = Long.MIN_VALUE;
        for (z zVar : this.e) {
            j2 = Math.max(j2, zVar.c());
        }
        return j2;
    }

    private boolean q() {
        return this.M != -9223372036854775807L;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private void r() {
        com.google.android.exoplayer2.util.a.b(this.f);
        com.google.android.exoplayer2.util.a.b(this.C);
        com.google.android.exoplayer2.util.a.b(this.D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        if (!this.h) {
            ((p.a) com.google.android.exoplayer2.util.a.b(this.f21658d)).a((p.a) this);
        }
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void D_() throws IOException {
        h();
        if (this.g && !this.f) {
            throw new ParserException("Loading finished before preparation is complete.");
        }
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long a(long j2, ai aiVar) {
        r();
        if (!this.D.a()) {
            return 0L;
        }
        v.a a2 = this.D.a(j2);
        long j3 = a2.f21329a.f21334b;
        long j4 = a2.f21330b.f21334b;
        if (aiVar.f == 0 && aiVar.g == 0) {
            return j2;
        }
        long b2 = af.b(j2, aiVar.f);
        long a3 = af.a(j2, aiVar.g);
        boolean z = true;
        boolean z2 = b2 <= j3 && j3 <= a3;
        if (b2 > j4 || j4 > a3) {
            z = false;
        }
        return (!z2 || !z) ? z2 ? j3 : z ? j4 : b2 : Math.abs(j3 - j2) <= Math.abs(j4 - j2) ? j3 : j4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2, types: [long] */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    @Override // com.google.android.exoplayer2.source.p
    public final long a(com.google.android.exoplayer2.trackselection.c[] cVarArr, boolean[] zArr, aa[] aaVarArr, boolean[] zArr2, long j2) {
        long j3;
        r();
        TrackGroupArray trackGroupArray = this.C.f21667a;
        boolean[] zArr3 = this.C.f21669c;
        int i2 = this.J;
        for (int i3 = 0; i3 < cVarArr.length; i3++) {
            if (aaVarArr[i3] != null && (cVarArr[i3] == null || !zArr[i3])) {
                int i4 = ((c) aaVarArr[i3]).f21663a;
                com.google.android.exoplayer2.util.a.b(zArr3[i4]);
                this.J--;
                zArr3[i4] = false;
                aaVarArr[i3] = null;
            }
        }
        boolean z = !this.H ? j2 != 0 : i2 == 0;
        for (int i5 = 0; i5 < cVarArr.length; i5++) {
            z = z;
            if (aaVarArr[i5] == null) {
                z = z;
                if (cVarArr[i5] != null) {
                    com.google.android.exoplayer2.trackselection.c cVar = cVarArr[i5];
                    com.google.android.exoplayer2.util.a.b(cVar.e() == 1);
                    com.google.android.exoplayer2.util.a.b(cVar.b(0) == 0);
                    int indexOf = trackGroupArray.indexOf(cVar.d());
                    com.google.android.exoplayer2.util.a.b(!zArr3[indexOf]);
                    this.J++;
                    zArr3[indexOf] = true;
                    aaVarArr[i5] = new c(indexOf);
                    zArr2[i5] = true;
                    z = z;
                    if (!z) {
                        z zVar = this.e[indexOf];
                        z = !zVar.a(j2, true) && zVar.e + zVar.f != 0;
                    }
                }
            }
        }
        if (this.J == 0) {
            this.N = false;
            this.I = false;
            if (!this.f21656b.b()) {
                z[] zVarArr = this.e;
                int length = zVarArr.length;
                int i6 = 0;
                while (true) {
                    j3 = j2;
                    if (i6 >= length) {
                        break;
                    }
                    zVarArr[i6].a(false);
                    i6++;
                }
            } else {
                for (z zVar2 : this.e) {
                    zVar2.e();
                }
                this.f21656b.c();
                j3 = j2;
            }
        } else {
            j3 = j2;
            if (z) {
                j3 = b(j2);
                for (int i7 = 0; i7 < aaVarArr.length; i7++) {
                    if (aaVarArr[i7] != null) {
                        zArr2[i7] = true;
                    }
                }
            }
        }
        this.H = true;
        return j3;
    }

    @Override // com.google.android.exoplayer2.extractor.j
    public final x a(int i2, int i3) {
        return a(new d(i2, false));
    }

    final x a(d dVar) {
        int length = this.e.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (dVar.equals(this.z[i2])) {
                return this.e[i2];
            }
        }
        z a2 = z.a(this.r, this.f21657c.getLooper(), this.m, this.p);
        a2.f21690c = this;
        int i3 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.z, i3);
        dVarArr[length] = dVar;
        this.z = (d[]) af.a((Object[]) dVarArr);
        z[] zVarArr = (z[]) Arrays.copyOf(this.e, i3);
        zVarArr[length] = a2;
        this.e = (z[]) af.a((Object[]) zVarArr);
        return a2;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0125  */
    @Override // com.google.android.exoplayer2.upstream.Loader.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.exoplayer2.upstream.Loader.b a(com.google.android.exoplayer2.source.w.a r15, long r16, long r18, java.io.IOException r20, int r21) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.w.a(com.google.android.exoplayer2.upstream.Loader$d, long, long, java.io.IOException, int):com.google.android.exoplayer2.upstream.Loader$b");
    }

    @Override // com.google.android.exoplayer2.extractor.j
    public final void a() {
        this.A = true;
        this.f21657c.post(this.w);
    }

    final void a(int i2) {
        r();
        boolean[] zArr = this.C.f21670d;
        if (!zArr[i2]) {
            Format format = this.C.f21667a.get(i2).getFormat(0);
            this.o.a(q.g(format.sampleMimeType), format, this.L);
            zArr[i2] = true;
        }
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final void a(long j2) {
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void a(long j2, boolean z) {
        r();
        if (!q()) {
            boolean[] zArr = this.C.f21669c;
            int length = this.e.length;
            for (int i2 = 0; i2 < length; i2++) {
                z zVar = this.e[i2];
                zVar.f21688a.a(zVar.a(j2, z, zArr[i2]));
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.j
    public final void a(final v vVar) {
        this.f21657c.post(new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$w$t_jh5hIYzbJhIp5SzJm_kc8J_es
            @Override // java.lang.Runnable
            public final void run() {
                w.this.b(vVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void a(p.a aVar, long j2) {
        this.f21658d = aVar;
        this.v.a();
        n();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public final /* synthetic */ void a(a aVar, long j2, long j3) {
        v vVar;
        a aVar2 = aVar;
        if (this.E == -9223372036854775807L && (vVar = this.D) != null) {
            boolean a2 = vVar.a();
            long p = p();
            long j4 = p == Long.MIN_VALUE ? 0L : p + 10000;
            this.E = j4;
            this.q.a(j4, a2, this.F);
        }
        t tVar = aVar2.f21660b;
        this.o.b(new l(aVar2.f21659a, aVar2.f21662d, tVar.f22252b, tVar.f22253c, j2, j3, tVar.f22251a), null, aVar2.f21661c, this.E);
        a(aVar2);
        this.g = true;
        ((p.a) com.google.android.exoplayer2.util.a.b(this.f21658d)).a((p.a) this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public final /* synthetic */ void a(a aVar, long j2, long j3, boolean z) {
        a aVar2 = aVar;
        t tVar = aVar2.f21660b;
        this.o.a(new l(aVar2.f21659a, aVar2.f21662d, tVar.f22252b, tVar.f22253c, j2, j3, tVar.f22251a), aVar2.f21661c, this.E);
        if (!z) {
            a(aVar2);
            for (z zVar : this.e) {
                zVar.a(false);
            }
            if (this.J > 0) {
                ((p.a) com.google.android.exoplayer2.util.a.b(this.f21658d)).a((p.a) this);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long b(long j2) {
        r();
        boolean[] zArr = this.C.f21668b;
        if (!this.D.a()) {
            j2 = 0;
        }
        this.I = false;
        this.L = j2;
        if (q()) {
            this.M = j2;
            return j2;
        } else if (this.G != 7 && a(zArr, j2)) {
            return j2;
        } else {
            this.N = false;
            this.M = j2;
            this.g = false;
            if (this.f21656b.b()) {
                for (z zVar : this.e) {
                    zVar.e();
                }
                this.f21656b.c();
            } else {
                this.f21656b.e = null;
                for (z zVar2 : this.e) {
                    zVar2.a(false);
                }
            }
            return j2;
        }
    }

    @Override // com.google.android.exoplayer2.source.p
    public final TrackGroupArray b() {
        r();
        return this.C.f21667a;
    }

    final void b(int i2) {
        r();
        boolean[] zArr = this.C.f21668b;
        if (this.N && zArr[i2] && !this.e[i2].b(false)) {
            this.M = 0L;
            this.N = false;
            this.I = true;
            this.L = 0L;
            this.O = 0;
            for (z zVar : this.e) {
                zVar.a(false);
            }
            ((p.a) com.google.android.exoplayer2.util.a.b(this.f21658d)).a((p.a) this);
        }
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long c() {
        if (!this.I) {
            return -9223372036854775807L;
        }
        if (!this.g && o() <= this.O) {
            return -9223372036854775807L;
        }
        this.I = false;
        return this.L;
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final boolean c(long j2) {
        if (this.g || this.f21656b.a() || this.N) {
            return false;
        }
        if (this.f && this.J == 0) {
            return false;
        }
        boolean a2 = this.v.a();
        if (!this.f21656b.b()) {
            n();
            a2 = true;
        }
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32 */
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
    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long d() {
        /*
            r5 = this;
            r0 = r5
            r0.r()
            r0 = r5
            com.google.android.exoplayer2.source.w$e r0 = r0.C
            boolean[] r0 = r0.f21668b
            r6 = r0
            r0 = r5
            boolean r0 = r0.g
            if (r0 == 0) goto L_0x0017
            r0 = -9223372036854775808
            return r0
        L_0x0017:
            r0 = r5
            boolean r0 = r0.q()
            if (r0 == 0) goto L_0x0023
            r0 = r5
            long r0 = r0.M
            return r0
        L_0x0023:
            r0 = r5
            boolean r0 = r0.B
            if (r0 == 0) goto L_0x0074
            r0 = r5
            com.google.android.exoplayer2.source.z[] r0 = r0.e
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
        L_0x0037:
            r0 = r9
            r11 = r0
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0079
            r0 = r9
            r11 = r0
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            if (r0 == 0) goto L_0x006a
            r0 = r9
            r11 = r0
            r0 = r5
            com.google.android.exoplayer2.source.z[] r0 = r0.e
            r1 = r8
            r0 = r0[r1]
            boolean r0 = r0.d()
            if (r0 != 0) goto L_0x006a
            r0 = r9
            r1 = r5
            com.google.android.exoplayer2.source.z[] r1 = r1.e
            r2 = r8
            r1 = r1[r2]
            long r1 = r1.c()
            long r0 = java.lang.Math.min(r0, r1)
            r11 = r0
        L_0x006a:
            int r8 = r8 + 1
            r0 = r11
            r9 = r0
            goto L_0x0037
        L_0x0074:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r11 = r0
        L_0x0079:
            r0 = r11
            r9 = r0
            r0 = r11
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x008c
            r0 = r5
            long r0 = r0.p()
            r9 = r0
        L_0x008c:
            r0 = r9
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x009a
            r0 = r5
            long r0 = r0.L
            return r0
        L_0x009a:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.w.d():long");
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final long e() {
        if (this.J == 0) {
            return Long.MIN_VALUE;
        }
        return d();
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final boolean f() {
        return this.f21656b.b() && this.v.d();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.e
    public final void g() {
        z[] zVarArr;
        for (z zVar : this.e) {
            zVar.a(true);
            zVar.f();
        }
        this.u.a();
    }

    final void h() throws IOException {
        this.f21656b.a(this.n.a(this.G));
    }

    final boolean i() {
        return this.I || q();
    }

    @Override // com.google.android.exoplayer2.source.z.b
    public final void j() {
        this.f21657c.post(this.w);
    }
}
