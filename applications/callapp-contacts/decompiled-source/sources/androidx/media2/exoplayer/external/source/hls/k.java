package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.os.Handler;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.f;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.PrivFrame;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.ak;
import androidx.media2.exoplayer.external.source.am;
import androidx.media2.exoplayer.external.source.hls.d;
import androidx.media2.exoplayer.external.source.j;
import androidx.media2.exoplayer.external.source.u;
import androidx.media2.exoplayer.external.upstream.Loader;
import androidx.media2.exoplayer.external.upstream.t;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.m;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/k.class */
public final class k implements i, ak.b, am, Loader.a<androidx.media2.exoplayer.external.source.a.b>, Loader.e {
    private final androidx.media2.exoplayer.external.upstream.b A;
    private final Format B;
    private final androidx.media2.exoplayer.external.drm.k<?> C;
    private final t D;
    private final Map<String, DrmInitData> H;
    private boolean J;
    private boolean L;
    private int N;
    private Set<TrackGroup> O;
    private boolean P;
    private long R;
    private boolean S;
    private long T;
    private int U;

    /* renamed from: a  reason: collision with root package name */
    final int f3669a;

    /* renamed from: b  reason: collision with root package name */
    final d f3670b;

    /* renamed from: d  reason: collision with root package name */
    final u.a f3672d;
    final ArrayList<h> e;
    final List<h> f;
    int k;
    boolean l;
    boolean m;
    int n;
    Format o;
    Format p;
    boolean q;
    TrackGroupArray r;
    int[] s;
    int t;
    long v;
    boolean w;
    boolean x;
    boolean y;
    private final a z;

    /* renamed from: c  reason: collision with root package name */
    final Loader f3671c = new Loader("Loader:HlsSampleStreamWrapper");
    private final d.c E = new d.c();
    private int[] I = new int[0];
    private int K = -1;
    private int M = -1;
    ak[] i = new ak[0];
    j[] j = new j[0];
    private boolean[] Q = new boolean[0];
    boolean[] u = new boolean[0];
    final ArrayList<j> h = new ArrayList<>();
    private final Runnable F = new Runnable(this) { // from class: androidx.media2.exoplayer.external.source.hls.l

        /* renamed from: a  reason: collision with root package name */
        private final k f3673a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f3673a = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f3673a.h();
        }
    };
    private final Runnable G = new Runnable(this) { // from class: androidx.media2.exoplayer.external.source.hls.m

        /* renamed from: a  reason: collision with root package name */
        private final k f3674a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f3674a = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            k kVar = this.f3674a;
            kVar.l = true;
            kVar.h();
        }
    };
    final Handler g = new Handler();

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/k$a.class */
    public interface a extends am.a<k> {
        void a(Uri uri);

        void f();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/k$b.class */
    static final class b extends ak {
        private final Map<String, DrmInitData> g;

        public b(androidx.media2.exoplayer.external.upstream.b bVar, Map<String, DrmInitData> map) {
            super(bVar);
            this.g = map;
        }

        @Override // androidx.media2.exoplayer.external.source.ak, androidx.media2.exoplayer.external.extractor.q
        public final void a(Format format) {
            int i;
            DrmInitData drmInitData = format.drmInitData;
            DrmInitData drmInitData2 = drmInitData;
            if (drmInitData != null) {
                DrmInitData drmInitData3 = this.g.get(drmInitData.schemeType);
                drmInitData2 = drmInitData;
                if (drmInitData3 != null) {
                    drmInitData2 = drmInitData3;
                }
            }
            Metadata metadata = format.metadata;
            if (metadata != null) {
                int length = metadata.length();
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        i = -1;
                        break;
                    }
                    Metadata.Entry entry = metadata.get(i3);
                    if ((entry instanceof PrivFrame) && "com.apple.streaming.transportStreamTimestamp".equals(((PrivFrame) entry).owner)) {
                        i = i3;
                        break;
                    }
                    i3++;
                }
                if (i != -1) {
                    if (length != 1) {
                        Metadata.Entry[] entryArr = new Metadata.Entry[length - 1];
                        while (i2 < length) {
                            if (i2 != i) {
                                entryArr[i2 < i ? i2 : i2 - 1] = metadata.get(i2);
                            }
                            i2++;
                        }
                        metadata = new Metadata(entryArr);
                    }
                }
                super.a(format.copyWithAdjustments(drmInitData2, metadata));
            }
            metadata = null;
            super.a(format.copyWithAdjustments(drmInitData2, metadata));
        }
    }

    public k(int i, a aVar, d dVar, Map<String, DrmInitData> map, androidx.media2.exoplayer.external.upstream.b bVar, long j, Format format, androidx.media2.exoplayer.external.drm.k<?> kVar, t tVar, u.a aVar2) {
        this.f3669a = i;
        this.z = aVar;
        this.f3670b = dVar;
        this.H = map;
        this.A = bVar;
        this.B = format;
        this.C = kVar;
        this.D = tVar;
        this.f3672d = aVar2;
        ArrayList<h> arrayList = new ArrayList<>();
        this.e = arrayList;
        this.f = Collections.unmodifiableList(arrayList);
        this.v = j;
        this.R = j;
    }

    private static Format a(Format format, Format format2, boolean z) {
        if (format == null) {
            return format2;
        }
        int i = z ? format.bitrate : -1;
        int i2 = format.channelCount != -1 ? format.channelCount : format2.channelCount;
        String a2 = ac.a(format.codecs, m.g(format2.sampleMimeType));
        String f = m.f(a2);
        String str = f;
        if (f == null) {
            str = format2.sampleMimeType;
        }
        return format2.copyWithContainerInfo(format.id, format.label, str, a2, format.metadata, i, format.width, format.height, i2, format.selectionFlags, format.language);
    }

    private TrackGroupArray a(TrackGroup[] trackGroupArr) {
        for (int i = 0; i < trackGroupArr.length; i++) {
            TrackGroup trackGroup = trackGroupArr[i];
            Format[] formatArr = new Format[trackGroup.length];
            for (int i2 = 0; i2 < trackGroup.length; i2++) {
                Format format = trackGroup.getFormat(i2);
                Format format2 = format;
                if (format.drmInitData != null) {
                    format2 = format.copyWithExoMediaCryptoType(this.C.b(format.drmInitData));
                }
                formatArr[i2] = format2;
            }
            trackGroupArr[i] = new TrackGroup(formatArr);
        }
        return new TrackGroupArray(trackGroupArr);
    }

    private static int b(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 0 : 1;
        }
        return 3;
    }

    private static f b(int i, int i2) {
        StringBuilder sb = new StringBuilder(54);
        sb.append("Unmapped track with id ");
        sb.append(i);
        sb.append(" of type ");
        sb.append(i2);
        androidx.media2.exoplayer.external.util.j.a("HlsSampleStreamWrapper", sb.toString());
        return new f();
    }

    private boolean d(long j) {
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
            if (!z && (this.Q[i] || !this.P)) {
                return false;
            }
            i++;
        }
    }

    public final int a(int i) {
        int i2 = this.s[i];
        if (i2 == -1) {
            return this.O.contains(this.r.get(i)) ? -3 : -2;
        }
        boolean[] zArr = this.u;
        if (zArr[i2]) {
            return -2;
        }
        zArr[i2] = true;
        return i2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.i
    public final q a(int i, int i2) {
        ak[] akVarArr = this.i;
        int length = akVarArr.length;
        boolean z = false;
        if (i2 == 1) {
            int i3 = this.K;
            if (i3 != -1) {
                if (this.J) {
                    return this.I[i3] == i ? akVarArr[i3] : b(i, i2);
                }
                this.J = true;
                this.I[i3] = i;
                return akVarArr[i3];
            } else if (this.S) {
                return b(i, i2);
            }
        } else if (i2 == 2) {
            int i4 = this.M;
            if (i4 != -1) {
                if (this.L) {
                    return this.I[i4] == i ? akVarArr[i4] : b(i, i2);
                }
                this.L = true;
                this.I[i4] = i;
                return akVarArr[i4];
            } else if (this.S) {
                return b(i, i2);
            }
        } else {
            for (int i5 = 0; i5 < length; i5++) {
                if (this.I[i5] == i) {
                    return this.i[i5];
                }
            }
            if (this.S) {
                return b(i, i2);
            }
        }
        b bVar = new b(this.A, this.H);
        bVar.a(this.T);
        bVar.a(this.U);
        bVar.f = this;
        int i6 = length + 1;
        int[] copyOf = Arrays.copyOf(this.I, i6);
        this.I = copyOf;
        copyOf[length] = i;
        ak[] akVarArr2 = (ak[]) Arrays.copyOf(this.i, i6);
        this.i = akVarArr2;
        akVarArr2[length] = bVar;
        j[] jVarArr = (j[]) Arrays.copyOf(this.j, i6);
        this.j = jVarArr;
        jVarArr[length] = new j(this.i[length], this.C);
        boolean[] copyOf2 = Arrays.copyOf(this.Q, i6);
        this.Q = copyOf2;
        if (i2 == 1 || i2 == 2) {
            z = true;
        }
        copyOf2[length] = z;
        this.P = copyOf2[length] | this.P;
        if (i2 == 1) {
            this.J = true;
            this.K = length;
        } else if (i2 == 2) {
            this.L = true;
            this.M = length;
        }
        if (b(i2) > b(this.N)) {
            this.k = length;
            this.N = i2;
        }
        this.u = Arrays.copyOf(this.u, i6);
        return bVar;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.a
    public final /* synthetic */ Loader.b a(androidx.media2.exoplayer.external.source.a.b bVar, long j, long j2, IOException iOException, int i) {
        boolean z;
        Loader.b bVar2;
        androidx.media2.exoplayer.external.source.a.b bVar3 = bVar;
        long c2 = bVar3.c();
        boolean z2 = bVar3 instanceof h;
        long a2 = this.D.a(iOException);
        boolean z3 = false;
        if (a2 != -9223372036854775807L) {
            d dVar = this.f3670b;
            z = dVar.h.a(dVar.h.c(dVar.f3647b.indexOf(bVar3.f3500c)), a2);
        } else {
            z = false;
        }
        if (z) {
            if (z2 && c2 == 0) {
                ArrayList<h> arrayList = this.e;
                if (arrayList.remove(arrayList.size() - 1) == bVar3) {
                    z3 = true;
                }
                androidx.media2.exoplayer.external.util.a.b(z3);
                if (this.e.isEmpty()) {
                    this.R = this.v;
                }
            }
            bVar2 = Loader.f4033c;
        } else {
            long a3 = this.D.a(iOException, i);
            bVar2 = a3 != -9223372036854775807L ? Loader.a(false, a3) : Loader.f4034d;
        }
        this.f3672d.a(bVar3.f3498a, bVar3.d(), bVar3.e(), bVar3.f3499b, this.f3669a, bVar3.f3500c, bVar3.f3501d, bVar3.e, bVar3.f, bVar3.g, j, j2, c2, iOException, !bVar2.a());
        if (z) {
            if (!this.m) {
                c(this.v);
            } else {
                this.z.a((a) this);
            }
        }
        return bVar2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.i
    public final void a() {
        this.S = true;
        this.g.post(this.G);
    }

    public final void a(int i, boolean z, boolean z2) {
        if (!z2) {
            this.J = false;
            this.L = false;
        }
        this.U = i;
        for (ak akVar : this.i) {
            akVar.a(i);
        }
        if (z) {
            for (ak akVar2 : this.i) {
                akVar2.e = true;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.am
    public final void a(long j) {
    }

    @Override // androidx.media2.exoplayer.external.extractor.i
    public final void a(o oVar) {
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.a
    public final /* synthetic */ void a(androidx.media2.exoplayer.external.source.a.b bVar, long j, long j2) {
        androidx.media2.exoplayer.external.source.a.b bVar2 = bVar;
        d dVar = this.f3670b;
        if (bVar2 instanceof d.a) {
            d.a aVar = (d.a) bVar2;
            dVar.e = aVar.i;
            dVar.f3648c.put(aVar.f3498a.f4064a, aVar.j);
        }
        this.f3672d.a(bVar2.f3498a, bVar2.d(), bVar2.e(), bVar2.f3499b, this.f3669a, bVar2.f3500c, bVar2.f3501d, bVar2.e, bVar2.f, bVar2.g, j, j2, bVar2.c());
        if (!this.m) {
            c(this.v);
        } else {
            this.z.a((a) this);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.a
    public final /* synthetic */ void a(androidx.media2.exoplayer.external.source.a.b bVar, long j, long j2, boolean z) {
        androidx.media2.exoplayer.external.source.a.b bVar2 = bVar;
        this.f3672d.b(bVar2.f3498a, bVar2.d(), bVar2.e(), bVar2.f3499b, this.f3669a, bVar2.f3500c, bVar2.f3501d, bVar2.e, bVar2.f, bVar2.g, j, j2, bVar2.c());
        if (!z) {
            g();
            if (this.n > 0) {
                this.z.a((a) this);
            }
        }
    }

    public final void a(boolean z) {
        this.f3670b.f3649d = z;
    }

    public final void a(TrackGroup[] trackGroupArr, int... iArr) {
        this.m = true;
        this.r = a(trackGroupArr);
        this.O = new HashSet();
        for (int i : iArr) {
            this.O.add(this.r.get(i));
        }
        this.t = 0;
        Handler handler = this.g;
        a aVar = this.z;
        aVar.getClass();
        handler.post(n.a(aVar));
    }

    public final boolean a(long j, boolean z) {
        this.v = j;
        if (k()) {
            this.R = j;
            return true;
        } else if (this.l && !z && d(j)) {
            return false;
        } else {
            this.R = j;
            this.y = false;
            this.e.clear();
            if (this.f3671c.a()) {
                this.f3671c.b();
                return true;
            }
            g();
            return true;
        }
    }

    public final void b() {
        if (!this.m) {
            c(this.v);
        }
    }

    public final void b(long j) {
        this.T = j;
        for (ak akVar : this.i) {
            akVar.a(j);
        }
    }

    public final void c() throws IOException {
        this.f3671c.a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        this.f3670b.a();
    }

    @Override // androidx.media2.exoplayer.external.source.am
    public final boolean c(long j) {
        long j2;
        List<h> list;
        if (this.y || this.f3671c.a()) {
            return false;
        }
        if (k()) {
            list = Collections.emptyList();
            j2 = this.R;
        } else {
            list = this.f;
            h j3 = j();
            j2 = j3.n ? j3.g : Math.max(this.v, j3.f);
        }
        this.f3670b.a(j, j2, list, this.m || !list.isEmpty(), this.E);
        boolean z = this.E.f3651b;
        androidx.media2.exoplayer.external.source.a.b bVar = this.E.f3650a;
        Uri uri = this.E.f3652c;
        this.E.a();
        if (z) {
            this.R = -9223372036854775807L;
            this.y = true;
            return true;
        } else if (bVar != null) {
            if (bVar instanceof h) {
                this.R = -9223372036854775807L;
                h hVar = (h) bVar;
                hVar.m = this;
                this.e.add(hVar);
                this.o = hVar.f3500c;
            }
            this.f3672d.a(bVar.f3498a, bVar.f3499b, this.f3669a, bVar.f3500c, bVar.f3501d, bVar.e, bVar.f, bVar.g, this.f3671c.a(bVar, this, this.D.a(bVar.f3499b)));
            return true;
        } else if (uri == null) {
            return false;
        } else {
            this.z.a(uri);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.source.am
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long d() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.y
            if (r0 == 0) goto L_0x000b
            r0 = -9223372036854775808
            return r0
        L_0x000b:
            r0 = r5
            boolean r0 = r0.k()
            if (r0 == 0) goto L_0x0017
            r0 = r5
            long r0 = r0.R
            return r0
        L_0x0017:
            r0 = r5
            long r0 = r0.v
            r6 = r0
            r0 = r5
            androidx.media2.exoplayer.external.source.hls.h r0 = r0.j()
            r8 = r0
            r0 = r8
            boolean r0 = r0.n
            if (r0 == 0) goto L_0x002b
            goto L_0x004e
        L_0x002b:
            r0 = r5
            java.util.ArrayList<androidx.media2.exoplayer.external.source.hls.h> r0 = r0.e
            int r0 = r0.size()
            r1 = 1
            if (r0 <= r1) goto L_0x004c
            r0 = r5
            java.util.ArrayList<androidx.media2.exoplayer.external.source.hls.h> r0 = r0.e
            r8 = r0
            r0 = r8
            r1 = r8
            int r1 = r1.size()
            r2 = 2
            int r1 = r1 - r2
            java.lang.Object r0 = r0.get(r1)
            androidx.media2.exoplayer.external.source.hls.h r0 = (androidx.media2.exoplayer.external.source.hls.h) r0
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
            long r1 = r1.g
            long r0 = java.lang.Math.max(r0, r1)
            r9 = r0
        L_0x005f:
            r0 = r9
            r6 = r0
            r0 = r5
            boolean r0 = r0.l
            if (r0 == 0) goto L_0x0096
            r0 = r5
            androidx.media2.exoplayer.external.source.ak[] r0 = r0.i
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
            if (r0 >= r1) goto L_0x0096
            r0 = r9
            r1 = r8
            r2 = r12
            r1 = r1[r2]
            androidx.media2.exoplayer.external.source.aj r1 = r1.f3578a
            long r1 = r1.e()
            long r0 = java.lang.Math.max(r0, r1)
            r9 = r0
            int r12 = r12 + 1
            goto L_0x0075
        L_0x0096:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.k.d():long");
    }

    @Override // androidx.media2.exoplayer.external.source.am
    public final long e() {
        if (k()) {
            return this.R;
        }
        if (this.y) {
            return Long.MIN_VALUE;
        }
        return j().g;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.e
    public final void f() {
        g();
        for (j jVar : this.j) {
            jVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        for (ak akVar : this.i) {
            akVar.a(this.w);
        }
        this.w = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        if (!this.q && this.s == null && this.l) {
            boolean z = false;
            for (ak akVar : this.i) {
                if (akVar.f3578a.d() == null) {
                    return;
                }
            }
            TrackGroupArray trackGroupArray = this.r;
            if (trackGroupArray != null) {
                int i = trackGroupArray.length;
                int[] iArr = new int[i];
                this.s = iArr;
                Arrays.fill(iArr, -1);
                for (int i2 = 0; i2 < i; i2++) {
                    int i3 = 0;
                    while (true) {
                        ak[] akVarArr = this.i;
                        if (i3 < akVarArr.length) {
                            Format d2 = akVarArr[i3].f3578a.d();
                            Format format = this.r.get(i2).getFormat(0);
                            String str = d2.sampleMimeType;
                            String str2 = format.sampleMimeType;
                            int g = m.g(str);
                            if (g == 3 ? ac.a((Object) str, (Object) str2) && ((!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) || d2.accessibilityChannel == format.accessibilityChannel) : g == m.g(str2)) {
                                this.s[i2] = i3;
                                break;
                            }
                            i3++;
                        }
                    }
                }
                Iterator<j> it2 = this.h.iterator();
                while (it2.hasNext()) {
                    it2.next().c();
                }
                return;
            }
            int length = this.i.length;
            int i4 = 0;
            int i5 = 6;
            int i6 = -1;
            while (true) {
                int i7 = 2;
                if (i4 >= length) {
                    break;
                }
                String str3 = this.i[i4].f3578a.d().sampleMimeType;
                if (!m.b(str3)) {
                    i7 = m.a(str3) ? 1 : m.c(str3) ? 3 : 6;
                }
                if (b(i7) > b(i5)) {
                    i6 = i4;
                    i5 = i7;
                } else {
                    i5 = i5;
                    i6 = i6;
                    if (i7 == i5) {
                        i5 = i5;
                        i6 = i6;
                        if (i6 != -1) {
                            i6 = -1;
                            i5 = i5;
                        }
                    }
                }
                i4++;
            }
            TrackGroup trackGroup = this.f3670b.f3647b;
            int i8 = trackGroup.length;
            this.t = -1;
            this.s = new int[length];
            for (int i9 = 0; i9 < length; i9++) {
                this.s[i9] = i9;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[length];
            for (int i10 = 0; i10 < length; i10++) {
                Format d3 = this.i[i10].f3578a.d();
                if (i10 == i6) {
                    Format[] formatArr = new Format[i8];
                    if (i8 == 1) {
                        formatArr[0] = d3.copyWithManifestFormatInfo(trackGroup.getFormat(0));
                    } else {
                        for (int i11 = 0; i11 < i8; i11++) {
                            formatArr[i11] = a(trackGroup.getFormat(i11), d3, true);
                        }
                    }
                    trackGroupArr[i10] = new TrackGroup(formatArr);
                    this.t = i10;
                } else {
                    trackGroupArr[i10] = new TrackGroup(a((i5 != 2 || !m.a(d3.sampleMimeType)) ? null : this.B, d3, false));
                }
            }
            this.r = a(trackGroupArr);
            if (this.O == null) {
                z = true;
            }
            androidx.media2.exoplayer.external.util.a.b(z);
            this.O = Collections.emptySet();
            this.m = true;
            this.z.f();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.ak.b
    public final void i() {
        this.g.post(this.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h j() {
        ArrayList<h> arrayList = this.e;
        return arrayList.get(arrayList.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean k() {
        return this.R != -9223372036854775807L;
    }
}
